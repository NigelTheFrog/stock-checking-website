<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;

class ApprovalController extends Controller
{
    public function listDocumentItem(Request $request)
    {
        $getDbtTrsHed = DB::table('dbttrshed')
            ->orderByDesc('createddate')
            ->whereNot('statusdoc', '=', 'A')
            ->where('typecekstok', '=', $request->typecekstok)
            ->get();

        // if($request->level != 2) {
        $dataApproval = User::select('id', 'name')
            ->where('level', $request->level)
            ->get();
        // } else {
        //     $dataApproval = User::select('id', 'name')
        //     ->where('level', '2')
        //     ->orWhere('level', '5')
        //     ->orWhere('level', '6')
        //     ->orWhere('level', '7')
        //     ->orWhere('level', '8')
        //     ->orWhere('level', '9')
        //     ->orWhere('level', '10')
        //     ->get();
        // }

        return response()->json(['data' => $getDbtTrsHed, 'picApproval' => $dataApproval]);
    }

    public function documentResumeItem(Request $request)
    {
        Carbon::setLocale('id');
        $dbCoy = DB::table('dbmcoy')->first();
        $dataDbtTrsHed = DB::table('dbttrshed')->where('trsid', '=', $request->trsidresume)->first();
        $dataPicCSO = collect(DB::table('dbtcsoprsn')
            ->where('trsid', '=', $request->trsidresume)
            ->where('tipecso', '=', 'R')
            ->join('dbmdept', 'dbtcsoprsn.dept', '=', 'dbmdept.deptid')
            ->get());

        if (substr($dataDbtTrsHed->doccsoid, 0, 3) == 'CSS') $dataRekapitulasi = DB::select('CALL RekapitulasiHasilCss(?)', [$request->trsidresume]);
        else $dataRekapitulasi = DB::select('CALL RekapitulasiHasilCso(?)', [$request->trsidresume]);

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
                DB::raw('coalesce(sum(coalesce(dbtcsodet2.qty,0))+dbttrsdet.koreksi+dbttrsdet.deviasi-dbttrsdet.onhand,0) as orders')
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
            ->orderBy('dbttrsdet.groupid', 'desc')
            ->orderBy('orders', 'asc')
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
                DB::raw('coalesce(sum(coalesce(dbtcsodet2.qty,0))+dbttrsdet.koreksi+dbttrsdet.deviasi-dbttrsdet.onhand,0) as orders')
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
            ->orderBy('dbttrsdet.groupid', 'asc')
            // ->orderBy('orders','asc')
            ->orderBy('group_value', 'desc')
            ->orderBy('orders', 'desc')
            ->get();

        $total_cso = DB::table('dbtcsodet')
            ->join('dbtcsodet2', 'dbtcsodet.csodetid', '=', 'dbtcsodet2.csodetid')
            ->join('dbtcsohed', 'dbtcsohed.csoid', '=', 'dbtcsodet.csoid')
            ->whereRaw("(dbtcsohed.status = 'P' AND dbtcsohed.trsid = " . $request->trsidresume . " 
            AND dbtcsodet.statussubmit = 'P')")
            ->select(
                'dbtcsodet.trsdetid',
                DB::raw('sum(ifnull(dbtcsodet2.qty, 0)) AS qtytot'),
                DB::raw('1 as isstarted'),
                'dbtcsodet2.csocount'
            )
            ->groupBy('dbtcsodet.trsdetid', 'dbtcsodet2.csocount');
        // dd($total_cso);

        $dataItemSelisih1 = DB::table('dbttrsdet')
            ->join('dbttrshed', 'dbttrshed.trsid', '=', 'dbttrsdet.trsid')
            ->leftJoinSub($total_cso, 'total_cso', function ($join) {
                $join->on('total_cso.trsdetid', '=', 'dbttrsdet.trsdetid')
                    ->on('total_cso.csocount', '=', 'dbttrsdet.statuscso');
            })
            ->leftJoin('dbmkeputusan', 'dbttrsdet.keputusan', '=', 'dbmkeputusan.keputusanid')
            ->select(
                'dbttrsdet.trsdetid',
                'dbttrsdet.itemname',
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
                DB::raw('coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdet.koreksi,0)+COALESCE(dbttrsdet.deviasi,0)-dbttrsdet.onhand,0) as orders')
            )
            ->whereRaw("(dbttrsdet.trsid = " . $request->trsidresume . "
            AND dbttrshed.statusdoc = 'P')")
            ->whereRaw("coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdet.koreksi,0)+COALESCE(dbttrsdet.deviasi,0),0) <> dbttrsdet.onhand");

        $dataItemSelisih = DB::table($dataItemSelisih1)->select('*')
            ->whereRaw("(coalesce(kesalahan_admin,0)=0 
            AND COALESCE(batch_tertukar,0)=0
            AND COALESCE(groupid,0)=0
             AND COALESCE(tidak_hitung,0)=0) OR COALESCE(group_value,0)<>0")
            ->orderBy('orders', 'desc')
            ->get();

        $dataItemTidakHitung1 = DB::table('dbttrsdet')
            ->join('dbttrshed', 'dbttrshed.trsid', '=', 'dbttrsdet.trsid')
            ->leftJoinSub($total_cso, 'total_cso', function ($join) {
                $join->on('total_cso.trsdetid', '=', 'dbttrsdet.trsdetid')
                    ->on('total_cso.csocount', '=', 'dbttrsdet.statuscso');
            })
            ->leftJoin('dbmkeputusan', 'dbttrsdet.keputusan', '=', 'dbmkeputusan.keputusanid')
            ->select(
                'dbttrsdet.trsdetid',
                'dbttrsdet.itemname',
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
                DB::raw('coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdet.koreksi,0)+COALESCE(dbttrsdet.deviasi,0)-dbttrsdet.onhand,0) as orders')
            )
            ->whereRaw("(dbttrsdet.trsid = " . $request->trsidresume . "
            AND dbttrshed.statusdoc = 'P')");

        $dataItemTidakHitung = DB::table($dataItemTidakHitung1)->select('*')
            ->whereRaw("COALESCE(tidak_hitung,0)=1")
            ->get();
        // dd($dataItemTidakHitung);

        $endOfCurrentDate = Carbon::parse($dataDbtTrsHed->startcsodate)
            ->copy()
            ->endOfMonth()
            ->toDateString();

        $startDatePrevious3Month = Carbon::parse($dataDbtTrsHed->startcsodate)
            ->copy()
            ->subMonths(3)
            ->startOfMonth()
            ->toDateString();



        $total_cso1 = DB::table('dbtcsodet')
            ->join('dbtcsodet2', 'dbtcsodet.csodetid', '=', 'dbtcsodet2.csodetid')
            ->join('dbtcsohed', 'dbtcsohed.csoid', '=', 'dbtcsodet.csoid')
            ->whereRaw("(dbtcsohed.status = 'P' AND dbtcsodet.statussubmit = 'P')")
            ->select(
                'dbtcsodet.trsdetid',
                DB::raw('sum(ifnull(dbtcsodet2.qty, 0)) AS qtytot'),
                DB::raw('1 as isstarted'),
                'dbtcsodet2.csocount'
            )
            ->groupBy('dbtcsodet.trsdetid', 'dbtcsodet2.csocount');


        $item_ok1 = DB::table('dbttrsdet')
            ->join('dbttrshed', 'dbttrshed.trsid', '=', 'dbttrsdet.trsid')
            ->leftJoinSub($total_cso1, 'total_cso', function ($join) {
                $join->on('total_cso.trsdetid', '=', 'dbttrsdet.trsdetid')
                    ->on('total_cso.csocount', '=', 'dbttrsdet.statuscso');
            })
            ->select(
                'dbttrsdet.trsdetid',
                'dbttrshed.trsid',
                'dbttrsdet.itemname',
                'dbttrsdet.kesalahan_admin',
                'dbttrsdet.batch_tertukar',
                'dbttrsdet.groupid',
                'dbttrsdet.nodoc',
                'dbttrshed.startcsodate',
                'dbttrshed.csomaterial',
                'dbttrshed.doccsoid',
                'dbttrsdet.tidak_hitung',
                DB::raw('coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdet.koreksi,0)+COALESCE(dbttrsdet.deviasi,0)-dbttrsdet.onhand,0) as orders')
            )
            ->whereRaw("dbttrshed.statusdoc = 'P'")
            ->where(DB::raw('SUBSTRING(dbttrshed.doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
            ->whereBetween('dbttrshed.startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])
            ->whereRaw("coalesce((coalesce(total_cso.qtytot,0))+coalesce(dbttrsdet.koreksi,0)+COALESCE(dbttrsdet.deviasi,0),0) = dbttrsdet.onhand");
        // ->get();
        // dd($item_ok1);

        $item_ok = DB::table($item_ok1)->select(
            'trsid',
            DB::raw('COUNT(DISTINCT trsdetid) AS count'),
            'trsdetid',
            DB::raw('DATE_FORMAT(startcsodate, "%m") AS monthstart'),
            'csomaterial'
        )
            ->whereRaw("coalesce(kesalahan_admin,0)=0 
            AND COALESCE(batch_tertukar,0)=0
            AND COALESCE(groupid,0)=0 AND coalesce(tidak_hitung,0)=0")
            ->where(DB::raw('SUBSTRING(doccsoid,1,3)'), '=', substr($dataDbtTrsHed->doccsoid, 0, 3))
            ->whereBetween('startcsodate', [$startDatePrevious3Month, $endOfCurrentDate])->groupBy('trsid');
        // dd($item_ok);

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
        // $item_tidak_hitung_count = DB::table($item_tidak_hitung)->get();
        // dd(count($item_tidak_hitung->get()));

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


        if (count($item_tidak_hitung->get()) > 0) {
            $data3BulanTerakhir1 = DB::query()
                ->fromSub($item_ok, 'item_ok')
                ->JoinSub($item_ada, 'item_ada', function ($join) {
                    $join->on('item_ada.trsid', '=', 'item_ok.trsid');
                })

                ->select('item_ada.monthstart', 'item_ok.trsid', 'item_ada.csomaterial', 'item_ok.count as item_ok', 'item_ada.count as item_ada');
            $data3BulanTerakhir = DB::query()->fromSub($data3BulanTerakhir1, 'hitung')
                ->leftJoinSub($item_tidak_hitung, 'item_tidak_hitung', function ($join) {
                    $join->on('hitung.trsid', '=', 'item_tidak_hitung.trsid');
                })
                ->select('hitung.monthstart', 'hitung.trsid', 'hitung.csomaterial', DB::raw('(coalesce(hitung.item_ok,0) + coalesce(item_tidak_hitung.count,0)) as item_ok'), 'hitung.item_ada as item_ada')
                ->get();
        } else {
            $data3BulanTerakhir = DB::query()
                ->fromSub($item_ada, 'item_ada')
                ->JoinSub($item_ok, 'item_ok', function ($join) {
                    $join->on('item_ok.trsid', '=', 'item_ada.trsid');
                })
                ->select('item_ok.monthstart', 'item_ok.csomaterial', 'item_ok.count as item_ok', 'item_ada.count as item_ada')
                ->get();
            // dd($data3BulanTerakhir);
        }

        if ($request->pdf == 1) {
            $pdf = App::make('dompdf.wrapper');
            $pdf->loadHTML(view('admin.approval.print.print-resume', [
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
                "dataCoy" => $dbCoy->description
            ]))->setPaper('a4');
            $pdfContent = $pdf->output();
            $timestamp = Carbon::now()->format('dmyhis');
            $data = [
                'filename' => "Resume $dataDbtTrsHed->doccsoid $timestamp.pdf",
                'content' => base64_encode($pdfContent),
            ];
        } else $data = [
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
            "dataCoy" => $dbCoy->description
        ];


        return response()->json([
            "data" => $data
        ]);
    }

    public function documentLaporanItem(Request $request)
    {
        $dataDbtTrsHed = DB::table('dbttrshed')->where('trsid', '=', $request->trsidlaporan)->first();

        $dataLaporan = DB::select('CALL GetDataLaporan(?)', [$request->trsidlaporan]);
        // dd($request->trsidlaporan);
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

        $dbCoy = DB::table('dbmcoy')->first();

        if ($request->pdf == 1) {
            $pdf = App::make('dompdf.wrapper');
            $pdf->loadHTML(view('admin.approval.print.print-laporan', [
                "trsidlaporan" => $request->trsidlaporan,
                "dataCso" => $dataDbtTrsHed,
                "dataWrh" => $dataWrh,
                "dataWrhQty" => $dataWrhQty,
                "dataLaporan" => $dataLaporan,
                "dataCoy" => $dbCoy,
            ]))->setPaper('a4', 'landscape');
            $pdfContent = $pdf->output();
            $timestamp = Carbon::now()->format('dmyhis');
            $data = [
                'filename' => "Laporan $dataDbtTrsHed->doccsoid $timestamp.pdf",
                'content' => base64_encode($pdfContent),
            ];
        } else $data = [
            "trsidlaporan" => $request->trsidlaporan,
            "dataCso" => $dataDbtTrsHed,
            "dataWrh" => $dataWrh,
            "dataWrhQty" => $dataWrhQty,
            "dataLaporan" => $dataLaporan,
            "dataCoy" => $dbCoy,
        ];


        return response()->json([
            "data" => $data
        ]);
    }

    public function approveCsoItem(Request $request)
    {
        $message = match (true) {
            $request->level == 6 => 'Kepala Warehouse',
            $request->level == 7 => 'Kepala FAC',
            $request->level == 8=> 'Kepala Purchasing',
            $request->level == 9 => 'Kepala Operasional',
            $request->level == 10 => 'Regional Manager',
            $request->level == 2 => 'Staff Stok',
            $request->level == 5 => 'PIC Warehouse',
            default => null
        };
        $user = User::where('userid',$request->approvedBy)->select('id')->first();
        if ($request->level == 6)
            DB::table('dbttrshed')
                ->where('trsid', $request->trsid)
                ->update([
                    'wrhapproval' => 1,
                    'wrhapproved_by' => $user->id,
                    'wrhapproved_at' => Carbon::now()
                ]);
        elseif ($request->level == 7)
            DB::table('dbttrshed')
                ->where('trsid', $request->trsid)
                ->update([
                    'facapproval' => 1,
                    'facapproved_by' => $user->id,
                    'facapproved_at' => Carbon::now()
                ]);
        elseif ($request->level == 8)
            DB::table('dbttrshed')
                ->where('trsid', $request->trsid)
                ->update([
                    'purapproval' => 1,
                    'purapproved_by' => $user->id,
                    'purapproved_at' => Carbon::now()
                ]);
        elseif ($request->level == 9)
            DB::table('dbttrshed')
                ->where('trsid', $request->trsid)
                ->update([
                    'kaopsapproval' => 1,
                    'kaopsapproved_by' => $user->id,
                    'kaopsapproved_at' => Carbon::now()
                ]);
        elseif ($request->level == 10)
            DB::table('dbttrshed')
                ->where('trsid', $request->trsid)
                ->update([
                    'regmenapproval' => 1,
                    'regmenapproved_by' => $user->id,
                    'regmenapproved_at' => Carbon::now()
                ]);
        elseif ($request->level == 2)
            DB::table('dbttrshed')
                ->where('trsid', $request->trsid)
                ->update([
                    'staffstokapproval' => 1,
                    'staffstokapproved_by' => $user->id,
                    'staffstokapproved_at' => Carbon::now()
                ]);
        elseif ($request->level == 5)
            DB::table('dbttrshed')
                ->where('trsid', $request->trsid)
                ->update([
                    'picwrhapproval' => 1,
                    'picwrhapproved_by' => $user->id,
                    'picwrhapproved_at' => Carbon::now()
                ]);
        return response()->json(['status' => 1, "message" => "$message berhasil melakukan approval"]);
    }
}
