<?php

namespace App\Http\Controllers\Admin\Report;

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

class ReportCekStokController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $getDbtTrsHed = DB::table('dbttrshed')->where('typecekstok',$request->val)->whereNot('statusdoc', '=', 'A')->orderByDesc('createddate')->get();
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
        return view('admin.report.cek-stok', 
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
            $dataDbtTrsHed = DB::table('dbttrshed')->where('trsid', '=', $request->trsidresume)->first();
            // $dataPicCSO = collect(DB::table('dbtcsoprsn')
            //     ->where('trsid', '=', $request->trsidresume)
            //     ->where('tipecso', '=', 'R')
            //     ->join('dbmdept', 'dbtcsoprsn.dept', '=', 'dbmdept.deptid')
            //     ->get());
           
            $dataPicCSO = collect(DB::select('SELECT DISTINCT pr.jobid, 
            pr.trsid,
            pr.userid,
            pr.username,
            pr.name,
            pr.dept,
            pr.coyid,
            pr.jobtypeid,
            pr.note,
            pr.status,
            pr.tipecso,
            loc.locationname,   
            dep.departemen
            from dbtcsoprsn pr join dbmdept dep 
            on pr.dept = dep.deptid 
            left join dbttrsdet d on d.trsid = pr.trsid 
            inner join dbtcsodet d2 on d.trsdetid = d2.trsdetid 
            inner join (select csoid,GROUP_CONCAT(x.locationid) locid,GROUP_CONCAT(x.locationname) locationname  from 
                (select DISTINCT c.csoid, c.locationid, loc.locationname from dbtcsoprsn pr
                left join dbttrsdet d on d.trsid= pr.trsid 
                inner join dbtcsodet c on d.trsdetid=c.trsdetid
                join dbmlocation loc on loc.locationid= c.locationid
                where pr.trsid='.$request->trsidresume.' AND pr.tipecso = "R"
                )x group by x.csoid) loc on d2.csoid = loc.csoid
            join (select max(csoid) maxcso from dbtcsodet d join dbttrsdet d2 on d2.trsdetid = d.trsdetid
            where d2.trsid = '.$request->trsidresume.') mx on d2.csoid = mx.maxcso
            where pr.trsid ='.$request->trsidresume.' AND pr.tipecso = "R"'));
            // dd($dataPicCSO);
            if (substr($dataDbtTrsHed->doccsoid, 0, 3) == 'CSS') $dataRekapitulasi = DB::select('CALL RekapitulasiHasilCss(?)', [$request->trsidresume]);
            else $dataRekapitulasi = DB::select('CALL RekapitulasiHasilCso(?)', [$request->trsidresume]);
            // dd($dataDbtTrsHed);
            $dataItemKesalahanAdmin = DB::table('dbttrsdet')
                ->leftJoin('dbtcsodet', 'dbtcsodet.trsdetid', '=', 'dbttrsdet.trsdetid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->leftJoin('dbmkeputusan', 'dbttrsdet.keputusan', '=', 'dbmkeputusan.keputusanid')
                ->select(
                    'dbttrsdet.trsdetid',
                    'dbttrsdet.itemname',
                    'dbttrsdet.batchno',
                    'dbttrsdet.keputusan',
                    'dbmkeputusan.keputusandesc',
                    'dbttrsdet.onhand',
                    'dbttrsdet.nodoc',
                    'dbttrsdet.tidak_hitung',
                    DB::raw('dbttrsdet.cogs as hpp'),
                    DB::raw('coalesce(dbttrsdet.cogs_manual,0) as hpp_manual'),
                    'dbttrsdet.keterangan',
                    DB::raw('coalesce(dbttrsdet.pembebanan,0) as pembebanan'),
                    DB::raw('sum(coalesce(dbtcsodet2.qty,0)) as hasilcso'),
                    DB::raw('coalesce(dbttrsdet.koreksi,0) as koreksi'),
                    DB::raw('coalesce(dbttrsdet.deviasi,0) as deviasi'),
                    DB::raw('coalesce(dbttrsdet.onhand-sum(coalesce(dbtcsodet2.qty,0))+ coalesce(dbttrsdet.deviasi,0) +coalesce(dbttrsdet.koreksi,0),0) as orders' )
                )
                ->where('dbttrsdet.trsid', '=', $request->trsidresume)
                ->whereRaw('coalesce(dbttrsdet.kesalahan_admin,0) = 1 AND COALESCE(dbttrsdet.tidak_hitung,0)=0')
                ->where('dbtcsodet.statussubmit', '=', 'P')
                ->where('dbtcsodet2.csocount', '=', function ($query) {
                    $query->from('dbtcsodet')
                        ->join('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                        ->whereRaw("(dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')")
                        ->whereColumn('dbtcsodet.trsdetid', 'dbttrsdet.trsdetid')
                        ->where('dbtcsodet.statussubmit', '=', 'P')
                        ->selectRaw('max(dbtcsodet2.csocount)');
                })
                ->whereRaw("(dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')")
                ->groupBy('dbttrsdet.trsdetid')
                ->havingRaw("dbttrsdet.onhand <> (SUM(COALESCE(dbtcsodet2.qty, 0)) + koreksi + deviasi)")
                ->orderBy('dbttrsdet.itemname','asc')
                ->orderBy('orders','desc')
                ->get();

            $dataItemSelisihTertukar = DB::table('dbttrsdet')
                ->leftJoin('dbtcsodet', 'dbtcsodet.trsdetid', '=', 'dbttrsdet.trsdetid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->leftJoin('dbmkeputusan', 'dbttrsdet.keputusan', '=', 'dbmkeputusan.keputusanid')
                ->select(
                    'dbttrsdet.trsdetid',
                    'dbttrsdet.itemname',
                    'dbttrsdet.batchno',
                    'dbttrsdet.keputusan',
                    'dbmkeputusan.keputusandesc',
                    'dbttrsdet.onhand',
                    'dbttrsdet.nodoc',
                    'dbttrsdet.tidak_hitung',
                    DB::raw('coalesce(dbttrsdet.group_value,0) as group_value'),
                    DB::raw('dbttrsdet.cogs as hpp'),
                    DB::raw('coalesce(dbttrsdet.cogs_manual,0) as hpp_manual'),
                    'dbttrsdet.keterangan',
                    DB::raw('coalesce(dbttrsdet.pembebanan,0) as pembebanan'),
                    DB::raw('sum(coalesce(dbtcsodet2.qty,0)) as hasilcso'),
                    DB::raw('coalesce(dbttrsdet.koreksi,0) as koreksi'),
                    DB::raw('coalesce(dbttrsdet.deviasi,0) as deviasi'),
                    DB::raw('case 
                    when coalesce(dbttrsdet.group_value,0) = 0 then coalesce(sum(coalesce(dbtcsodet2.qty,0))-dbttrsdet.onhand+coalesce(dbttrsdet.deviasi,0)+coalesce(dbttrsdet.koreksi,0),0)
                    else coalesce(dbttrsdet.group_value,0) end as orders' )

                )
                ->where('dbttrsdet.trsid', '=', $request->trsidresume)
                ->whereRaw('(coalesce(dbttrsdet.groupid,0) <> 0)')
                ->whereRaw('coalesce(dbttrsdet.kesalahan_admin,0) = 0 AND COALESCE(dbttrsdet.tidak_hitung,0)=0')
                ->where('dbtcsodet.statussubmit', '=', 'P')
                ->where('dbtcsodet2.csocount', '=', function ($query) {
                    $query->from('dbtcsodet')
                        ->join('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                        ->whereColumn('dbtcsodet.trsdetid', 'dbttrsdet.trsdetid')
                        ->whereRaw("(dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')")
                        ->where('dbtcsodet.statussubmit', '=', 'P')
                        ->selectRaw('max(dbtcsodet2.csocount)');
                })
                ->whereRaw("(dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')")
                ->groupBy('dbttrsdet.trsdetid')
                ->havingRaw("dbttrsdet.onhand <> (SUM(COALESCE(dbtcsodet2.qty, 0)) + koreksi + deviasi)")
                ->orderBy('dbttrsdet.groupid','asc')
                ->orderBy('orders','asc')
                ->get();

                $total_cso= DB::table('dbtcsodet')
                    ->join('dbtcsodet2','dbtcsodet.csodetid','=','dbtcsodet2.csodetid')
                    ->join('dbtcsohed','dbtcsohed.csoid','=','dbtcsodet.csoid')
                    ->whereRaw("(dbtcsohed.status = 'P' AND dbtcsohed.trsid = ".$request->trsidresume." 
                    AND dbtcsodet.statussubmit = 'P')")     
                    ->select('dbtcsodet.trsdetid',
                            DB::raw('sum(ifnull(dbtcsodet2.qty, 0)) AS qtytot'),
                            DB::raw('1 as isstarted'),
                            'dbtcsodet2.csocount')
                    ->groupBy('dbtcsodet.trsdetid','dbtcsodet2.csocount');
                    // dd($total_cso);
        
                    $dataItemSelisih1=DB::table('dbttrsdet')
                    ->join('dbttrshed','dbttrshed.trsid','=','dbttrsdet.trsid')
                    ->leftJoinSub($total_cso,'total_cso',function($join){
                        $join->on('total_cso.trsdetid','=','dbttrsdet.trsdetid')
                        ->on('total_cso.csocount','=','dbttrsdet.statuscso');
                    })
                    ->leftJoin('dbmkeputusan', 'dbttrsdet.keputusan', '=', 'dbmkeputusan.keputusanid')
                    ->select('dbttrsdet.trsdetid',
                    'dbttrsdet.itemname' ,
                    'dbttrsdet.onhand',
                    'dbttrsdet.keterangan',
                    'dbttrsdet.keputusan',
                    'dbmkeputusan.keputusandesc',
                    'dbttrsdet.tidak_hitung',
                    DB::raw('coalesce(dbttrsdet.group_value,0) as group_value'),
                    DB::raw('dbttrsdet.cogs as hpp'),
                    DB::raw('coalesce(dbttrsdet.cogs_manual,0) as hpp_manual'),
                    DB::raw('coalesce(total_cso.qtytot,0) as hasilcso'),
                    DB::raw('coalesce(dbttrsdet.pembebanan,0) as pembebanan'),
                    'dbttrsdet.koreksi',
                    'dbttrsdet.deviasi',
                    'dbttrsdet.kesalahan_admin',
                    'dbttrsdet.batch_tertukar',
                    'dbttrsdet.groupid',    
                    'dbttrsdet.nodoc',
                    DB::raw('coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdet.koreksi,0)+COALESCE(dbttrsdet.deviasi,0)-dbttrsdet.onhand,0) as orders' ))
                    ->whereRaw("(dbttrsdet.trsid = ".$request->trsidresume."
                    AND dbttrshed.statusdoc = 'P')")
                    ->whereRaw("coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdet.koreksi,0)+COALESCE(dbttrsdet.deviasi,0),0) <> dbttrsdet.onhand");
    
            //     $dataItemSelisih=DB::table($dataItemSelisih1)->select('*')
            //     ->whereRaw("coalesce(kesalahan_admin,0)=0 
            // AND COALESCE(batch_tertukar,0)=0 AND COALESCE(tidak_hitung,0)=0")
            //     ->get();

            $dataItemSelisih=DB::table($dataItemSelisih1)->select('*')
                ->whereRaw("(coalesce(kesalahan_admin,0)=0 
                AND COALESCE(batch_tertukar,0)=0
                AND COALESCE(groupid,0)=0
                AND COALESCE(tidak_hitung,0)=0) OR COALESCE(group_value,0)<>0")
                ->orderBy('itemname','asc')
                ->orderBy('orders','asc')
                ->get();

            $dataItemTidakHitung1=DB::table('dbttrsdet')
                ->join('dbttrshed','dbttrshed.trsid','=','dbttrsdet.trsid')
                ->leftJoinSub($total_cso,'total_cso',function($join){
                    $join->on('total_cso.trsdetid','=','dbttrsdet.trsdetid')
                    ->on('total_cso.csocount','=','dbttrsdet.statuscso');
                })
                ->leftJoin('dbmkeputusan', 'dbttrsdet.keputusan', '=', 'dbmkeputusan.keputusanid')
                ->select('dbttrsdet.trsdetid',
                'dbttrsdet.itemname' ,
                'dbttrsdet.onhand',
                'dbttrsdet.keterangan',
                'dbttrsdet.keputusan',
                'dbmkeputusan.keputusandesc',
                'dbttrsdet.tidak_hitung',
                DB::raw('dbttrsdet.cogs as hpp'),
                DB::raw('coalesce(dbttrsdet.cogs_manual,0) as hpp_manual'),
                DB::raw('coalesce(total_cso.qtytot,0) as hasilcso'),
                DB::raw('coalesce(dbttrsdet.pembebanan,0) as pembebanan'),
                'dbttrsdet.koreksi',
                'dbttrsdet.deviasi',
                'dbttrsdet.kesalahan_admin',
                'dbttrsdet.batch_tertukar',
                'dbttrsdet.groupid',    
                'dbttrsdet.nodoc',
                DB::raw('coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdet.koreksi,0)+COALESCE(dbttrsdet.deviasi,0)-dbttrsdet.onhand,0) as orders' ))
                ->whereRaw("(dbttrsdet.trsid = ".$request->trsidresume."
                AND dbttrshed.statusdoc = 'P')");

                $dataItemTidakHitung=DB::table($dataItemTidakHitung1)->select('*')
                ->whereRaw("COALESCE(tidak_hitung,0)=1")
                ->get();
            // dd($dataItemTidakHitung);

            $endOfCurrentDate = Carbon::parse($dataDbtTrsHed->startcsodate)
                ->copy()
                ->endOfMonth()
                ->toDateString();

            $startDatePrevious3Month = Carbon::parse($dataDbtTrsHed->startcsodate)
                ->copy()
                ->subMonths(2)
                ->startOfMonth()
                ->toDateString();

            // $item_ok = DB::table('dbttrshed')
            //     ->join('dbttrsdet', 'dbttrshed.trsid', '=', 'dbttrsdet.trsid')
            //     ->leftJoin('dbtcsodet', 'dbtcsodet.trsdetid', '=', 'dbttrsdet.trsdetid')
            //     ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
            //     ->select(
            //         'dbttrshed.trsid',
            //         DB::raw('COUNT(DISTINCT dbttrsdet.trsdetid) AS count'),
            //         'dbttrsdet.trsdetid',
            //         DB::raw('DATE_FORMAT(dbttrshed.startcsodate, "%m") AS monthstart'),
            //         'dbttrshed.csomaterial'
            //     )
            //     ->where('dbttrshed.statusdoc', 'P')
            //     ->where(DB::raw('SUBSTRING(dbttrshed.doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
            //     ->whereRaw('
            //     (COALESCE(dbttrsdet.koreksi, 0) + COALESCE(dbttrsdet.deviasi, 0) + 
            //     COALESCE((
            //         SELECT SUM(COALESCE(dbtcsodet2.qty, 0))
            //         FROM dbtcsodet
            //         JOIN dbtcsodet2 ON dbtcsodet2.csodetid = dbtcsodet.csodetid
            //         WHERE 
            //             (dbtcsodet.statusitem = "R" OR dbtcsodet.statusitem = "TR")
            //             AND dbtcsodet.trsdetid = dbttrsdet.trsdetid
            //             AND dbtcsodet.statussubmit = "P"
            //             AND dbtcsodet2.csocount = (
            //                 SELECT MAX(dbtcsodet2.csocount)
            //                 FROM dbtcsodet
            //                 JOIN dbtcsodet2 ON dbtcsodet2.csodetid = dbtcsodet.csodetid
            //                 WHERE (dbtcsodet.statusitem = "R" OR dbtcsodet.statusitem = "TR")
            //                     AND dbtcsodet.trsdetid = dbttrsdet.trsdetid
            //                     AND dbtcsodet.statussubmit = "P"
            //             )
            //     ), 0)
            //     ) = dbttrsdet.onhand
            // ')
            //     ->whereBetween('dbttrshed.startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])
            //     ->groupBy('dbttrshed.trsid')
            //     ->orderBy('dbttrsdet.trsdetid')->get();
            // dd($item_ok);


            $total_cso1= DB::table('dbtcsodet')
                ->join('dbtcsodet2','dbtcsodet.csodetid','=','dbtcsodet2.csodetid')
                ->join('dbtcsohed','dbtcsohed.csoid','=','dbtcsodet.csoid')
                ->whereRaw("(dbtcsohed.status = 'P' AND dbtcsodet.statussubmit = 'P')")     
                ->select('dbtcsodet.trsdetid',
                        DB::raw('sum(ifnull(dbtcsodet2.qty, 0)) AS qtytot'),
                        DB::raw('1 as isstarted'),
                        'dbtcsodet2.csocount')
                ->groupBy('dbtcsodet.trsdetid','dbtcsodet2.csocount');


            $item_ok1=DB::table('dbttrsdet')
                ->join('dbttrshed','dbttrshed.trsid','=','dbttrsdet.trsid')
                ->leftJoinSub($total_cso1,'total_cso',function($join){
                    $join->on('total_cso.trsdetid','=','dbttrsdet.trsdetid')
                    ->on('total_cso.csocount','=','dbttrsdet.statuscso');
                })
                ->select('dbttrsdet.trsdetid',
                'dbttrshed.trsid',
                'dbttrsdet.itemname' ,
                'dbttrsdet.kesalahan_admin',
                'dbttrsdet.batch_tertukar',
                'dbttrsdet.groupid',    
                'dbttrsdet.nodoc',
                'dbttrshed.startcsodate',
                'dbttrshed.csomaterial',
                'dbttrshed.doccsoid',
                'dbttrsdet.tidak_hitung',
                    DB::raw('coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdet.koreksi,0)+COALESCE(dbttrsdet.deviasi,0)-dbttrsdet.onhand,0) as orders' ))
                ->whereRaw("dbttrshed.statusdoc = 'P'")
                ->where(DB::raw('SUBSTRING(dbttrshed.doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('dbttrshed.startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])
                ->whereRaw("
                coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdet.koreksi,0)+COALESCE(dbttrsdet.deviasi,0),0) = dbttrsdet.onhand 
                OR dbttrsdet.kesalahan_admin=1");
            
            $item_ok=DB::table($item_ok1)->select( 'trsid',
                DB::raw('COUNT(DISTINCT trsdetid) AS count'),
                'trsdetid',
                DB::raw('DATE_FORMAT(startcsodate, "%m") AS monthstart'),
                'csomaterial')
                ->whereRaw("COALESCE(batch_tertukar,0)=0
                AND COALESCE(groupid,0)=0 AND coalesce(tidak_hitung,0)=0")
                ->where(DB::raw('SUBSTRING(doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])->groupBy('trsid');

            $item_tidak_hitung = DB::table('dbttrshed')
                ->join('dbttrsdet', 'dbttrshed.trsid', '=', 'dbttrsdet.trsid')
                ->leftJoin('dbtcsodet', 'dbtcsodet.trsdetid', '=', 'dbttrsdet.trsdetid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->select(
                    'dbttrshed.trsid',
                    DB::raw('COUNT(DISTINCT dbttrsdet.trsdetid) AS count'),
                    'dbttrsdet.trsdetid',
                    DB::raw('DATE_FORMAT(dbttrshed.startcsodate, "%m") AS monthstart'),
                    'dbttrshed.csomaterial'
                )
                ->where('dbttrshed.statusdoc', 'P')
                ->whereRaw("coalesce(dbttrsdet.tidak_hitung,0)=1")
                ->where(DB::raw('SUBSTRING(dbttrshed.doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('dbttrshed.startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])
                ->groupBy('dbttrshed.trsid')
                ->orderBy('dbttrsdet.trsdetid');

                $item_ada = DB::table('dbttrshed')
                ->join('dbttrsdet', 'dbttrshed.trsid', '=', 'dbttrsdet.trsid')
                ->leftJoin('dbtcsodet', 'dbtcsodet.trsdetid', '=', 'dbttrsdet.trsdetid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->select(
                    'dbttrshed.trsid',
                    DB::raw('COUNT(DISTINCT dbttrsdet.trsdetid) AS count'),
                    'dbttrsdet.trsdetid',
                    DB::raw('DATE_FORMAT(dbttrshed.startcsodate, "%m") AS monthstart'),
                    'dbttrshed.csomaterial'
                )
                ->where('dbttrshed.statusdoc', 'P')
                ->where(DB::raw('SUBSTRING(dbttrshed.doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('dbttrshed.startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])
                ->groupBy('dbttrshed.trsid')
                ->orderBy('dbttrsdet.trsdetid');

            if(count($item_tidak_hitung->get())>0)
            {
                $data3BulanTerakhir1 = DB::query()
                ->fromSub($item_ok, 'item_ok')
                ->JoinSub($item_ada, 'item_ada', function ($join) {
                    $join->on('item_ada.trsid', '=', 'item_ok.trsid');
                })
                ->select('item_ada.monthstart','item_ok.trsid','item_ada.csomaterial', 'item_ok.count as item_ok', 'item_ada.count as item_ada');
                // ->get();
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
                if ($request->orientation == 1) $page = "admin.report.stok-item.pdf-resume-potrait";
                else $page = "admin.report.stok-item.pdf-resume";
            } else {
                if ($request->approval == 1) $page = "admin.approval.preview-item.preview-resume";
                else
                    {
                        if($request->revisiHpp == 1) $page = 'admin.report.preview-item.adjust-preview-resume';
                        else $page = "admin.report.preview-item.preview-resume";
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
                'faktorGudangOk' => 0,
                'faktorGudangSelisih' => 0,
                'itemAda' => 0,
                "dataCoy" => $dbCoy[0]->description,
                "typecekstok"=> $request->typecekstok ?? $request->typecekstok
            ]);
        } else {
            ini_set('memory_limit', '1024M');
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

            if ($request->pdf == 1) $page = "admin.report.stok-item.pdf-laporan-cso";
            else $page = "admin.report.preview-item.preview-laporan-cso";

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
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id) {}

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
                if ($request->hppKesalahanAdmin[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $kesalahanAdmin)->update(['cogs_manual' => $request->hppKesalahanAdmin[$idx]]);
                // if ($request->keteranganKesalahanAdmin[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $kesalahanAdmin)->update(['keterangan' => $request->keteranganKesalahanAdmin[$idx]]);
            }
        }

        if ($request->trsdetidTertukar) {
            foreach ($request->trsdetidTertukar as $idx => $tertukar) {
                if ($request->hppTertukar[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tertukar)->update(['cogs_manual' => $request->hppTertukar[$idx]]);
                // if ($request->keteranganTertukar[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tertukar)->update(['keterangan' => $request->keteranganTertukar[$idx]]);
            }
        }

        if ($request->trsdetidSelisih) {
            foreach ($request->trsdetidSelisih as $idx => $selisih) {
                
                if ($request->hppSelisih[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $selisih)->update(['cogs_manual' => $request->hppSelisih[$idx]]);
                // if ($request->keteranganSelisih[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $selisih)->update(['keterangan' => $request->keteranganSelisih[$idx]]);
            }
        }

        if ($request->trsdetidTidakHitung) {
            foreach ($request->trsdetidTidakHitung as $idx => $tidakHitung) {

                if ($request->hppTidakHitung[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tidakHitung)->update(['cogs_manual' => $request->hppTidakHitung[$idx]]);
                // if ($request->keteranganTidakHitung[$idx]) DB::table('dbttrsdet')->where('trsdetid', '=', $tidakHitung)->update(['keterangan' => $request->keteranganTidakHitung[$idx]]);
            }
        }

        return redirect()->route("cek-stok.index",['val' => $request->typecekstok])
        ->with('status', "Berhasil update data resume");
    }

    public function exportExcel(Request $request)
    {

        Carbon::setLocale('id');
        $dataExport = array();
        $dbCoy = DB::table('dbmcoy')->get();
        if ($request->type == 1 || $request->type == 2) {
            $dataDbtTrsHed = DB::table('dbttrshed')->where('trsid', '=', $request->trsidresume)->first();
            // $dataPicCSO = collect(DB::table('dbtcsoprsn')
            //     ->where('trsid', '=', $request->trsidresume)
            //     ->where('tipecso', '=', 'R')
            //     ->join('dbmdept', 'dbtcsoprsn.dept', '=', 'dbmdept.deptid')
            //     ->get());
           
            $dataPicCSO = collect(DB::select('SELECT DISTINCT pr.jobid, 
            pr.trsid,
            pr.userid,
            pr.username,
            pr.name,
            pr.dept,
            pr.coyid,
            pr.jobtypeid,
            pr.note,
            pr.status,
            pr.tipecso,
            loc.locationname,   
            dep.departemen
            from dbtcsoprsn pr join dbmdept dep 
            on pr.dept = dep.deptid 
            left join dbttrsdet d on d.trsid = pr.trsid 
            inner join dbtcsodet d2 on d.trsdetid = d2.trsdetid 
            inner join (select csoid,GROUP_CONCAT(x.locationid) locid,GROUP_CONCAT(x.locationname) locationname  from 
                (select DISTINCT c.csoid, c.locationid, loc.locationname from dbtcsoprsn pr
                left join dbttrsdet d on d.trsid= pr.trsid 
                inner join dbtcsodet c on d.trsdetid=c.trsdetid
                join dbmlocation loc on loc.locationid= c.locationid
                where pr.trsid='.$request->trsidresume.' AND pr.tipecso = "R"
                )x group by x.csoid) loc on d2.csoid = loc.csoid
            join (select max(csoid) maxcso from dbtcsodet d join dbttrsdet d2 on d2.trsdetid = d.trsdetid
            where d2.trsid = '.$request->trsidresume.') mx on d2.csoid = mx.maxcso
            where pr.trsid ='.$request->trsidresume.' AND pr.tipecso = "R"'));
            // dd($dataPicCSO);
            if (substr($dataDbtTrsHed->doccsoid, 0, 3) == 'CSS') $dataRekapitulasi = DB::select('CALL RekapitulasiHasilCss(?)', [$request->trsidresume]);
            else $dataRekapitulasi = DB::select('CALL RekapitulasiHasilCso(?)', [$request->trsidresume]);
            // dd($dataDbtTrsHed);
            $dataItemKesalahanAdmin = DB::table('dbttrsdet')
                ->leftJoin('dbtcsodet', 'dbtcsodet.trsdetid', '=', 'dbttrsdet.trsdetid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->leftJoin('dbmkeputusan', 'dbttrsdet.keputusan', '=', 'dbmkeputusan.keputusanid')
                ->select(
                    'dbttrsdet.itemname',
                    'dbttrsdet.batchno',
                    'dbttrsdet.keputusan',
                    'dbmkeputusan.keputusandesc',
                    'dbttrsdet.onhand',
                    'dbttrsdet.nodoc',
                    'dbttrsdet.tidak_hitung',
                    DB::raw('dbttrsdet.cogs as hpp'),
                    DB::raw('coalesce(dbttrsdet.cogs_manual,0) as hpp_manual'),
                    'dbttrsdet.keterangan',
                    DB::raw('coalesce(dbttrsdet.pembebanan,0) as pembebanan'),
                    DB::raw('sum(coalesce(dbtcsodet2.qty,0)) as hasilcso'),
                    DB::raw('coalesce(dbttrsdet.koreksi,0) as koreksi'),
                    DB::raw('coalesce(dbttrsdet.deviasi,0) as deviasi'),
                    DB::raw('coalesce(dbttrsdet.onhand-sum(coalesce(dbtcsodet2.qty,0))+ coalesce(dbttrsdet.deviasi,0) +coalesce(dbttrsdet.koreksi,0),0) as orders' )
                )
                ->where('dbttrsdet.trsid', '=', $request->trsidresume)
                ->whereRaw('coalesce(dbttrsdet.kesalahan_admin,0) = 1 AND COALESCE(dbttrsdet.tidak_hitung,0)=0')
                ->where('dbtcsodet.statussubmit', '=', 'P')
                ->where('dbtcsodet2.csocount', '=', function ($query) {
                    $query->from('dbtcsodet')
                        ->join('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                        ->whereRaw("(dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')")
                        ->whereColumn('dbtcsodet.trsdetid', 'dbttrsdet.trsdetid')
                        ->where('dbtcsodet.statussubmit', '=', 'P')
                        ->selectRaw('max(dbtcsodet2.csocount)');
                })
                ->whereRaw("(dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')")
                ->groupBy('dbttrsdet.trsdetid')
                ->havingRaw("dbttrsdet.onhand <> (SUM(COALESCE(dbtcsodet2.qty, 0)) + koreksi + deviasi)")
                ->orderBy('dbttrsdet.itemname','asc')
                ->orderBy('orders','desc')
                ->get();


            $dataItemSelisihTertukar = DB::table('dbttrsdet')
                ->leftJoin('dbtcsodet', 'dbtcsodet.trsdetid', '=', 'dbttrsdet.trsdetid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->leftJoin('dbmkeputusan', 'dbttrsdet.keputusan', '=', 'dbmkeputusan.keputusanid')
                ->select(
                    'dbttrsdet.itemname',
                    'dbttrsdet.batchno',
                    'dbttrsdet.keputusan',
                    'dbmkeputusan.keputusandesc',
                    'dbttrsdet.onhand',
                    'dbttrsdet.nodoc',
                    'dbttrsdet.tidak_hitung',
                    DB::raw('coalesce(dbttrsdet.group_value,0) as group_value'),
                    DB::raw('dbttrsdet.cogs as hpp'),
                    DB::raw('coalesce(dbttrsdet.cogs_manual,0) as hpp_manual'),
                    'dbttrsdet.keterangan',
                    DB::raw('coalesce(dbttrsdet.pembebanan,0) as pembebanan'),
                    DB::raw('sum(coalesce(dbtcsodet2.qty,0)) as hasilcso'),
                    DB::raw('coalesce(dbttrsdet.koreksi,0) as koreksi'),
                    DB::raw('coalesce(dbttrsdet.deviasi,0) as deviasi'),
                    DB::raw('case 
                    when coalesce(dbttrsdet.group_value,0) = 0 then coalesce(sum(coalesce(dbtcsodet2.qty,0))-dbttrsdet.onhand+coalesce(dbttrsdet.deviasi,0)+coalesce(dbttrsdet.koreksi,0),0)
                    else coalesce(dbttrsdet.group_value,0) end as orders' )

                )
                ->where('dbttrsdet.trsid', '=', $request->trsidresume)
                ->whereRaw('(coalesce(dbttrsdet.groupid,0) <> 0)')
                ->whereRaw('coalesce(dbttrsdet.kesalahan_admin,0) = 0 AND COALESCE(dbttrsdet.tidak_hitung,0)=0')
                ->where('dbtcsodet.statussubmit', '=', 'P')
                ->where('dbtcsodet2.csocount', '=', function ($query) {
                    $query->from('dbtcsodet')
                        ->join('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                        ->whereColumn('dbtcsodet.trsdetid', 'dbttrsdet.trsdetid')
                        ->whereRaw("(dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')")
                        ->where('dbtcsodet.statussubmit', '=', 'P')
                        ->selectRaw('max(dbtcsodet2.csocount)');
                })
                ->whereRaw("(dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')")
                ->groupBy('dbttrsdet.trsdetid')
                ->havingRaw("dbttrsdet.onhand <> (SUM(COALESCE(dbtcsodet2.qty, 0)) + koreksi + deviasi)")
                ->orderBy('dbttrsdet.groupid','asc')
                ->orderBy('orders','asc')
                ->get();

                $total_cso= DB::table('dbtcsodet')
                ->join('dbtcsodet2','dbtcsodet.csodetid','=','dbtcsodet2.csodetid')
                ->join('dbtcsohed','dbtcsohed.csoid','=','dbtcsodet.csoid')
                ->whereRaw("(dbtcsohed.status = 'P' AND dbtcsohed.trsid = ".$request->trsidresume." 
                AND dbtcsodet.statussubmit = 'P')")     
                ->select('dbtcsodet.trsdetid',
                        DB::raw('sum(ifnull(dbtcsodet2.qty, 0)) AS qtytot'),
                        DB::raw('1 as isstarted'),
                        'dbtcsodet2.csocount')
                ->groupBy('dbtcsodet.trsdetid','dbtcsodet2.csocount');
    
                $dataItemSelisih1=DB::table('dbttrsdet')
                ->join('dbttrshed','dbttrshed.trsid','=','dbttrsdet.trsid')
                ->leftJoinSub($total_cso,'total_cso',function($join){
                    $join->on('total_cso.trsdetid','=','dbttrsdet.trsdetid')
                    ->on('total_cso.csocount','=','dbttrsdet.statuscso');
                })
                ->leftJoin('dbmkeputusan', 'dbttrsdet.keputusan', '=', 'dbmkeputusan.keputusanid')
                ->select('dbttrsdet.trsdetid',
                'dbttrsdet.itemname' ,
                'dbttrsdet.onhand',
                'dbttrsdet.keterangan',
                'dbttrsdet.keputusan',
                'dbmkeputusan.keputusandesc',
                'dbttrsdet.tidak_hitung',
                DB::raw('coalesce(dbttrsdet.group_value,0) as group_value'),
                DB::raw('dbttrsdet.cogs as hpp'),
                DB::raw('coalesce(dbttrsdet.cogs_manual,0) as hpp_manual'),
                DB::raw('coalesce(total_cso.qtytot,0) as hasilcso'),
                DB::raw('coalesce(dbttrsdet.pembebanan,0) as pembebanan'),
                'dbttrsdet.koreksi',
                'dbttrsdet.deviasi',
                'dbttrsdet.kesalahan_admin',
                'dbttrsdet.batch_tertukar',
                'dbttrsdet.groupid',    
                'dbttrsdet.nodoc',
                DB::raw('coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdet.koreksi,0)+COALESCE(dbttrsdet.deviasi,0)-dbttrsdet.onhand,0) as orders' ))
                ->whereRaw("(dbttrsdet.trsid = ".$request->trsidresume."
                AND dbttrshed.statusdoc = 'P')")
                ->whereRaw("coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdet.koreksi,0)+COALESCE(dbttrsdet.deviasi,0),0) <> dbttrsdet.onhand");

            $dataItemSelisih=DB::table($dataItemSelisih1)->select('*')
                ->whereRaw("(coalesce(kesalahan_admin,0)=0 
                AND COALESCE(batch_tertukar,0)=0
                AND COALESCE(groupid,0)=0
                AND COALESCE(tidak_hitung,0)=0) OR COALESCE(group_value,0)<>0")
                ->orderBy('itemname','asc')
                ->orderBy('orders','asc')
                ->get();

            $dataItemTidakHitung1=DB::table('dbttrsdet')
                ->join('dbttrshed','dbttrshed.trsid','=','dbttrsdet.trsid')
                ->leftJoinSub($total_cso,'total_cso',function($join){
                    $join->on('total_cso.trsdetid','=','dbttrsdet.trsdetid')
                    ->on('total_cso.csocount','=','dbttrsdet.statuscso');
                })
                ->leftJoin('dbmkeputusan', 'dbttrsdet.keputusan', '=', 'dbmkeputusan.keputusanid')
                ->select('dbttrsdet.trsdetid',
                'dbttrsdet.itemname' ,
                'dbttrsdet.onhand',
                'dbttrsdet.keterangan',
                'dbttrsdet.keputusan',
                'dbmkeputusan.keputusandesc',
                'dbttrsdet.tidak_hitung',
                DB::raw('dbttrsdet.cogs as hpp'),
                DB::raw('coalesce(dbttrsdet.cogs_manual,0) as hpp_manual'),
                DB::raw('coalesce(total_cso.qtytot,0) as hasilcso'),
                DB::raw('coalesce(dbttrsdet.pembebanan,0) as pembebanan'),
                'dbttrsdet.koreksi',
                'dbttrsdet.deviasi',
                'dbttrsdet.kesalahan_admin',
                'dbttrsdet.batch_tertukar',
                'dbttrsdet.groupid',    
                'dbttrsdet.nodoc',
                DB::raw('coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdet.koreksi,0)+COALESCE(dbttrsdet.deviasi,0)-dbttrsdet.onhand,0) as orders' ))
                ->whereRaw("(dbttrsdet.trsid = ".$request->trsidresume."
                AND dbttrshed.statusdoc = 'P')");

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
                ->whereRaw("(dbtcsohed.status = 'P' AND dbtcsodet.statussubmit = 'P')")     
                ->select('dbtcsodet.trsdetid',
                        DB::raw('sum(ifnull(dbtcsodet2.qty, 0)) AS qtytot'),
                        DB::raw('1 as isstarted'),
                        'dbtcsodet2.csocount')
                ->groupBy('dbtcsodet.trsdetid','dbtcsodet2.csocount');

            $item_ok1=DB::table('dbttrsdet')
                ->join('dbttrshed','dbttrshed.trsid','=','dbttrsdet.trsid')
                ->leftJoinSub($total_cso1,'total_cso',function($join){
                    $join->on('total_cso.trsdetid','=','dbttrsdet.trsdetid')
                    ->on('total_cso.csocount','=','dbttrsdet.statuscso');
                })
                ->select('dbttrsdet.trsdetid',
                'dbttrshed.trsid',
                'dbttrsdet.itemname' ,
                'dbttrsdet.kesalahan_admin',
                'dbttrsdet.batch_tertukar',
                'dbttrsdet.groupid',    
                'dbttrsdet.nodoc',
                'dbttrshed.startcsodate',
                'dbttrshed.csomaterial',
                'dbttrshed.doccsoid',
                'dbttrsdet.tidak_hitung',
                    DB::raw('coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdet.koreksi,0)+COALESCE(dbttrsdet.deviasi,0)-dbttrsdet.onhand,0) as orders' ))
                ->whereRaw("dbttrshed.statusdoc = 'P'")
                ->where(DB::raw('SUBSTRING(dbttrshed.doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('dbttrshed.startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])
                ->whereRaw("
                coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdet.koreksi,0)+COALESCE(dbttrsdet.deviasi,0),0) = dbttrsdet.onhand 
                OR dbttrsdet.kesalahan_admin=1");
        
            $item_ok=DB::table($item_ok1)->select( 'trsid',
                DB::raw('COUNT(DISTINCT trsdetid) AS count'),
                'trsdetid',
                DB::raw('DATE_FORMAT(startcsodate, "%m") AS monthstart'),
                'csomaterial')
                ->whereRaw("COALESCE(batch_tertukar,0)=0
                AND COALESCE(groupid,0)=0 AND coalesce(tidak_hitung,0)=0")
                ->where(DB::raw('SUBSTRING(doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])->groupBy('trsid');

            $item_tidak_hitung = DB::table('dbttrshed')
                ->join('dbttrsdet', 'dbttrshed.trsid', '=', 'dbttrsdet.trsid')
                ->leftJoin('dbtcsodet', 'dbtcsodet.trsdetid', '=', 'dbttrsdet.trsdetid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->select(
                    'dbttrshed.trsid',
                    DB::raw('COUNT(DISTINCT dbttrsdet.trsdetid) AS count'),
                    'dbttrsdet.trsdetid',
                    DB::raw('DATE_FORMAT(dbttrshed.startcsodate, "%m") AS monthstart'),
                    'dbttrshed.csomaterial'
                )
                ->where('dbttrshed.statusdoc', 'P')
                ->whereRaw("coalesce(dbttrsdet.tidak_hitung,0)=1")
                ->where(DB::raw('SUBSTRING(dbttrshed.doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('dbttrshed.startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])
                ->groupBy('dbttrshed.trsid')
                ->orderBy('dbttrsdet.trsdetid');

                $item_ada = DB::table('dbttrshed')
                ->join('dbttrsdet', 'dbttrshed.trsid', '=', 'dbttrsdet.trsid')
                ->leftJoin('dbtcsodet', 'dbtcsodet.trsdetid', '=', 'dbttrsdet.trsdetid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->select(
                    'dbttrshed.trsid',
                    DB::raw('COUNT(DISTINCT dbttrsdet.trsdetid) AS count'),
                    'dbttrsdet.trsdetid',
                    DB::raw('DATE_FORMAT(dbttrshed.startcsodate, "%m") AS monthstart'),
                    'dbttrshed.csomaterial'
                )
                ->where('dbttrshed.statusdoc', 'P')
                ->where(DB::raw('SUBSTRING(dbttrshed.doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
                ->whereBetween('dbttrshed.startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])
                ->groupBy('dbttrshed.trsid')
                ->orderBy('dbttrsdet.trsdetid');

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
            
            $page = "admin.report.stok-item.pdf-resume-potrait";

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
                'faktorGudangOk' => 0,
                'faktorGudangSelisih' => 0,
                'itemAda' => 0,
                "dataCoy" => $coy
            ];

            $strr=$coy.' '.substr($dataDbtTrsHed->doccsoid, 0, 3).'-'.Carbon::parse($dataDbtTrsHed->startcsodate)->translatedFormat('j F Y');
            return (new ExportExcel($data))->download( $strr.'.xlsx');
            
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
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
