<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\Company;
use App\Models\ViewDashboard;
use Illuminate\Database\Query\JoinClause;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Events\NewPusherEvent;

class HomeController extends Controller
{
    public function listItem(Request $request)
    {
        $coycode = Company::select('coycode')->first();
        $coy = strtoupper(substr($coycode->coycode, 0, 3));

        $selectedSubQueryJoinDbtCsoDet2 = $coy == 'KKS' ? [
            'csodet2id',
            'csodetid AS id',
            DB::raw('MAX(csocount) AS csocount'),
            'qty',
            'history',
            'inputs',
            'tonase',
            'qty_pengali',
            'pengali',
        ] : [
            'csodet2id',
            'csodetid AS id',
            DB::raw('MAX(csocount) AS csocount'),
            'qty',
            'history',
            'inputs',
            'qty_pengali',
            'pengali',
        ];

        $subQueryJoinDbtCsoDet2 = DB::table('dbtcsodet2')
            ->select($selectedSubQueryJoinDbtCsoDet2)
            ->groupBy('csodet2id', 'id', 'qty', 'qty_pengali', 'pengali');

        $subQueryJoinDbtTrsDet = DB::table('dbttrsdet')
            ->join('dbttrshed', 'dbttrsdet.trsid', '=', 'dbttrshed.trsid')
            ->select(['trsdetid', 'dbttrsdet.trsid', 'itemid', 'itembatchid', 'batchno', 'itemname', 'onhand', 'uom', 'analisatorid'])
            ->where('statusdoc', '=', 'A');

        $selectedItem = $coy == 'KKS' ? [
            'dbtcsodet.trsdetid',
            'dbtcsodet.csodetid',
            'dbtcsodet2.csodet2id',
            'dbtcsodet.locationid',
            'dbmlocation.locationname',
            'dbtcsodet.color',
            'dbtcsodet.locationid',
            'dbtcsodet.trsdetid',
            'dbtcsodet.itemid',
            'dbtcsodet.itembatchid',
            'dbttrsdet.itemname',
            'dbttrsdet.batchno',
            'dbttrsdet.uom',
            'dbttrsdet.onhand',
            'dbtcsodet.remark',
            'dbtcsodet2.qty',
            'dbtcsodet2.tonase',
            'dbtcsodet2.history',
            'dbtcsodet2.inputs',
            'dbtcsodet.statusitem',
            'dbtcsodet.statussubmit',
            'dbtcsodet2.csocount',
            'dbtcsodet2.qty_pengali',
            'dbtcsodet2.pengali',
            'dbtcsodet.grade',
            'dbtcsodet.statushslcso',
            DB::raw("GROUP_CONCAT(dbmketerangan.keterangan SEPARATOR ',') AS keterangan"),
            'dbmlocation.locationname'
        ] : [
            'dbtcsodet.trsdetid',
            'dbtcsodet.csodetid',
            'dbtcsodet2.csodet2id',
            'dbtcsodet.locationid',
            'dbmlocation.locationname',
            'dbtcsodet.color',
            'dbtcsodet.locationid',
            'dbtcsodet.trsdetid',
            'dbtcsodet.itemid',
            'dbtcsodet.itembatchid',
            'dbttrsdet.itemname',
            'dbttrsdet.batchno',
            'dbttrsdet.uom',
            'dbttrsdet.onhand',
            'dbtcsodet.remark',
            'dbtcsodet2.qty',
            'dbtcsodet2.qty_pengali',
            'dbtcsodet2.pengali',
            'dbtcsodet2.history',
            'dbtcsodet2.inputs',
            'dbtcsodet.statusitem',
            'dbtcsodet.statussubmit',
            'dbtcsodet2.csocount',
            'dbtcsodet.grade',
            'dbtcsodet.statushslcso',
            DB::raw("GROUP_CONCAT(dbmketerangan.keterangan SEPARATOR ',') AS keterangan"),
            'dbmlocation.locationname'
        ];

        $data = DB::table('dbtcsodet')
            ->select($selectedItem)
            ->leftJoin('dbtcsoketerangan', 'dbtcsoketerangan.csodetid', '=', 'dbtcsodet.csodetid')
            ->leftJoin('dbmketerangan', 'dbmketerangan.keteranganid', '=', 'dbtcsoketerangan.keteranganid')
            ->leftJoin('dbtcsohed', 'dbtcsohed.csoid', '=', 'dbtcsodet.csoid')
            ->leftJoinSub($subQueryJoinDbtCsoDet2, 'dbtcsodet2', function (JoinClause $join) {
                $join->on('dbtcsodet2.id', '=', 'dbtcsodet.csodetid');
            })
            ->leftJoin('dbmlocation', 'dbmlocation.locationid', '=', 'dbtcsodet.locationid')
            ->leftJoinSub($subQueryJoinDbtTrsDet, 'dbttrsdet', function (JoinClause $join) {
                $join->on('dbttrsdet.trsdetid', '=', 'dbtcsodet.trsdetid');
            })
            ->where('dbtcsohed.pelakuuname', '=', $request->username)
            ->where('dbtcsodet.csoid', '=', $request->csoid)
            ->where('dbtcsohed.status', '=', 'A')
            ->where('dbtcsohed.tipecso', '=', 'R')
            ->orderByDesc('dbtcsodet.csodetid')
            ->groupBy('dbtcsodet.csodetid')
            ->get();

        return response()->json(['data' => $data]);
    }

    public function listAvalan(Request $request)
    {
        $coycode = Company::select('coycode')->first();
        $coy = strtoupper(substr($coycode->coycode, 0, 3));

        $selectedSubQueryJoinDbtCsoDet2 = $coy == 'KKS' ? [
            'csodet2id',
            'csodetid AS id',
            DB::raw('MAX(csocount) AS csocount'),
            'qty',
            'history',
            'inputs',
            'tonase',
            'qty_pengali',
            'pengali',
        ] : [
            'csodet2id',
            'csodetid AS id',
            DB::raw('MAX(csocount) AS csocount'),
            'qty',
            'history',
            'inputs',
            'qty_pengali',
            'pengali',
        ];

        $subQueryJoinDbtCsoDet2 = DB::table('dbtcsodet2')
            ->select($selectedSubQueryJoinDbtCsoDet2)
            ->groupBy('csodet2id', 'id', 'qty', 'qty_pengali', 'pengali');

        $subQueryJoinDbtTrsDet = DB::table('dbttrsdeta')
            ->join('dbttrsheda', 'dbttrsdeta.trsid', '=', 'dbttrsheda.trsid')
            ->select(['trsdetid', 'dbttrsdeta.trsid', 'itemid', 'itembatchid', 'batchno', 'itemname', 'dimension', 'tolerance', 'onhand', 'uom', 'analisatorid'])
            ->where('statusdoc', '=', 'A');

        $selectedItem = $coy == 'KKS' ? [
            'dbtcsodet.trsdetid',
            'dbtcsodet.csodetid',
            'dbtcsodet2.csodet2id',
            'dbtcsodet.locationid',
            'dbmlocation.locationname',
            'dbtcsodet.color',
            'dbtcsodet.locationid',
            'dbtcsodet.trsdetid',
            'dbtcsodet.itemid',
            'dbtcsodet.itembatchid',
            'dbttrsdeta.itemname',
            'dbttrsdeta.dimension',
            'dbttrsdeta.tolerance',
            'dbttrsdeta.batchno',
            'dbttrsdeta.uom',
            'dbttrsdeta.onhand',
            'dbtcsodet.remark',
            'dbtcsodet2.qty',
            'dbtcsodet2.tonase',
            'dbtcsodet2.history',
            'dbtcsodet2.inputs',
            'dbtcsodet.statusitem',
            'dbtcsodet.statussubmit',
            'dbtcsodet2.csocount',
            'dbtcsodet2.qty_pengali',
            'dbtcsodet2.pengali',
            'dbtcsodet.grade',
            'dbtcsodet.statushslcso',
            DB::raw("GROUP_CONCAT(dbmketerangan.keterangan SEPARATOR ',') AS keterangan"),
            'dbmlocation.locationname'
        ] : [
            'dbtcsodet.trsdetid',
            'dbtcsodet.csodetid',
            'dbtcsodet2.csodet2id',
            'dbtcsodet.locationid',
            'dbmlocation.locationname',
            'dbtcsodet.color',
            'dbtcsodet.locationid',
            'dbtcsodet.trsdetid',
            'dbtcsodet.itemid',
            'dbtcsodet.itembatchid',
            'dbttrsdeta.itemname',
            'dbttrsdeta.dimension',
            'dbttrsdeta.tolerance',
            'dbttrsdeta.batchno',
            'dbttrsdeta.uom',
            'dbttrsdeta.onhand',
            'dbtcsodet.remark',
            'dbtcsodet2.qty',
            'dbtcsodet2.qty_pengali',
            'dbtcsodet2.pengali',
            'dbtcsodet2.history',
            'dbtcsodet2.inputs',
            'dbtcsodet.statusitem',
            'dbtcsodet.statussubmit',
            'dbtcsodet2.csocount',
            'dbtcsodet.grade',
            'dbtcsodet.statushslcso',
            DB::raw("GROUP_CONCAT(dbmketerangan.keterangan SEPARATOR ',') AS keterangan"),
            'dbmlocation.locationname'
        ];

        $data = DB::table('dbtcsodet')
            ->select($selectedItem)
            ->leftJoin('dbtcsoketerangan', 'dbtcsoketerangan.csodetid', '=', 'dbtcsodet.csodetid')
            ->leftJoin('dbmketerangan', 'dbmketerangan.keteranganid', '=', 'dbtcsoketerangan.keteranganid')
            ->leftJoin('dbtcsohed', 'dbtcsohed.csoid', '=', 'dbtcsodet.csoid')
            ->leftJoinSub($subQueryJoinDbtCsoDet2, 'dbtcsodet2', function (JoinClause $join) {
                $join->on('dbtcsodet2.id', '=', 'dbtcsodet.csodetid');
            })
            ->leftJoin('dbmlocation', 'dbmlocation.locationid', '=', 'dbtcsodet.locationid')
            ->leftJoinSub($subQueryJoinDbtTrsDet, 'dbttrsdeta', function (JoinClause $join) {
                $join->on('dbttrsdeta.trsdetid', '=', 'dbtcsodet.trsdetid');
            })
            ->where('dbtcsohed.pelakuuname', '=', $request->username)
            ->where('dbtcsodet.csoid', '=', $request->csoid)
            ->where('dbtcsohed.status', '=', 'A')
            ->where('dbtcsohed.tipecso', '=', 'A')
            ->orderByDesc('dbtcsodet.csodetid')
            ->groupBy('dbtcsodet.csodetid')
            ->get();

        return response()->json(['data' => $data]);
    }

    // public function listAvalan(Request $request)
    // {
    //     $subQueryJoinDbtCsoDet2 = DB::table('dbtcsodet2')
    //         ->select(['csodet2id', 'csodetid AS id', DB::raw('MAX(csocount) AS csocount'), 'qty', 'history', 'inputs'])
    //         ->groupBy('csodet2id', 'id', 'qty');

    //     $subQueryJoinDbtTrsDet = DB::table('dbttrsdeta')
    //         ->join('dbttrsheda', 'dbttrsdeta.trsid', '=', 'dbttrsheda.trsid')
    //         ->select(['trsdetid', 'dbttrsdeta.trsid', 'itemid', 'itembatchid', 'itemname', 'batchno', 'onhand', 'uom', 'analisatorid'])
    //         ->where('statusdoc', '=', 'A');

    //     $data = DB::table('dbtcsodet')
    //         ->leftJoin('dbtcsohed', 'dbtcsohed.csoid', '=', 'dbtcsodet.csoid')
    //         ->leftJoinSub($subQueryJoinDbtCsoDet2, 'dbtcsodet2', function (JoinClause $join) {
    //             $join->on('dbtcsodet2.id', '=', 'dbtcsodet.csodetid');
    //         })
    //         ->leftJoin('dbmlocation', 'dbmlocation.locationid', '=', 'dbtcsodet.locationid')
    //         ->leftJoin('dbmketerangan', 'dbmketerangan.keteranganid', '=', 'dbtcsodet.keteranganid')
    //         ->leftJoinSub($subQueryJoinDbtTrsDet, 'dbttrsdeta', function (JoinClause $join) {
    //             $join->on('dbttrsdeta.trsdetid', '=', 'dbtcsodet.trsdetid');
    //         })
    //         ->where('dbtcsohed.pelakuuname', '=', $request->username)
    //         ->where('dbtcsodet.csoid', '=', $request->csoid)
    //         ->where('dbtcsohed.status', '=', 'A')
    //         ->where('dbtcsohed.tipecso', '=', 'A')
    //         ->orderByDesc('dbtcsodet.csodetid')
    //         ->get();

    //     return response()->json(['data' => $data]);
    // }

    public function submitItem(Request $request)
    {
        DB::beginTransaction();
        $submitItem = DB::table('dbtcsodet')
            ->leftJoin('dbtcsodet2', 'dbtcsodet.csodetid', '=', 'dbtcsodet2.csodetid')
            ->where('dbtcsodet.csoid', '=', $request->csoid)
            ->whereNotNull('dbtcsodet2.qty')
            ->update([
                'statussubmit' => 'P',
            ]);
        
        if ($submitItem == true) {
            DB::commit();
            $arr = [
                "message" => 200,
            ];
            NewPusherEvent::dispatch($arr);
            return response()->json(['result' => 1]);
        } else {
            DB::rollBack();
            return response()->json(['result' => 0, 'message' => 'Penambahan data item gagal']);
        }
    }

    public function checkCsoItemStatus(Request $request)
    {
        $data = DB::table('dbttrshed')
            ->where('dbttrshed.statusdoc', '=', 'A')
            ->where('typecekstok', $request->csotype)
            ->orderByDesc('trsid')
            ->first();

        if ($data) {
            $checkDbxJob = DB::table('dbxjob')
                ->where('username', '=', $request->username)
                ->where('typecekstok', $request->csotype)
                ->where('statuscekstok', 'R')
                ->first();

            if ($checkDbxJob) {
                return response()->json(['result' => 1, 'trsid' => $data->trsid]);
            } else {
                return response()->json(['result' => 0]);
            }
        } else {
            return response()->json(['result' => 0]);
        }
        // }
    }

    public function checkCsoAvalanStatus(Request $request)
    {
        $data = DB::table('dbttrsheda')
            ->where('dbttrsheda.statusdoc', '=', 'A')
            ->where('typecekstok', $request->csotype)
            ->orderByDesc('trsid')
            ->first();

        if ($data) {
            $checkDbxJob = DB::table('dbxjob')
                ->where('username', '=', $request->username)
                ->where('typecekstok', $request->csotype)
                ->where('statuscekstok', 'A')
                ->first();

            if ($checkDbxJob) {
                return response()->json(['result' => 1, 'trsid' => $data->trsid]);
            } else {
                return response()->json(['result' => 0]);
            }
        } else {
            return response()->json(['result' => 0]);
        }
        
    }
}
