<?php

namespace App\Http\Controllers\Admin\Resume;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\Keputusan;
use App\Models\Admin\Resume\SusunanCso;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SusunanTimCsoAvalanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $getDataPic = collect(SusunanCso::where('status', '=', 'D')->where('tipecso', '=', 'A')->get());
        // $getDataAnalisator = SusunanCso::where('joBtypeid', '=', '2')->where('status', '=', 'D')->where('tipecso', '=', 'A')->get();
        // $getDataPelaku = SusunanCso::where('joBtypeid', '=', '1')->where('status', '=', 'D')->where('tipecso', '=', 'A')->get();
        $checkCsoActive = DB::table('dbttrsheda')->where('dbttrsheda.statusdoc', '=', 'E')->first();
        $tertukar = DB::select('CALL ReportAvalanTertukar()');
        $selisih = DB::select('CALL ReportAvalanSelisih()');
        $kesalahan_admin = DB::select('CALL ReportAvalanKesalahanAdmin()');
        $keputusan = Keputusan::all();
        return view('admin.resume.susunan-tim-cso-avalan', [
            'analisator' => $getDataPic->where('jobtypeid', '=', '2'),
            'pelaku' => $getDataPic->where('jobtypeid', '=', '1'),
            'tertukar' => $tertukar,
            'selisih' => $selisih,
            'keputusan' => $keputusan,
            'kesalahan_admin' => $kesalahan_admin,
            'checkCsoActive' => $checkCsoActive
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        foreach ($request->jobidPelaku as $idx => $pelaku) {
            if ($request->deptPelaku[$idx]) DB::table('dbtcsoprsn')->where('jobid', '=', $pelaku)->update(['dept' => $request->deptPelaku[$idx]]);
            if ($request->ketPelaku[$idx]) DB::table('dbtcsoprsn')->where('jobid', '=', $pelaku)->update(['note' => $request->ketPelaku[$idx]]);
        }

        if($request->jobidAnalisator) {
            foreach ($request->jobidAnalisator as $idx => $analisator) {
                if ($request->deptAnalisator[$idx]) DB::table('dbtcsoprsn')->where('jobid', '=', $analisator)->update(['dept' => $request->deptAnalisator[$idx]]);
                if ($request->ketAnalisator[$idx]) DB::table('dbtcsoprsn')->where('jobid', '=', $analisator)->update(['note' => $request->ketAnalisator[$idx]]);
            }
        }

        if ($request->trsdetidTertukar) {
            foreach ($request->trsdetidTertukar as $idx => $tertukar) {
                if ($request->keputusanTertukar[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $tertukar)->update(['keputusan' => $request->keputusanTertukar[$idx]]);
                if ($request->hppTertukar[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $tertukar)->update(['cogs_manual' => $request->hppTertukar[$idx]]);
                if ($request->pembebananTertukar[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $tertukar)->update(['pembebanan' => $request->pembebananTertukar[$idx]]);
                if ($request->nodokTertukar[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $tertukar)->update(['nodoc' => $request->nodokTertukar[$idx]]);
                if ($request->keteranganTertukar[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $tertukar)->update(['keterangan' => $request->keteranganTertukar[$idx]]);
            }
        }

        if ($request->trsdetidSelisih) {
            foreach ($request->trsdetidSelisih as $idx => $selisih) {
                if ($request->keputusanSelisih[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $selisih)->update(['keputusan' => $request->keputusanSelisih[$idx]]);
                if ($request->hppSelisih[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $selisih)->update(['cogs_manual' => $request->hppSelisih[$idx]]);
                if ($request->pembebananSelisih[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $selisih)->update(['pembebanan' => $request->pembebananSelisih[$idx]]);
                if ($request->nodokSelisih[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $selisih)->update(['nodoc' => $request->nodokSelisih[$idx]]);
                if ($request->keteranganSelisih[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $selisih)->update(['keterangan' => $request->keteranganSelisih[$idx]]);
            }
        }

        if ($request->trsdetidKesalahanAdmin) {
            foreach ($request->trsdetidKesalahanAdmin as $idx => $kesalahanAdmin) {
                if ($request->keputusanKesalahanAdmin[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $kesalahanAdmin)->update(['keputusan' => $request->keputusanKesalahanAdmin[$idx]]);
                if ($request->hppKesalahanAdmin[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $kesalahanAdmin)->update(['cogs_manual' => $request->hppKesalahanAdmin[$idx]]);
                if ($request->pembebananKesalahanAdmin[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $kesalahanAdmin)->update(['pembebanan' => $request->pembebananKesalahanAdmin[$idx]]);
                if ($request->nodokKesalahanAdmin[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $kesalahanAdmin)->update(['nodoc' => $request->nodokKesalahanAdmin[$idx]]);
                if ($request->keteranganKesalahanAdmin[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $kesalahanAdmin)->update(['keterangan' => $request->keteranganKesalahanAdmin[$idx]]);
            }
        }

        if ($request->draft == 1) return redirect()->route("susunan-tim-cso-avalan.index")->with('status', "Berhasil menyimpan data draft resume CSO Avalan");
        else {
            DB::table('dbttrsheda')
                ->where('statusdoc', '=', 'E')
                ->update(['statusdoc' => 'P']);

            DB::table('dbximporavalan')->truncate();
            DB::table('dbximpordetavalan')->truncate();

            DB::table('dbxsetdate')->where('tipe', '=', 'I')->delete();

            DB::table('dbxmaterial')->truncate();

            DB::table('dbtcsohed')
                ->update(['status' => 'P']);

            DB::table('dbtcsoprsn')
                ->update(['status' => 'P']);

            DB::table('dbxjob')->truncate();
            DB::table('dbxcsotype')->truncate();

            return redirect()->route("avalan.index")->with('status', 'CSO berhasil diakhiri');
        }
        // DB::beginTransaction();
        // if ($request->type == 1) {
        //     $statusUpdate = true;
        //     for ($i = 0; $i < count($request->jobidAnalisator); $i++) {
        //         $jobid = $request->jobidAnalisator[$i];
        //         $dept = $request->deptAnalisator[$i];
        //         $ket = $request->ketAnalisator[$i];
        //         $checkStatusUpdate = DB::table('dbtcsoprsn')
        //             ->where('jobid', '=', $jobid)
        //             ->update(['dept' => $dept, 'note' => $ket]);

        //         if ($checkStatusUpdate == false) {
        //             $statusUpdate = false;
        //             break;
        //         }
        //     }
        //     if ($statusUpdate = true) {
        //         DB::commit();
        //         return redirect()->route("susunan-tim-cso-avalan.index")->with('status', "Berhasil mengubah data analisastor susunan tim CSO");
        //     } else {
        //         DB::rollback();
        //         return redirect()->route("susunan-tim-cso-avalan.index")->with('error', "Gagal mengubah data analisator susunan tim CSO");
        //     }
        // } else {
        //     $statusUpdate = true;
        //     for ($i = 0; $i < count($request->jobidPelaku); $i++) {
        //         $jobid = $request->jobidPelaku[$i];
        //         $dept = $request->deptPelaku[$i];
        //         $ket = $request->ketPelaku[$i];
        //         $checkStatusUpdate = DB::table('dbtcsoprsn')
        //             ->where('jobid', '=', $jobid)
        //             ->update(['dept' => $dept, 'note' => $ket]);

        //         if ($checkStatusUpdate == false) {
        //             $statusUpdate = false;
        //             break;
        //         }
        //     }
        //     if ($statusUpdate = true) {
        //         DB::commit();
        //         return redirect()->route("susunan-tim-cso-avalan.index")->with('status', "Berhasil mengubah data analisastor susunan tim CSO");
        //     } else {
        //         DB::rollback();
        //         return redirect()->route("susunan-tim-cso-avalan.index")->with('error', "Gagal mengubah data analisator susunan tim CSO");
        //     }
        // }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
