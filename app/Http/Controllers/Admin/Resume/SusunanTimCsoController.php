<?php

namespace App\Http\Controllers\Admin\Resume;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\Departemen;
use App\Models\Admin\Master\Keputusan;
use App\Models\Admin\Master\Level;
use App\Models\Admin\Resume\SusunanCso;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SusunanTimCsoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $getDataPic = SusunanCso::where('status', '=', 'D')->where('tipecso', '=', 'R');
        // $getDataPelaku = SusunanCso::where('joBtypeid', '=', '1')->where('status', '=', 'D')->where('tipecso', '=', 'R')->get();
        // $checkCsoActive = DB::table('dbttrshed')->where('dbttrshed.statusdoc', '=', 'E')
        // ->where('dbttrshed.typecekstok',$request->val)->orderByDesc('trsid')->first();

        $checkCsoActive = DB::table('dbttrshed')->where('dbttrshed.statusdoc', '<>', 'P')
        ->where('dbttrshed.typecekstok',$request->val)->orderByDesc('trsid')->first();

        $tertukar = collect(DB::select('CALL ReportTertukar()'))->where('typecekstok',$request->val);
        $selisih = collect(DB::select('CALL ReportSelisih()'))->where('typecekstok',$request->val);
        $kesalahan_admin = collect(DB::select('CALL ReportKesalahanAdmin()'))->where('typecekstok',$request->val);
        $tidak_hitung = collect(DB::select('CALL ReportItemTidakHitung()'))->where('typecekstok',$request->val);
        
        $keputusan = Keputusan::all();
        $departemen = Departemen::all();

        if(!empty($checkCsoActive)){
        $analisator1 =$getDataPic->select('dbttrshed.trsid',
            'userid',
            'name',
            'username','dept','note','jobid','jobtypeid')
            ->join('dbttrshed', 'dbtcsoprsn.trsid', '=', 'dbttrshed.trsid')
            ->where('dbttrshed.trsid',$checkCsoActive->trsid)
            ->where('dbttrshed.typecekstok',$request->val);
        }

        if(!empty($checkCsoActive))
        {
            
            $analisator= DB::table($analisator1)->select('*')->where('jobtypeid', '=', '2')->get();
            // dd($analisator1);
        }
        else $analisator=[];

        if(!empty($checkCsoActive))
        {
            $pelaku= DB::table($analisator1)->select('*')->where('jobtypeid', '=', '1')->get();
        }
        else $pelaku=[];

        return view('admin.resume.susunan-tim-cso', [
            'analisator' => $analisator,
            'pelaku' => $pelaku,
            'tertukar' => $tertukar,
            'selisih' => $selisih,
            'keputusan' => $keputusan,
            'kesalahan_admin' => $kesalahan_admin,
            'tidak_hitung' => $tidak_hitung,
            'checkCsoActive' => $checkCsoActive,
            'departemen' => $departemen,
            'typecekstok'=>$request->val,
            'trsid'=> $checkCsoActive->trsid ?? '' 
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
                if ($request->keputusanTertukar[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tertukar)->update(['keputusan' => $request->keputusanTertukar[$idx]]);
                if ($request->hppTertukar[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tertukar)->update(['cogs_manual' => $request->hppTertukar[$idx]]);
                if ($request->pembebananTertukar[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tertukar)->update(['pembebanan' => $request->pembebananTertukar[$idx]]);
                if ($request->nodokTertukar[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tertukar)->update(['nodoc' => $request->nodokTertukar[$idx]]);
                if ($request->keteranganTertukar[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tertukar)->update(['keterangan' => $request->keteranganTertukar[$idx]]);
            }
        }

        if ($request->trsdetidSelisih) {
            foreach ($request->trsdetidSelisih as $idx => $selisih) {
                if ($request->keputusanSelisih[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $selisih)->update(['keputusan' => $request->keputusanSelisih[$idx]]);
                if ($request->hppSelisih[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $selisih)->update(['cogs_manual' => $request->hppSelisih[$idx]]);
                if ($request->pembebananSelisih[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $selisih)->update(['pembebanan' => $request->pembebananSelisih[$idx]]);
                if ($request->nodokSelisih[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $selisih)->update(['nodoc' => $request->nodokSelisih[$idx]]);
                if ($request->keteranganSelisih[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $selisih)->update(['keterangan' => $request->keteranganSelisih[$idx]]);
            }
        }

        if ($request->trsdetidKesalahanAdmin) {
            foreach ($request->trsdetidKesalahanAdmin as $idx => $kesalahanAdmin) {
                if ($request->keputusanKesalahanAdmin[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $kesalahanAdmin)->update(['keputusan' => $request->keputusanKesalahanAdmin[$idx]]);
                if ($request->hppKesalahanAdmin[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $kesalahanAdmin)->update(['cogs_manual' => $request->hppKesalahanAdmin[$idx]]);
                if ($request->pembebananKesalahanAdmin[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $kesalahanAdmin)->update(['pembebanan' => $request->pembebananKesalahanAdmin[$idx]]);
                if ($request->nodokKesalahanAdmin[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $kesalahanAdmin)->update(['nodoc' => $request->nodokKesalahanAdmin[$idx]]);
                if ($request->keteranganKesalahanAdmin[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $kesalahanAdmin)->update(['keterangan' => $request->keteranganKesalahanAdmin[$idx]]);
            }
        }
        // dd($request->keteranganTidakHitung[0]);
        if ($request->trsdetidTidakHitung) {
            foreach ($request->trsdetidTidakHitung as $idx => $tidakHitung) {
                if ($request->keputusanTidakHitung[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tidakHitung)->update(['keputusan' => $request->keputusanTidakHitung[$idx]]);
                if ($request->hppTidakHitung[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tidakHitung)->update(['cogs_manual' => $request->hppTidakHitung[$idx]]);
                if ($request->pembebananTidakHitung[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tidakHitung)->update(['pembebanan' => $request->pembebananTidakHitung[$idx]]);
                if ($request->nodokTidakHitung[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tidakHitung)->update(['nodoc' => $request->nodokTidakHitung[$idx]]);
                if ($request->keteranganTidakHitung[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tidakHitung)->update(['keterangan' => $request->keteranganTidakHitung[$idx]]);
            }
        }

        if ($request->draft == 1) return redirect()->route("susunan-tim-cso.index",['val'=>$request->typecekstok])
        ->with('status', "Berhasil menyimpan data draft resume ".$request->typecekstok." item");
        else {
            DB::table('dbttrshed')
                ->where('statusdoc', '=', 'E')
                ->where('typecekstok','=',$request->typecekstok)
                ->update(['statusdoc' => 'P']);

            if($request->typecekstok=='CSO')
            {
            DB::table('dbximpor')->truncate();
            DB::table('dbximpordet')->truncate();
            // DB::table('dbximpordetbatch')->truncate();
            }
            else
            {
                DB::table('dbximporcss')->truncate();
                DB::table('dbximpordetcss')->truncate();
                // DB::table('dbximpordetbatchcss')->truncate();
            }
          
            DB::table('dbxsetdate')->where('tipe', '=', 'I')
            ->where('typecekstok','=',$request->typecekstok)->delete();

            DB::table('dbxmaterial')->where('typecekstok','=',$request->typecekstok)->delete();

            DB::table('dbtcsohed')->where('trsid',$request->trsid)
                ->update(['status' => 'P']);

            DB::table('dbtcsoprsn')->where('trsid',$request->trsid)
                ->update(['status' => 'P']);

            DB::table('dbxjob')->where('typecekstok','=',$request->typecekstok)->delete();
            // DB::table('dbxcsotype')->where('typecekstok',$request->typcekstok)->delete();;

            return redirect()->route("item.index",['val'=>$request->typecekstok])->with('status', $request->typcekstok.' berhasil diakhiri');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(SusunanCso $susunanCso)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(SusunanCso $susunanCso)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {
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
        //         return redirect()->route("susunan-tim-cso.index")->with('status', "Berhasil mengubah data analisastor susunan tim CSO");
        //     } else {
        //         DB::rollback();
        //         return redirect()->route("susunan-tim-cso.index")->with('error', "Gagal mengubah data analisator susunan tim CSO");
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
        //         return redirect()->route("susunan-tim-cso.index")->with('status', "Berhasil mengubah data analisastor susunan tim CSO");
        //     } else {
        //         DB::rollback();
        //         return redirect()->route("susunan-tim-cso.index")->with('error', "Gagal mengubah data analisator susunan tim CSO");
        //     }
        // }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(SusunanCso $susunanCso)
    {
        //
    }
}
