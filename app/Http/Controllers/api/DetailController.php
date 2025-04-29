<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\Company;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DetailController extends Controller
{
    public function updatePerhitungan(Request $request)
    {
        DB::beginTransaction();
        $simpan = DB::table('dbtcsodet2')
            ->where('csodet2id', '=', $request->csodet2id)
            ->update([
                'qty' => $request->qty,
                'history' => $request->history,
                'inputs' => $request->inputs,
                'operand' => $request->operand
            ]);

        if ($simpan == true) {
            DB::commit();
            return response()->json(['result' => 1]);
        } else {
            DB::rollBack();
            return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
        }
    }

    public function updateItem(Request $request)
    {
        DB::beginTransaction();
        $coycode = Company::select('coycode')->first();
        $coy = strtoupper(substr($coycode->coycode, 0, 3));

        $materialUtuh = json_decode($request->materialUtuh, true);
        $csodet2idMaterialUtuh = json_decode($request->csodet2idMaterialUtuh, true);
        $materialTidakUtuh = json_decode($request->materialTidakUtuh, true);

        $simpanItem = DB::table('dbtcsodet')
            ->where('dbtcsodet.csodetid', '=', $request->csodetid)
            ->update([
                'trsdetid' => $request->trsdetid,
                'itemid' => $request->itemid,
                'locationid' => $request->lokasi,
                'remark' => $request->grade,
            ]);

        if ($simpanItem == true) {
            if ($request->statusItem == "R") {
                $selectdbtcsodet2 = DB::table('dbtcsodet')
                    ->join('dbttrsdet', 'dbttrsdet.trsdetid', '=', 'dbtcsodet.trsdetid')
                    ->select(DB::raw("dbtcsodet.csodetid,dbtcsodet.csoid,dbttrsdet.statuscso"))
                    ->where('csodetid', '=', $request->csodetid)
                    ->first();
            } else {
                $selectdbtcsodet2 = DB::table('dbtcsodet')
                    ->join('dbttrsdeta', 'dbttrsdeta.trsdetid', '=', 'dbtcsodet.trsdetid')
                    ->select(DB::raw("dbtcsodet.csodetid,dbtcsodet.csoid,dbttrsdeta.statuscso"))
                    ->where('csodetid', '=', $request->csodetid)
                    ->first();
            }

            $hasInserted = true;

            foreach ($materialUtuh as $idx => $utuh) {
                if ($csodet2idMaterialUtuh[$idx] == "" && $utuh[0]) {
                    $insertdbtcsodet2 = DB::table('dbtcsodet2')->insert([
                        'csodetid' => $selectdbtcsodet2->csodetid,
                        'csoid' => $selectdbtcsodet2->csoid,
                        'csocount' => $selectdbtcsodet2->statuscso,
                        'type' => 1,
                        'qty' => $utuh[0],
                        'inputs' => $utuh[0],
                        'operand' => $utuh[0],
                        'history' => $utuh[0],
                        'konversi' => $utuh[1],
                        'total' => $utuh[2],
                        'keterangan' => $utuh[3]
                    ]);

                    if ($insertdbtcsodet2 == false) {
                        $hasInserted = false;
                        break;
                    }
                } elseif ($csodet2idMaterialUtuh[$idx] != "") DB::table('dbtcsodet2')->where('csodet2id', '=', $csodet2idMaterialUtuh[$idx])->update(['keterangan' => $utuh[3]]);
            }

            if (!$request->csodet2idMaterialEcer && $materialTidakUtuh[0]) {
                $insertdbtcsodet2 = DB::table('dbtcsodet2')->insert([
                    'csodetid' => $selectdbtcsodet2->csodetid,
                    'csoid' => $selectdbtcsodet2->csoid,
                    'csocount' => $selectdbtcsodet2->statuscso,
                    'type' => 0,
                    'berat_kotor' => $materialTidakUtuh[0],
                    'history_berat_kotor' => $materialTidakUtuh[0],
                    'input_berat_kotor' => $materialTidakUtuh[0],
                    'berat_kemasan' => $materialTidakUtuh[1],
                    'history_berat_kemasan' => $materialTidakUtuh[1],
                    'input_berat_kemasan' => $materialTidakUtuh[1],
                    'berat_keran' => $materialTidakUtuh[2],
                    'history_berat_keran' => $materialTidakUtuh[2],
                    'input_berat_keran' => $materialTidakUtuh[2],
                    'total' => $materialTidakUtuh[3],
                    'keterangan' => $materialTidakUtuh[4]
                ]);
                if ($insertdbtcsodet2 == false) $hasInserted = false;
            } elseif ($request->csodet2idMaterialEcer) DB::table('dbtcsodet2')->where('csodet2id', '=', $request->csodet2idMaterialEcer)->update(['keterangan' => $materialTidakUtuh[4]]);

            if ($hasInserted == true) {
                DB::commit();
                return response()->json(['result' => 1]);
            } else {
                DB::rollBack();
                return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
            }
        } else {
            DB::rollBack();
            return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
        }
    }

    public function deleteItem(Request $request)
    {
        DB::beginTransaction();
        $deleteDbtCsoDet = DB::table('dbtcsodet')->where('csodetid', '=', $request->csodetid)->delete();

        if ($deleteDbtCsoDet == true) {
            DB::table('dbtcsodet2')->where('csodetid', '=', $request->csodetid)->delete();
            DB::commit();
            return response()->json(['result' => 1]);
        } else {
            DB::rollBack();
            return response()->json(['result' => 0, 'message' => 'Gagal menghapus data']);
        }
    }

    public function updateTemuan(Request $request)
    {
        DB::beginTransaction();
        $color = implode(",", $request->color);
        $coycode = Company::select('coycode')->first();
        $coy = strtoupper(substr($coycode->coycode, 0, 3));

        if ($request->statusItem == 'T') {
            $updateDbxImpor = DB::table('dbximpor')
                ->where('temid', '=', $request->itemid)
                ->update([
                    'itemname' => trim(ucwords($request->temuanname))
                ]);
        } else {
            $updateDbxImpor = DB::table('dbximporavalan')
                ->where('temid', '=', $request->itemid)
                ->update([
                    'itemname' => trim(ucwords($request->temuanname))
                ]);
        }
        if ($updateDbxImpor == true) {
            $updatedItem = $coy == 'KKS' ? [
                'dbtcsodet.trsdetid' => $request->trsdetid,
                'dbtcsodet.itemid' => $request->itemid,
                'dbtcsodet.locationid' => $request->lokasi,
                'dbtcsodet.color' => $color,
                'dbtcsodet.remark' => $request->remark,
                'dbtcsodet2.qty' => $request->qtycso,
                'dbtcsodet2.tonase' => $request->tonasecso,
            ] : [
                'dbtcsodet.trsdetid' => $request->trsdetid,
                'dbtcsodet.itemid' => $request->itemid,
                'dbtcsodet.locationid' => $request->lokasi,
                'dbtcsodet.color' => $color,
                'dbtcsodet.remark' => $request->remark,
                'dbtcsodet2.qty' => $request->qtycso,
            ];
            $simpanItem = DB::table('dbtcsodet')
                ->join('dbtcsohed', 'dbtcsodet.csoid', '=', 'dbtcsohed.csoid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->where('dbtcsohed.pelakuuname', '=', $request->username)
                ->where('dbtcsodet.csodetid', '=', $request->csodetid)
                ->where('dbtcsohed.status', '=', 'A')
                ->update($updatedItem);

            if ($simpanItem == true) {
                DB::commit();
                return response()->json(['result' => 1, 'data' => $simpanItem]);
            } else {
                DB::rollBack();
                return response()->json(['result' => 0, 'message' => 'Perubahan data temuan gagal']);
            }
        } else {
            DB::rollBack();
            return response()->json(['result' => 0, 'message' => 'Perubahan data temuan gagal']);
        }
    }
}
