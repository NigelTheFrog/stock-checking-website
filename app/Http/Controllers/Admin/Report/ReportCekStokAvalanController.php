<?php

namespace App\Http\Controllers\Admin\Report;

use Maatwebsite\Excel\Facades\Excel;
use App\Http\Controllers\Controller;
use App\Models\Admin\Master\Company;
use App\Models\Admin\Resume\SusunanCso;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;
use Barryvdh\DomPDF\PDF;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use App\Exports\ExportExcel;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Log;

class ReportCekStokAvalanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $getDbtTrsHed = DB::table('dbttrsheda')->where('typecekstok',$request->val)->whereNot('statusdoc', '=', 'A')->orderByDesc('createddate')->get();
        $coycode = Company::select('coycode')->first();
        $dataApproval = User::select('id', 'name')
            ->where('level', '6')
            ->orWhere('level', '7')
            ->orWhere('level', '8')
            ->orWhere('level', '9')
            ->orWhere('level', '10')
            ->orWhere('level', '11')
            ->orWhere('level', '12')
            ->get();
        return view('admin.report.cek-stok-avalan', 
        ['listNodoc' => $getDbtTrsHed, 
        "dataApproval" => $dataApproval,
        'dataCoy'=>$coycode,
        'typecekstok'=>$request->val]);
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
        Carbon::setLocale('id');
        $dbCoy = DB::table('dbmcoy')->get();
        if ($request->type == 1) {
            $dataDbtTrsHed = DB::table('dbttrsheda')->where('trsid', '=', $request->trsidresume)->first();
            $dataPicCSO = collect(DB::table('dbtcsoprsn')
                ->where('trsid', '=', $request->trsidresume)
                ->where('tipecso', '=', 'A')
                ->join('dbmdept', 'dbtcsoprsn.dept', '=', 'dbmdept.deptid')
                ->get());

            if (substr($dataDbtTrsHed->doccsoid, 0, 3) == 'CSS') $dataRekapitulasi = DB::select('CALL RekapitulasiHasilCssAvalan(?)', [$request->trsidresume]);
            else $dataRekapitulasi = DB::select('CALL RekapitulasiHasilCsoAvalan(?)', [$request->trsidresume]);

            // $gudang_tertukar = collect(DB::select('CALL GudangTertukar(?)',[$request->trsidresume]));


            $dataItemKesalahanAdmin = DB::table('dbttrsdeta')
                ->leftJoin('dbtcsodet', 'dbtcsodet.trsdetid', '=', 'dbttrsdeta.trsdetid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->leftJoin('dbmkeputusan', 'dbttrsdeta.keputusan', '=', 'dbmkeputusan.keputusanid')
                ->select(
                    'dbttrsdeta.trsdetid',
                    'dbttrsdeta.itemname',
                    'dbttrsdeta.batchno',
                    'dbttrsdeta.keputusan',
                    'dbmkeputusan.keputusandesc',
                    'dbttrsdeta.onhand',
                    'dbttrsdeta.nodoc',
                    'dbttrsdeta.tidak_hitung',
                    DB::raw('dbttrsdeta.cogs as hpp'),
                    DB::raw('coalesce(dbttrsdeta.cogs_manual,0) as hpp_manual'),
                    'dbttrsdeta.keterangan',
                    DB::raw('coalesce(dbttrsdeta.pembebanan,0) as pembebanan'),
                    DB::raw('sum(coalesce(dbtcsodet2.qty,0)) as hasilcso'),
                    DB::raw('coalesce(dbttrsdeta.koreksi,0) as koreksi'),
                    DB::raw('coalesce(dbttrsdeta.deviasi,0) as deviasi'),
                    DB::raw('coalesce(dbttrsdeta.onhand-sum(coalesce(dbtcsodet2.qty,0))+ coalesce(dbttrsdeta.deviasi,0) +coalesce(dbttrsdeta.koreksi,0),0) as orders' )
                )
                ->where('dbttrsdeta.trsid', '=', $request->trsidresume)
                ->whereRaw('coalesce(dbttrsdeta.kesalahan_admin,0) = 1 AND COALESCE(dbttrsdeta.tidak_hitung,0)=0')
                ->where('dbtcsodet.statussubmit', '=', 'P')
                ->where('dbtcsodet2.csocount', '=', function ($query) {
                    $query->from('dbtcsodet')
                        ->join('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                        ->whereRaw("(dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')")
                        ->whereColumn('dbtcsodet.trsdetid', 'dbttrsdeta.trsdetid')
                        ->where('dbtcsodet.statussubmit', '=', 'P')
                        ->selectRaw('max(dbtcsodet2.csocount)');
                })
                ->whereRaw("(dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')")
                ->groupBy('dbttrsdeta.trsdetid')
                ->havingRaw("dbttrsdeta.onhand <> (SUM(COALESCE(dbtcsodet2.qty, 0)) + koreksi + deviasi)")
                ->orderBy('dbttrsdeta.itemname','asc')
                ->orderBy('orders','desc')
                ->get();

            $total_cso= DB::table('dbtcsodet')
                ->join('dbtcsodet2','dbtcsodet.csodetid','=','dbtcsodet2.csodetid')
                ->join('dbtcsohed','dbtcsohed.csoid','=','dbtcsodet.csoid')
                ->whereRaw("(dbtcsohed.status = 'P' AND dbtcsohed.trsid = ".$request->trsidresume." 
                AND dbtcsodet.statussubmit = 'P' AND dbtcsohed.tipecso = 'A')")     
                ->select('dbtcsodet.trsdetid',
                        DB::raw('sum(ifnull(dbtcsodet2.qty, 0)) AS qtytot'),
                        DB::raw('1 as isstarted'),
                        'dbtcsodet2.csocount')
                ->groupBy('dbtcsodet.trsdetid','dbtcsodet2.csocount');

            $dataItemSelisihTertukar = DB::table('dbttrsdeta')
                ->join('dbttrsheda','dbttrsheda.trsid','=','dbttrsdeta.trsid')
                ->leftJoinSub($total_cso,'total_cso',function($join){
                    $join->on('total_cso.trsdetid','=','dbttrsdeta.trsdetid')
                    ->on('total_cso.csocount','=','dbttrsdeta.statuscso');
                })
                ->leftJoin('dbmkeputusan', 'dbttrsdeta.keputusan', '=', 'dbmkeputusan.keputusanid')
                ->select(
                    'dbttrsdeta.trsdetid',
                    'dbttrsdeta.itemname',
                    'dbttrsdeta.batchno',
                    'dbttrsdeta.keputusan',
                    'dbmkeputusan.keputusandesc',
                    'dbttrsdeta.onhand',
                    'dbttrsdeta.nodoc',
                    'dbttrsdeta.tidak_hitung',
                    DB::raw('coalesce(dbttrsdeta.group_value,0) as group_value'),
                    DB::raw('dbttrsdeta.cogs as hpp'),
                    DB::raw('coalesce(dbttrsdeta.cogs_manual,0) as hpp_manual'),
                    'dbttrsdeta.keterangan',
                    DB::raw('coalesce(dbttrsdeta.pembebanan,0) as pembebanan'),
                    DB::raw('sum(coalesce(total_cso.qtytot,0)) as hasilcso'),
                    DB::raw('coalesce(dbttrsdeta.koreksi,0) as koreksi'),
                    DB::raw('coalesce(dbttrsdeta.deviasi,0) as deviasi'),
                    DB::raw('case 
                    when coalesce(dbttrsdeta.group_value,0) = 0 then coalesce(sum(coalesce(total_cso.qtytot,0))-dbttrsdeta.onhand+coalesce(dbttrsdeta.deviasi,0)+coalesce(dbttrsdeta.koreksi,0),0)
                    else coalesce(dbttrsdeta.group_value,0) end as orders' )
                )
                ->where('dbttrsdeta.trsid', '=', $request->trsidresume)
                ->whereRaw('(coalesce(dbttrsdeta.groupid,0) <> 0)')
                ->whereRaw('coalesce(dbttrsdeta.kesalahan_admin,0) = 0 AND COALESCE(dbttrsdeta.tidak_hitung,0)=0')
                ->groupBy('dbttrsdeta.trsdetid')
                ->havingRaw("dbttrsdeta.onhand <> (SUM(COALESCE(total_cso.qtytot, 0)) + koreksi + deviasi)")
                ->orderBy('dbttrsdeta.groupid','asc')
                ->orderBy('orders','asc')
                ->get();

            $dataItemSelisih1=DB::table('dbttrsdeta')
                ->join('dbttrsheda','dbttrsheda.trsid','=','dbttrsdeta.trsid')
                ->leftJoinSub($total_cso,'total_cso',function($join){
                    $join->on('total_cso.trsdetid','=','dbttrsdeta.trsdetid')
                    ->on('total_cso.csocount','=','dbttrsdeta.statuscso');
                })
                ->leftJoin('dbmkeputusan', 'dbttrsdeta.keputusan', '=', 'dbmkeputusan.keputusanid')
                ->select('dbttrsdeta.trsdetid',
                'dbttrsdeta.itemname' ,
                'dbttrsdeta.onhand',
                'dbttrsdeta.keterangan',
                'dbttrsdeta.keputusan',
                'dbmkeputusan.keputusandesc',
                'dbttrsdeta.tidak_hitung',
                DB::raw('coalesce(dbttrsdeta.group_value,0) as group_value'),
                DB::raw('dbttrsdeta.cogs as hpp'),
                DB::raw('coalesce(dbttrsdeta.cogs_manual,0) as hpp_manual'),
                DB::raw('coalesce(total_cso.qtytot,0) as hasilcso'),
                DB::raw('coalesce(dbttrsdeta.pembebanan,0) as pembebanan'),
                'dbttrsdeta.koreksi',
                'dbttrsdeta.deviasi',
                'dbttrsdeta.kesalahan_admin',
                'dbttrsdeta.batch_tertukar',
                'dbttrsdeta.groupid',    
                'dbttrsdeta.nodoc',
                DB::raw('coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdeta.koreksi,0)+COALESCE(dbttrsdeta.deviasi,0)-dbttrsdeta.onhand,0) as orders' ))
                ->whereRaw("(dbttrsdeta.trsid = ".$request->trsidresume."
                AND dbttrsheda.statusdoc = 'P')")
                ->whereRaw("coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdeta.koreksi,0)+COALESCE(dbttrsdeta.deviasi,0),0) <> dbttrsdeta.onhand");

            $dataItemSelisih=DB::table($dataItemSelisih1)->select('*')
                ->whereRaw("(coalesce(kesalahan_admin,0)=0 
                AND COALESCE(batch_tertukar,0)=0
                AND COALESCE(groupid,0)=0
                AND COALESCE(tidak_hitung,0)=0) OR COALESCE(group_value,0)<>0")
                ->orderBy('itemname','asc')
                ->orderBy('orders','asc')
                ->get();

            $dataItemTidakHitung1=DB::table('dbttrsdeta')
                ->join('dbttrsheda','dbttrsheda.trsid','=','dbttrsdeta.trsid')
                ->leftJoinSub($total_cso,'total_cso',function($join){
                    $join->on('total_cso.trsdetid','=','dbttrsdeta.trsdetid')
                    ->on('total_cso.csocount','=','dbttrsdeta.statuscso');
                })
                ->leftJoin('dbmkeputusan', 'dbttrsdeta.keputusan', '=', 'dbmkeputusan.keputusanid')
                ->select('dbttrsdeta.trsdetid',
                'dbttrsdeta.itemname' ,
                'dbttrsdeta.onhand',
                'dbttrsdeta.keterangan',
                'dbttrsdeta.keputusan',
                'dbmkeputusan.keputusandesc',
                'dbttrsdeta.tidak_hitung',
                DB::raw('dbttrsdeta.cogs as hpp'),
                DB::raw('coalesce(dbttrsdeta.cogs_manual,0) as hpp_manual'),
                DB::raw('coalesce(total_cso.qtytot,0) as hasilcso'),
                DB::raw('coalesce(dbttrsdeta.pembebanan,0) as pembebanan'),
                'dbttrsdeta.koreksi',
                'dbttrsdeta.deviasi',
                'dbttrsdeta.kesalahan_admin',
                'dbttrsdeta.batch_tertukar',
                'dbttrsdeta.groupid',    
                'dbttrsdeta.nodoc',
                DB::raw('coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdeta.koreksi,0)+COALESCE(dbttrsdeta.deviasi,0)-dbttrsdeta.onhand,0) as orders' ))
                ->whereRaw("(dbttrsdeta.trsid = ".$request->trsidresume."
                AND dbttrsheda.statusdoc = 'P')");

            $dataItemTidakHitung=DB::table($dataItemTidakHitung1)->select('*')
                ->whereRaw("COALESCE(tidak_hitung,0)=1")
                ->get();

            $endOfCurrentDate = Carbon::parse($dataDbtTrsHed->startcsodate)
                ->copy()
                ->endOfMonth()
                ->toDateString();
            
            $startDatePrevious3Month = Carbon::parse($dataDbtTrsHed->startcsodate)
                ->copy()
                ->subMonths(2)
                ->startOfMonth()
                ->toDateString();

            $total_cso1= DB::table('dbtcsodet')
                ->join('dbtcsodet2','dbtcsodet.csodetid','=','dbtcsodet2.csodetid')
                ->join('dbtcsohed','dbtcsohed.csoid','=','dbtcsodet.csoid')
                ->whereRaw("(dbtcsohed.status = 'P' AND dbtcsodet.statussubmit = 'P' AND dbtcsohed.tipecso = 'A')")     
                ->select('dbtcsodet.trsdetid',
                        DB::raw('sum(ifnull(dbtcsodet2.qty, 0)) AS qtytot'),
                        DB::raw('1 as isstarted'),
                        'dbtcsodet2.csocount')
                ->groupBy('dbtcsodet.trsdetid','dbtcsodet2.csocount');


            $item_ok1=DB::table('dbttrsdeta')
                ->join('dbttrsheda','dbttrsheda.trsid','=','dbttrsdeta.trsid')
                ->leftJoinSub($total_cso1,'total_cso',function($join){
                    $join->on('total_cso.trsdetid','=','dbttrsdeta.trsdetid')
                    ->on('total_cso.csocount','=','dbttrsdeta.statuscso');
                })
                ->select('dbttrsdeta.trsdetid',
                'dbttrsheda.trsid',
                'dbttrsdeta.itemname' ,
                'dbttrsdeta.kesalahan_admin',
                'dbttrsdeta.batch_tertukar',
                'dbttrsdeta.groupid',    
                'dbttrsdeta.nodoc',
                'dbttrsheda.startcsodate',
                'dbttrsheda.csomaterial',
                'dbttrsheda.doccsoid',
                'dbttrsdeta.tidak_hitung',
                DB::raw('coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdeta.koreksi,0)+COALESCE(dbttrsdeta.deviasi,0)-dbttrsdeta.onhand,0) as orders' ))
                ->whereRaw("dbttrsheda.statusdoc = 'P'")
                ->where(DB::raw('SUBSTRING(dbttrsheda.doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('dbttrsheda.startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])
                ->whereRaw("
                coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdeta.koreksi,0)+COALESCE(dbttrsdeta.deviasi,0),0) = dbttrsdeta.onhand 
                OR dbttrsdeta.kesalahan_admin=1");
            
            $item_ok=DB::table($item_ok1)->select( 'trsid',
                DB::raw('COUNT(DISTINCT trsdetid) AS count'),
                'trsdetid',
                DB::raw('DATE_FORMAT(startcsodate, "%m") AS monthstart'),
                'csomaterial')
                ->whereRaw("COALESCE(batch_tertukar,0)=0
                AND COALESCE(groupid,0)=0 AND coalesce(tidak_hitung,0)=0")
                ->where(DB::raw('SUBSTRING(doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])->groupBy('trsid');

            $item_tidak_hitung = DB::table('dbttrsheda')
                ->join('dbttrsdeta', 'dbttrsheda.trsid', '=', 'dbttrsdeta.trsid')
                ->leftJoin('dbtcsodet', 'dbtcsodet.trsdetid', '=', 'dbttrsdeta.trsdetid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->select(
                    'dbttrsheda.trsid',
                    DB::raw('COUNT(DISTINCT dbttrsdeta.trsdetid) AS count'),
                    'dbttrsdeta.trsdetid',
                    DB::raw('DATE_FORMAT(dbttrsheda.startcsodate, "%m") AS monthstart'),
                    'dbttrsheda.csomaterial'
                )
                ->where('dbttrsheda.statusdoc', 'P')
                ->whereRaw("coalesce(dbttrsdeta.tidak_hitung,0)=1")
                ->where(DB::raw('SUBSTRING(dbttrsheda.doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('dbttrsheda.startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])
                ->groupBy('dbttrsheda.trsid')
                ->orderBy('dbttrsdeta.trsdetid');

            $item_ada = DB::table('dbttrsheda')
                ->join('dbttrsdeta', 'dbttrsheda.trsid', '=', 'dbttrsdeta.trsid')
                ->leftJoin('dbtcsodet', 'dbtcsodet.trsdetid', '=', 'dbttrsdeta.trsdetid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->select(
                    'dbttrsheda.trsid',
                    DB::raw('COUNT(DISTINCT dbttrsdeta.trsdetid) AS count'),
                    'dbttrsdeta.trsdetid',
                    DB::raw('DATE_FORMAT(dbttrsheda.startcsodate, "%m") AS monthstart'),
                    'dbttrsheda.csomaterial'
                )
                ->where('dbttrsheda.statusdoc', 'P')
                ->where(DB::raw('SUBSTRING(dbttrsheda.doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('dbttrsheda.startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])
                ->groupBy('dbttrsheda.trsid')
                ->orderBy('dbttrsdeta.trsdetid');


            if(count($item_tidak_hitung->get())>0)
            {
                $data3BulanTerakhir1 = DB::query()
                    ->fromSub($item_ok, 'item_ok')
                    ->JoinSub($item_ada, 'item_ada', function ($join) {
                        $join->on('item_ada.trsid', '=', 'item_ok.trsid');
                    })
                    ->select('item_ada.monthstart','item_ok.trsid','item_ada.csomaterial', 'item_ok.count as item_ok', 'item_ada.count as item_ada');
                    $data3BulanTerakhir=DB::query()->fromSub($data3BulanTerakhir1,'hitung')
                    ->leftJoinSub($item_tidak_hitung, 'item_tidak_hitung', function ($join) {
                        $join->on('hitung.trsid', '=', 'item_tidak_hitung.trsid');
                    })
                    ->select('hitung.monthstart','hitung.trsid','hitung.csomaterial', DB::raw('(coalesce(hitung.item_ok,0) + coalesce(item_tidak_hitung.count,0)) as item_ok'), 'hitung.item_ada as item_ada')
                    ->get();
            }
            else
            {
                $data3BulanTerakhir = DB::query()
                    ->fromSub($item_ada, 'item_ada')
                    ->JoinSub($item_ok, 'item_ok', function ($join) {
                        $join->on('item_ok.trsid', '=', 'item_ada.trsid');})
                    ->select('item_ok.monthstart', 'item_ok.csomaterial', 'item_ok.count as item_ok', 'item_ada.count as item_ada')
                    ->get();
            }
            
            if ($request->pdf == 1) {
                if ($request->orientation == 1) $page = "admin.report.stok-avalan.pdf-resume-potrait";
                else $page = "admin.report.stok-avalan.pdf-resume";
            } else {
                if ($request->approval == 1) $page = "admin.approval.preview-avalan.preview-resume";
                else
                    {
                        if($request->revisiHpp == 1) $page = 'admin.report.preview-avalan.adjust-preview-resume';
                        else $page = "admin.report.preview-avalan.preview-resume";
                    } 
            }
            
            $view = view($page, [
                "title" => $request->approval == 1 ? "Approval Cek Stok" : ($request->revisiHpp == 1 ? "Adjust Hpp" : "Preview Resume"),
                "trsidresume" => $request->trsidresume,
                "data3BulanTerakhir" => $data3BulanTerakhir,
                "dataItemTertukar" => $dataItemSelisihTertukar,
                "dataItemKesalahanAdmin" => $dataItemKesalahanAdmin,
                "dataItemSelisih" => $dataItemSelisih,
                "dataItemTidakHitung" => $dataItemTidakHitung,
                "dataCso" => $dataDbtTrsHed,
                "dataAnalisator" => $dataPicCSO->where('jobtypeid', '=', '2'),
                "dataPelaku" => $dataPicCSO->where('jobtypeid', '=', '1'),
                "dataRekapitulasi" => $dataRekapitulasi,
                'faktorAdmingOk' => 0,
                'faktorAdminSelisih' => 0,
                'itemAda' => 0,
                "dataCoy" => $dbCoy[0]->description,
                "useWrhGrp" => $dbCoy[0]->usewrhgrp,
                "typecekstok"=> $request->typecekstok ?? $request->typecekstok,
                // "gudangTertukar" => $gudang_tertukar 
                "gudangTertukar" => []
            ]);
        } else {
            ini_set('memory_limit', '2048M');
            set_time_limit(0);

            $dataDbtTrsHed = DB::table('dbttrsheda')->where('trsid', '=', $request->trsidlaporan)->first();
            
            $dataLaporan = DB::select('CALL GetDataLaporanAvalan(?)', [$request->trsidlaporan]);
            
            $dataWrh = DB::table('dbttrsdeta')
                ->join('dbttrsdet2a', 'dbttrsdeta.trsdetid', '=', 'dbttrsdet2a.trsdetid')
                ->where('dbttrsdeta.trsid', '=', $request->trsidlaporan)
                ->select('dbttrsdet2a.wrh')
                ->groupBy('dbttrsdet2a.wrh')
                ->get();

            $dataWrhQty = DB::table('dbttrsdeta')
                ->join('dbttrsdet2a', 'dbttrsdeta.trsdetid', '=', 'dbttrsdet2a.trsdetid')
                ->where('dbttrsdeta.trsid', '=', $request->trsidlaporan)
                ->select('dbttrsdet2a.wrh', 'dbttrsdet2a.trsdetid', 'dbttrsdet2a.qty')
                ->get();

            if ($request->pdf == 1) $page = "admin.report.stok-avalan.pdf-laporan-cso";
            else $page = "admin.report.preview-avalan.preview-laporan-cso";

            $view = view($page, [
                "title" => "Preview Laporan",
                "trsidlaporan" => $request->trsidlaporan,
                "dataCso" => $dataDbtTrsHed,
                "dataWrh" => $dataWrh,
                "dataWrhQty" => $dataWrhQty,
                "dataLaporan" => $dataLaporan,
                "dataCoy" => $dbCoy[0],
            ]);
        }
        return $view;
        // sudah benar tinggal ganti view routernya
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
    public function update(Request $request) {

        if ($request->trsdetidKesalahanAdmin) {
            foreach ($request->trsdetidKesalahanAdmin as $idx => $kesalahanAdmin) {
                if ($request->hppKesalahanAdmin[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $kesalahanAdmin)->update(['cogs_manual' => $request->hppKesalahanAdmin[$idx]]);
                // if ($request->keteranganKesalahanAdmin[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $kesalahanAdmin)->update(['keterangan' => $request->keteranganKesalahanAdmin[$idx]]);
            }
        }

        if ($request->trsdetidTertukar) {
            foreach ($request->trsdetidTertukar as $idx => $tertukar) {
                if ($request->hppTertukar[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $tertukar)->update(['cogs_manual' => $request->hppTertukar[$idx]]);
                // if ($request->keteranganTertukar[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tertukar)->update(['keterangan' => $request->keteranganTertukar[$idx]]);
            }
        }

        if ($request->trsdetidSelisih) {
            foreach ($request->trsdetidSelisih as $idx => $selisih) {
                
                if ($request->hppSelisih[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $selisih)->update(['cogs_manual' => $request->hppSelisih[$idx]]);
                // if ($request->keteranganSelisih[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $selisih)->update(['keterangan' => $request->keteranganSelisih[$idx]]);
            }
        }

        if ($request->trsdetidTidakHitung) {
            foreach ($request->trsdetidTidakHitung as $idx => $tidakHitung) {

                if ($request->hppTidakHitung[$idx]) DB::table('dbttrsdeta')->where('trsdetid', '=', $tidakHitung)->update(['cogs_manual' => $request->hppTidakHitung[$idx]]);
                // if ($request->keteranganTidakHitung[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tidakHitung)->update(['keterangan' => $request->keteranganTidakHitung[$idx]]);
            }
        }

        return redirect()->route("cek-stok-avalan.index",['val' => $request->typecekstok])
        ->with('status', "Berhasil update data resume");
    }

    public function exportExcel(Request $request)
    {
        // dd($request->trsidresume);
        Carbon::setLocale('id');
        $dataExport = array();
        $dbCoy = DB::table('dbmcoy')->get();
        if ($request->type == 1 || $request->type == 2) {
            $dataDbtTrsHed = DB::table('dbttrsheda')->where('trsid', '=', $request->trsidresume)->first();
            $dataPicCSO = collect(DB::table('dbtcsoprsn')
                ->where('trsid', '=', $request->trsidresume)
                ->where('tipecso', '=', 'A')
                ->join('dbmdept', 'dbtcsoprsn.dept', '=', 'dbmdept.deptid')
                ->get());

            if (substr($dataDbtTrsHed->doccsoid, 0, 3) == 'CSS') $dataRekapitulasi = DB::select('CALL RekapitulasiHasilCssAvalan(?)', [$request->trsidresume]);
            else $dataRekapitulasi = DB::select('CALL RekapitulasiHasilCsoAvalan(?)', [$request->trsidresume]);

            // $gudang_tertukar = collect(DB::select('CALL GudangTertukar(?)',[$request->trsidresume]));


            $dataItemKesalahanAdmin = DB::table('dbttrsdeta')
                ->leftJoin('dbtcsodet', 'dbtcsodet.trsdetid', '=', 'dbttrsdeta.trsdetid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->leftJoin('dbmkeputusan', 'dbttrsdeta.keputusan', '=', 'dbmkeputusan.keputusanid')
                ->select(
                    'dbttrsdeta.trsdetid',
                    'dbttrsdeta.itemname',
                    'dbttrsdeta.batchno',
                    'dbttrsdeta.keputusan',
                    'dbmkeputusan.keputusandesc',
                    'dbttrsdeta.onhand',
                    'dbttrsdeta.nodoc',
                    'dbttrsdeta.tidak_hitung',
                    DB::raw('dbttrsdeta.cogs as hpp'),
                    DB::raw('coalesce(dbttrsdeta.cogs_manual,0) as hpp_manual'),
                    'dbttrsdeta.keterangan',
                    DB::raw('coalesce(dbttrsdeta.pembebanan,0) as pembebanan'),
                    DB::raw('sum(coalesce(dbtcsodet2.qty,0)) as hasilcso'),
                    DB::raw('coalesce(dbttrsdeta.koreksi,0) as koreksi'),
                    DB::raw('coalesce(dbttrsdeta.deviasi,0) as deviasi'),
                    DB::raw('coalesce(dbttrsdeta.onhand-sum(coalesce(dbtcsodet2.qty,0))+ coalesce(dbttrsdeta.deviasi,0) +coalesce(dbttrsdeta.koreksi,0),0) as orders' )
                )
                ->where('dbttrsdeta.trsid', '=', $request->trsidresume)
                ->whereRaw('coalesce(dbttrsdeta.kesalahan_admin,0) = 1 AND COALESCE(dbttrsdeta.tidak_hitung,0)=0')
                ->where('dbtcsodet.statussubmit', '=', 'P')
                ->where('dbtcsodet2.csocount', '=', function ($query) {
                    $query->from('dbtcsodet')
                        ->join('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                        ->whereRaw("(dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')")
                        ->whereColumn('dbtcsodet.trsdetid', 'dbttrsdeta.trsdetid')
                        ->where('dbtcsodet.statussubmit', '=', 'P')
                        ->selectRaw('max(dbtcsodet2.csocount)');
                })
                ->whereRaw("(dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')")
                ->groupBy('dbttrsdeta.trsdetid')
                ->havingRaw("dbttrsdeta.onhand <> (SUM(COALESCE(dbtcsodet2.qty, 0)) + koreksi + deviasi)")
                ->orderBy('dbttrsdeta.itemname','asc')
                ->orderBy('orders','desc')
                ->get();

            $total_cso= DB::table('dbtcsodet')
                ->join('dbtcsodet2','dbtcsodet.csodetid','=','dbtcsodet2.csodetid')
                ->join('dbtcsohed','dbtcsohed.csoid','=','dbtcsodet.csoid')
                ->whereRaw("(dbtcsohed.status = 'P' AND dbtcsohed.trsid = ".$request->trsidresume." 
                AND dbtcsodet.statussubmit = 'P' AND dbtcsohed.tipecso = 'A')")     
                ->select('dbtcsodet.trsdetid',
                        DB::raw('sum(ifnull(dbtcsodet2.qty, 0)) AS qtytot'),
                        DB::raw('1 as isstarted'),
                        'dbtcsodet2.csocount')
                ->groupBy('dbtcsodet.trsdetid','dbtcsodet2.csocount');

            $dataItemSelisihTertukar = DB::table('dbttrsdeta')
                ->join('dbttrsheda','dbttrsheda.trsid','=','dbttrsdeta.trsid')
                ->leftJoinSub($total_cso,'total_cso',function($join){
                    $join->on('total_cso.trsdetid','=','dbttrsdeta.trsdetid')
                    ->on('total_cso.csocount','=','dbttrsdeta.statuscso');
                })
                ->leftJoin('dbmkeputusan', 'dbttrsdeta.keputusan', '=', 'dbmkeputusan.keputusanid')
                ->select(
                    'dbttrsdeta.trsdetid',
                    'dbttrsdeta.itemname',
                    'dbttrsdeta.batchno',
                    'dbttrsdeta.keputusan',
                    'dbmkeputusan.keputusandesc',
                    'dbttrsdeta.onhand',
                    'dbttrsdeta.nodoc',
                    'dbttrsdeta.tidak_hitung',
                    DB::raw('coalesce(dbttrsdeta.group_value,0) as group_value'),
                    DB::raw('dbttrsdeta.cogs as hpp'),
                    DB::raw('coalesce(dbttrsdeta.cogs_manual,0) as hpp_manual'),
                    'dbttrsdeta.keterangan',
                    DB::raw('coalesce(dbttrsdeta.pembebanan,0) as pembebanan'),
                    DB::raw('sum(coalesce(total_cso.qtytot,0)) as hasilcso'),
                    DB::raw('coalesce(dbttrsdeta.koreksi,0) as koreksi'),
                    DB::raw('coalesce(dbttrsdeta.deviasi,0) as deviasi'),
                    DB::raw('case 
                    when coalesce(dbttrsdeta.group_value,0) = 0 then coalesce(sum(coalesce(total_cso.qtytot,0))-dbttrsdeta.onhand+coalesce(dbttrsdeta.deviasi,0)+coalesce(dbttrsdeta.koreksi,0),0)
                    else coalesce(dbttrsdeta.group_value,0) end as orders' )
                )
                ->where('dbttrsdeta.trsid', '=', $request->trsidresume)
                ->whereRaw('(coalesce(dbttrsdeta.groupid,0) <> 0)')
                ->whereRaw('coalesce(dbttrsdeta.kesalahan_admin,0) = 0 AND COALESCE(dbttrsdeta.tidak_hitung,0)=0')
                ->groupBy('dbttrsdeta.trsdetid')
                ->havingRaw("dbttrsdeta.onhand <> (SUM(COALESCE(total_cso.qtytot, 0)) + koreksi + deviasi)")
                ->orderBy('dbttrsdeta.groupid','asc')
                ->orderBy('orders','asc')
                ->get();

            $dataItemSelisih1=DB::table('dbttrsdeta')
                ->join('dbttrsheda','dbttrsheda.trsid','=','dbttrsdeta.trsid')
                ->leftJoinSub($total_cso,'total_cso',function($join){
                    $join->on('total_cso.trsdetid','=','dbttrsdeta.trsdetid')
                    ->on('total_cso.csocount','=','dbttrsdeta.statuscso');
                })
                ->leftJoin('dbmkeputusan', 'dbttrsdeta.keputusan', '=', 'dbmkeputusan.keputusanid')
                ->select('dbttrsdeta.trsdetid',
                'dbttrsdeta.itemname' ,
                'dbttrsdeta.onhand',
                'dbttrsdeta.keterangan',
                'dbttrsdeta.keputusan',
                'dbmkeputusan.keputusandesc',
                'dbttrsdeta.tidak_hitung',
                DB::raw('coalesce(dbttrsdeta.group_value,0) as group_value'),
                DB::raw('dbttrsdeta.cogs as hpp'),
                DB::raw('coalesce(dbttrsdeta.cogs_manual,0) as hpp_manual'),
                DB::raw('coalesce(total_cso.qtytot,0) as hasilcso'),
                DB::raw('coalesce(dbttrsdeta.pembebanan,0) as pembebanan'),
                'dbttrsdeta.koreksi',
                'dbttrsdeta.deviasi',
                'dbttrsdeta.kesalahan_admin',
                'dbttrsdeta.batch_tertukar',
                'dbttrsdeta.groupid',    
                'dbttrsdeta.nodoc',
                DB::raw('coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdeta.koreksi,0)+COALESCE(dbttrsdeta.deviasi,0)-dbttrsdeta.onhand,0) as orders' ))
                ->whereRaw("(dbttrsdeta.trsid = ".$request->trsidresume."
                AND dbttrsheda.statusdoc = 'P')")
                ->whereRaw("coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdeta.koreksi,0)+COALESCE(dbttrsdeta.deviasi,0),0) <> dbttrsdeta.onhand");

            $dataItemSelisih=DB::table($dataItemSelisih1)->select('*')
                ->whereRaw("(coalesce(kesalahan_admin,0)=0 
                AND COALESCE(batch_tertukar,0)=0
                AND COALESCE(groupid,0)=0
                AND COALESCE(tidak_hitung,0)=0) OR COALESCE(group_value,0)<>0")
                ->orderBy('itemname','asc')
                ->orderBy('orders','asc')
                ->get();

            $dataItemTidakHitung1=DB::table('dbttrsdeta')
                ->join('dbttrsheda','dbttrsheda.trsid','=','dbttrsdeta.trsid')
                ->leftJoinSub($total_cso,'total_cso',function($join){
                    $join->on('total_cso.trsdetid','=','dbttrsdeta.trsdetid')
                    ->on('total_cso.csocount','=','dbttrsdeta.statuscso');
                })
                ->leftJoin('dbmkeputusan', 'dbttrsdeta.keputusan', '=', 'dbmkeputusan.keputusanid')
                ->select('dbttrsdeta.trsdetid',
                'dbttrsdeta.itemname' ,
                'dbttrsdeta.onhand',
                'dbttrsdeta.keterangan',
                'dbttrsdeta.keputusan',
                'dbmkeputusan.keputusandesc',
                'dbttrsdeta.tidak_hitung',
                DB::raw('dbttrsdeta.cogs as hpp'),
                DB::raw('coalesce(dbttrsdeta.cogs_manual,0) as hpp_manual'),
                DB::raw('coalesce(total_cso.qtytot,0) as hasilcso'),
                DB::raw('coalesce(dbttrsdeta.pembebanan,0) as pembebanan'),
                'dbttrsdeta.koreksi',
                'dbttrsdeta.deviasi',
                'dbttrsdeta.kesalahan_admin',
                'dbttrsdeta.batch_tertukar',
                'dbttrsdeta.groupid',    
                'dbttrsdeta.nodoc',
                DB::raw('coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdeta.koreksi,0)+COALESCE(dbttrsdeta.deviasi,0)-dbttrsdeta.onhand,0) as orders' ))
                ->whereRaw("(dbttrsdeta.trsid = ".$request->trsidresume."
                AND dbttrsheda.statusdoc = 'P')");

            $dataItemTidakHitung=DB::table($dataItemTidakHitung1)->select('*')
                ->whereRaw("COALESCE(tidak_hitung,0)=1")
                ->get();

            $endOfCurrentDate = Carbon::parse($dataDbtTrsHed->startcsodate)
                ->copy()
                ->endOfMonth()
                ->toDateString();
            
            $startDatePrevious3Month = Carbon::parse($dataDbtTrsHed->startcsodate)
                ->copy()
                ->subMonths(2)
                ->startOfMonth()
                ->toDateString();

            $total_cso1= DB::table('dbtcsodet')
                ->join('dbtcsodet2','dbtcsodet.csodetid','=','dbtcsodet2.csodetid')
                ->join('dbtcsohed','dbtcsohed.csoid','=','dbtcsodet.csoid')
                ->whereRaw("(dbtcsohed.status = 'P' AND dbtcsodet.statussubmit = 'P' AND dbtcsohed.tipecso = 'A')")     
                ->select('dbtcsodet.trsdetid',
                        DB::raw('sum(ifnull(dbtcsodet2.qty, 0)) AS qtytot'),
                        DB::raw('1 as isstarted'),
                        'dbtcsodet2.csocount')
                ->groupBy('dbtcsodet.trsdetid','dbtcsodet2.csocount');


            $item_ok1=DB::table('dbttrsdeta')
                ->join('dbttrsheda','dbttrsheda.trsid','=','dbttrsdeta.trsid')
                ->leftJoinSub($total_cso1,'total_cso',function($join){
                    $join->on('total_cso.trsdetid','=','dbttrsdeta.trsdetid')
                    ->on('total_cso.csocount','=','dbttrsdeta.statuscso');
                })
                ->select('dbttrsdeta.trsdetid',
                'dbttrsheda.trsid',
                'dbttrsdeta.itemname' ,
                'dbttrsdeta.kesalahan_admin',
                'dbttrsdeta.batch_tertukar',
                'dbttrsdeta.groupid',    
                'dbttrsdeta.nodoc',
                'dbttrsheda.startcsodate',
                'dbttrsheda.csomaterial',
                'dbttrsheda.doccsoid',
                'dbttrsdeta.tidak_hitung',
                DB::raw('coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdeta.koreksi,0)+COALESCE(dbttrsdeta.deviasi,0)-dbttrsdeta.onhand,0) as orders' ))
                ->whereRaw("dbttrsheda.statusdoc = 'P'")
                ->where(DB::raw('SUBSTRING(dbttrsheda.doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('dbttrsheda.startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])
                ->whereRaw("
                coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdeta.koreksi,0)+COALESCE(dbttrsdeta.deviasi,0),0) = dbttrsdeta.onhand 
                OR dbttrsdeta.kesalahan_admin=1");
            
            $item_ok=DB::table($item_ok1)->select( 'trsid',
                DB::raw('COUNT(DISTINCT trsdetid) AS count'),
                'trsdetid',
                DB::raw('DATE_FORMAT(startcsodate, "%m") AS monthstart'),
                'csomaterial')
                ->whereRaw("COALESCE(batch_tertukar,0)=0
                AND COALESCE(groupid,0)=0 AND coalesce(tidak_hitung,0)=0")
                ->where(DB::raw('SUBSTRING(doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])->groupBy('trsid');

            $item_tidak_hitung = DB::table('dbttrsheda')
                ->join('dbttrsdeta', 'dbttrsheda.trsid', '=', 'dbttrsdeta.trsid')
                ->leftJoin('dbtcsodet', 'dbtcsodet.trsdetid', '=', 'dbttrsdeta.trsdetid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->select(
                    'dbttrsheda.trsid',
                    DB::raw('COUNT(DISTINCT dbttrsdeta.trsdetid) AS count'),
                    'dbttrsdeta.trsdetid',
                    DB::raw('DATE_FORMAT(dbttrsheda.startcsodate, "%m") AS monthstart'),
                    'dbttrsheda.csomaterial'
                )
                ->where('dbttrsheda.statusdoc', 'P')
                ->whereRaw("coalesce(dbttrsdeta.tidak_hitung,0)=1")
                ->where(DB::raw('SUBSTRING(dbttrsheda.doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('dbttrsheda.startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])
                ->groupBy('dbttrsheda.trsid')
                ->orderBy('dbttrsdeta.trsdetid');

            $item_ada = DB::table('dbttrsheda')
                ->join('dbttrsdeta', 'dbttrsheda.trsid', '=', 'dbttrsdeta.trsid')
                ->leftJoin('dbtcsodet', 'dbtcsodet.trsdetid', '=', 'dbttrsdeta.trsdetid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->select(
                    'dbttrsheda.trsid',
                    DB::raw('COUNT(DISTINCT dbttrsdeta.trsdetid) AS count'),
                    'dbttrsdeta.trsdetid',
                    DB::raw('DATE_FORMAT(dbttrsheda.startcsodate, "%m") AS monthstart'),
                    'dbttrsheda.csomaterial'
                )
                ->where('dbttrsheda.statusdoc', 'P')
                ->where(DB::raw('SUBSTRING(dbttrsheda.doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('dbttrsheda.startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])
                ->groupBy('dbttrsheda.trsid')
                ->orderBy('dbttrsdeta.trsdetid');


            if(count($item_tidak_hitung->get())>0)
            {
                $data3BulanTerakhir1 = DB::query()
                    ->fromSub($item_ok, 'item_ok')
                    ->JoinSub($item_ada, 'item_ada', function ($join) {
                        $join->on('item_ada.trsid', '=', 'item_ok.trsid');
                    })
                    ->select('item_ada.monthstart','item_ok.trsid','item_ada.csomaterial', 'item_ok.count as item_ok', 'item_ada.count as item_ada');
                    $data3BulanTerakhir=DB::query()->fromSub($data3BulanTerakhir1,'hitung')
                    ->leftJoinSub($item_tidak_hitung, 'item_tidak_hitung', function ($join) {
                        $join->on('hitung.trsid', '=', 'item_tidak_hitung.trsid');
                    })
                    ->select('hitung.monthstart','hitung.trsid','hitung.csomaterial', DB::raw('(coalesce(hitung.item_ok,0) + coalesce(item_tidak_hitung.count,0)) as item_ok'), 'hitung.item_ada as item_ada')
                    ->get();
            }
            else
            {
                $data3BulanTerakhir = DB::query()
                    ->fromSub($item_ada, 'item_ada')
                    ->JoinSub($item_ok, 'item_ok', function ($join) {
                        $join->on('item_ok.trsid', '=', 'item_ada.trsid');})
                    ->select('item_ok.monthstart', 'item_ok.csomaterial', 'item_ok.count as item_ok', 'item_ada.count as item_ada')
                    ->get();
            }

            $coy = $dbCoy[0]->description;
            $data =[
                "title" => $request->approval == 1 ? "Approval Cek Stok" : "Preview Resume",
                "trsidresume" => $request->trsidresume,
                "data3BulanTerakhir" => $data3BulanTerakhir,
                "dataItemTertukar" => $dataItemSelisihTertukar,
                "dataItemKesalahanAdmin" => $dataItemKesalahanAdmin,
                "dataItemSelisih" => $dataItemSelisih,
                "dataItemTidakHitung" => $dataItemTidakHitung,
                "dataCso" => $dataDbtTrsHed,
                "dataAnalisator" => $dataPicCSO->where('jobtypeid', '=', '2'),
                "dataPelaku" => $dataPicCSO->where('jobtypeid', '=', '1'),
                "dataRekapitulasi" => $dataRekapitulasi,
                'faktorAdmingOk' => 0,
                'faktorAdminSelisih' => 0,
                'itemAda' => 0,
                "dataCoy" => $coy,
                "useWrhGrp" => $dbCoy[0]->usewrhgrp,
                // "gudangTertukar" => $gudang_tertukar
                "gudangTertukar" => []
            ];
            $strr=$coy.' '.substr($dataDbtTrsHed->doccsoid, 0, 3).' AVALAN - '.Carbon::parse($dataDbtTrsHed->startcsodate)->translatedFormat('j F Y');
            return (new ExportExcel($data,2))->download( $strr.'.xlsx');
            
        } else if ($request->type == 3) {
            // dd($request->type." REQUEST");
            $dataDbtTrsHed = DB::table('dbttrshed')->where('trsid', '=', $request->trsidlaporan)->first();
            $dataLaporan = DB::select('CALL GetDataLaporan(?)', [$request->trsidlaporan]);
            $dataWrh = DB::table('dbttrsdet')
                ->join('dbttrsdet2', 'dbttrsdet.trsdetid', '=', 'dbttrsdet2.trsdetid')
                ->where('dbttrsdet.trsid', '=', $request->trsidlaporan)
                ->select('dbttrsdet2.wrh')
                ->groupBy('dbttrsdet2.wrh')
                ->get();
            $dataWrhQty = DB::table('dbttrsdet')
                ->join('dbttrsdet2', 'dbttrsdet.trsdetid', '=', 'dbttrsdet2.trsdetid')
                ->where('dbttrsdet.trsid', '=', $request->trsidlaporan)
                ->select('dbttrsdet2.wrh', 'dbttrsdet2.trsdetid', 'dbttrsdet2.qty')
                ->get();
            $dbCoy = DB::table('dbmcoy')->get();
            $dataExport = [
                "type" => 3,
                "dataCso" => $dataDbtTrsHed,
                "dataWrh" => $dataWrh,
                "dataLaporan" => $dataLaporan,
                "dataWrhQty" => $dataWrhQty,
                "dataCoy" => $dbCoy[0]->description
            ];

            return (new ExportExcel($dataExport))->download('laporanCSO.xlsx');
            // $pdf->loadHTML($view)->setPaper('a4', 'landscape');
        }
    }
}
