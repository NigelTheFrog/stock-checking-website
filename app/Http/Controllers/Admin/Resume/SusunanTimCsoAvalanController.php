<?php

namespace App\Http\Controllers\Admin\Resume;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\Departemen;
use App\Models\Admin\Master\Keputusan;
use App\Models\Admin\Master\Level;
use App\Models\Admin\Resume\SusunanCso;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Admin\Master\Company;
use Illuminate\Support\Facades\Log;

class SusunanTimCsoAvalanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $getDataPic = SusunanCso::where('status', '=', 'D')->where('tipecso', '=', 'A');
        // $getDataAnalisator = SusunanCso::where('joBtypeid', '=', '2')->where('status', '=', 'D')->where('tipecso', '=', 'A')->get();
        // $getDataPelaku = SusunanCso::where('joBtypeid', '=', '1')->where('status', '=', 'D')->where('tipecso', '=', 'A')->get();
        $checkCsoActive = DB::table('dbttrsheda')->where('dbttrsheda.statusdoc', '=', 'E')->first();

        $dataCoy = Company::select('usewrhgrp')->first();
        $checkCsoActive = DB::table('dbttrsheda')->where('dbttrsheda.statusdoc', '<>', 'P')
        ->where('dbttrsheda.typecekstok',$request->val)->orderByDesc('trsid')->first();


        $tertukar = collect(DB::select('CALL ReportAvalanTertukar()'))->where('typecekstok',$request->val);
        $selisih = collect(DB::select('CALL ReportAvalanSelisih()'))->where('typecekstok',$request->val);
        $kesalahan_admin = collect(DB::select('CALL ReportAvalanKesalahanAdmin()'))->where('typecekstok',$request->val);
        $tidak_hitung = collect(DB::select('CALL ReportItemTidakHitung()'))->where('typecekstok',$request->val);

        // buat kedepan menggunakan gudang tertukar
        // if($checkCsoActive && $dataCoy->usewrhgrp == 1) $gudang_tertukar = collect(DB::select('CALL GudangTertukar(?)',[$checkCsoActive->trsid])); 

        $keputusan = Keputusan::all();

        $departemen = Departemen::all();

        if(!empty($checkCsoActive)){
            $analisator1 =$getDataPic->select('dbttrsheda.trsid',
                'userid',
                'name',
                'username','dept','note','jobid','jobtypeid')
                ->join('dbttrsheda', 'dbtcsoprsn.trsid', '=', 'dbttrsheda.trsid')
                ->where('dbttrsheda.trsid',$checkCsoActive->trsid)
                ->where('dbttrsheda.typecekstok',$request->val)
                ->where('dbtcsoprsn.tipecso','A');
        }
    
        if(!empty($checkCsoActive))
        {
            $analisator= DB::table($analisator1)->select('*')->where('jobtypeid', '=', '2')->get();
        }
        else $analisator=[];
    
        if(!empty($checkCsoActive))
        {
            $pelaku= DB::table($analisator1)->select('*')->where('jobtypeid', '=', '1')->get();
        }
        else $pelaku=[];

        return view('admin.resume.susunan-tim-cso-avalan', [
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
            'trsid'=> $checkCsoActive->trsid ?? '',
            // 'gudang_tertukar' => ($checkCsoActive && $dataCoy->usewrhgrp == 1) ? $gudang_tertukar : []
            'gudang_tertukar' => []
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

        if ($request->trsdetidGudangTertukar) {
            foreach ($request->trsdetidGudangTertukar as $idx => $GudangTertukar) {
                if ($request->keputusanGudangTertukar[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $GudangTertukar)->update(['keputusan' => $request->keputusanGudangTertukar[$idx]]);
                if ($request->hppGudangTertukar[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $GudangTertukar)->update(['cogs_manual' => $request->hppGudangTertukar[$idx]]);
                if ($request->pembebananGudangTertukar[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $GudangTertukar)->update(['pembebanan' => $request->pembebananGudangTertukar[$idx]]);
                if ($request->nodokGudangTertukar[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $GudangTertukar)->update(['nodoc' => $request->nodokGudangTertukar[$idx]]);
                if ($request->keteranganGudangTertukar[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $GudangTertukar)->update(['keterangan' => $request->keteranganGudangTertukar[$idx]]);
            }
        }
        // dd($request->keteranganSelisih[1]);
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
        
        if ($request->draft == 1) return redirect()->route("susunan-tim-cso-avalan.index",['val'=>$request->typecekstok])
        ->with('status', "Berhasil menyimpan data draft resume ".$request->typecekstok." batch");
        else {
            
            $test=DB::table('dbttrsheda')
                ->where('statusdoc', '=', 'E')
                ->where('typecekstok','=',$request->typecekstok)
                ->update(['statusdoc' => 'P']);
        
            if($request->typecekstok=='CSO')
            {
                DB::table('dbximporavalan')->truncate();
                DB::table('dbximpordetavalan')->truncate();
                // DB::table('dbximpordetbatch')->truncate();
            }
            else
            {
                DB::table('dbximporavalancss')->truncate();
                DB::table('dbximpordetavalancss')->truncate();
                // DB::table('dbximpordetbatchcss')->truncate();
            }
          
            DB::table('dbxsetdate')->where('tipe', '=', 'I')->where('statuscekstok','A')
            ->where('typecekstok','=',$request->typecekstok)->delete();

            DB::table('dbxmaterial')->where('typecekstok','=',$request->typecekstok)->where('statuscekstok','A')->delete();

            DB::table('dbtcsohed')->where('trsid',$request->trsid)->where('tipecso','A')
                ->update(['status' => 'P']);

            DB::table('dbtcsoprsn')->where('trsid',$request->trsid)->where('tipecso','A')
                ->update(['status' => 'P']);

            DB::table('dbxjob')->where('typecekstok','=',$request->typecekstok)->where('statuscekstok','A')->delete();
            // DB::table('dbxcsotype')->where('typecekstok',$request->typcekstok)->delete();;

            return redirect()->route("avalan.index",['val'=>$request->typecekstok])->with('status', $request->typcekstok.'batch berhasil diakhiri');
        }
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
