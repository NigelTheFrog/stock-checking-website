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

        $subQueryJoinDbtCsoDet2 = DB::table('dbtcsodet2')
            ->select([
                'csodet2id',
                'csodetid AS id',
                DB::raw('MAX(csocount) AS csocount'),
                DB::raw('SUM(total) AS qty'),
                DB::raw("GROUP_CONCAT(CASE WHEN type = 1 THEN csodet2id END SEPARATOR ';') AS csodet2id_material_utuh"),
                DB::raw("GROUP_CONCAT(CASE WHEN type = 1 THEN qty END SEPARATOR ';') AS qty_material_utuh"),
                DB::raw("GROUP_CONCAT(CASE WHEN type = 1 THEN history END SEPARATOR ';') AS history_material_utuh"),
                DB::raw("GROUP_CONCAT(CASE WHEN type = 1 THEN inputs END SEPARATOR ';') AS inputs_material_utuh"),
                DB::raw("GROUP_CONCAT(CASE WHEN type = 1 THEN total END SEPARATOR ';') AS total_material_utuh"),
                DB::raw("GROUP_CONCAT(CASE WHEN type = 1 THEN keterangan END SEPARATOR ';') AS keterangan_material_utuh"),
                DB::raw("GROUP_CONCAT(CASE WHEN type = 0 THEN CONCAT(csodet2id, ';', berat_kotor, ';', history_berat_kotor, ';', input_berat_kotor, ';', berat_kemasan, ';', history_berat_kemasan, ';', input_berat_kemasan, ';', berat_keran, ';', history_berat_keran, ';', input_berat_keran, ';', total, ';', keterangan) END SEPARATOR ',') AS material_ecer_info"),

            ])
            ->groupBy('id');

        $subQueryJoinDbtTrsDet = DB::table('dbttrsdet')
            ->join('dbttrshed', 'dbttrsdet.trsid', '=', 'dbttrshed.trsid')
            ->select(['trsdetid', 'dbttrsdet.trsid', 'itemid', 'konversi_1', 'konversi_2', 'konversi_3', 'itembatchid', 'batchno', 'itemname', 'onhand', 'uom', 'analisatorid'])
            ->where('statusdoc', '=', 'A');


        $data = DB::table('dbtcsodet')
            ->select([
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
                'dbttrsdet.konversi_1',
                'dbttrsdet.konversi_2',
                'dbttrsdet.konversi_3',
                'dbtcsodet2.csodet2id_material_utuh',
                'dbtcsodet2.inputs_material_utuh',
                'dbtcsodet2.history_material_utuh',
                'dbtcsodet2.qty_material_utuh',
                'dbtcsodet2.total_material_utuh',
                'dbtcsodet2.keterangan_material_utuh',
                'dbtcsodet2.material_ecer_info',
                'dbtcsodet.statusitem',
                'dbtcsodet.statussubmit',
                'dbtcsodet2.qty',
                'dbtcsodet2.csocount',
                'dbtcsodet.grade',
                'dbtcsodet.statushslcso',
                DB::raw("GROUP_CONCAT(dbmketerangan.keterangan SEPARATOR ',') AS keterangan"),
                'dbmlocation.locationname'
            ])
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
        $subQueryJoinDbtCsoDet2 = DB::table('dbtcsodet2')
            ->select(['csodet2id', 'csodetid AS id', DB::raw('MAX(csocount) AS csocount'), 'qty', 'history', 'inputs'])
            ->groupBy('csodet2id', 'id', 'qty');

        $subQueryJoinDbtTrsDet = DB::table('dbttrsdeta')
            ->join('dbttrsheda', 'dbttrsdeta.trsid', '=', 'dbttrsheda.trsid')
            ->select(['trsdetid', 'dbttrsdeta.trsid', 'itemid', 'itembatchid', 'itemname', 'batchno', 'onhand', 'uom', 'analisatorid'])
            ->where('statusdoc', '=', 'A');

        $data = DB::table('dbtcsodet')
            ->leftJoin('dbtcsohed', 'dbtcsohed.csoid', '=', 'dbtcsodet.csoid')
            ->leftJoinSub($subQueryJoinDbtCsoDet2, 'dbtcsodet2', function (JoinClause $join) {
                $join->on('dbtcsodet2.id', '=', 'dbtcsodet.csodetid');
            })
            ->leftJoin('dbmlocation', 'dbmlocation.locationid', '=', 'dbtcsodet.locationid')
            ->leftJoin('dbmketerangan', 'dbmketerangan.keteranganid', '=', 'dbtcsodet.keteranganid')
            ->leftJoinSub($subQueryJoinDbtTrsDet, 'dbttrsdeta', function (JoinClause $join) {
                $join->on('dbttrsdeta.trsdetid', '=', 'dbtcsodet.trsdetid');
            })
            ->where('dbtcsohed.pelakuuname', '=', $request->username)
            ->where('dbtcsodet.csoid', '=', $request->csoid)
            ->where('dbtcsohed.status', '=', 'A')
            ->where('dbtcsohed.tipecso', '=', 'A')
            ->orderByDesc('dbtcsodet.csodetid')
            ->get();

        return response()->json(['data' => $data]);
    }

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
        $data = DB::table('dbttrsheda')->where('dbttrsheda.statusdoc', '=', 'A')->orderByDesc('trsid')->limit(1)->get();

        if (count($data) > 0) {
            $checkDbxJob = DB::table('dbxjob')->where('username', '=', $request->username)->get();
            if (count($checkDbxJob) > 0) {
                return response()->json(['result' => 1, 'trsid' => $data[0]->trsid]);
            } else {
                return response()->json(['result' => 0]);
            }
        } else {
            return response()->json(['result' => 0]);
        }
    }
}
