<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\Company;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ProcessController extends Controller
{

    public function addItem(Request $request)
    {
        DB::beginTransaction();
        $coycode = Company::select('coycode')->first();
        $coy = strtoupper(substr($coycode->coycode, 0, 3));

        $materialUtuh = json_decode($request->materialUtuh, true);
        $csodet2idMaterialUtuh = json_decode($request->csodet2idMaterialUtuh, true);
        $materialTidakUtuh = json_decode($request->materialTidakUtuh, true);

        if ($request->csodetid) {
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
                    } elseif ($csodet2idMaterialUtuh[$idx] != "") DB::table('dbtcsodet2')->where('csodet2id','=',$csodet2idMaterialUtuh[$idx])->update(['keterangan' => $utuh[3]]);
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
                }
                elseif ($request->csodet2idMaterialEcer) DB::table('dbtcsodet2')->where('csodet2id','=',$request->csodet2idMaterialEcer)->update(['keterangan' => $materialTidakUtuh[4]]);

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
        } else {
            $selectdbtcsohed = DB::table('dbtcsohed')
                ->select(DB::raw("csoid,'$request->trsdetid','$request->itemid','$request->lokasi','$request->grade','$request->statusItem','D','D'"))
                ->where('pelakuuname', '=', $request->username)
                ->where('csoid', '=', $request->csoid)
                ->where('status', '=', 'A');

            $insertdbtcsodet1 = DB::table('dbtcsodet')->insertUsing(['csoid', 'trsdetid', 'itemid', 'locationid', 'grade', 'statusitem', 'statussubmit', 'statushslcso'], $selectdbtcsohed);
            if ($insertdbtcsodet1 == true) {
                $csodetid = DB::table('dbtcsodet')
                    ->join('dbtcsohed', 'dbtcsodet.csoid', '=', 'dbtcsohed.csoid')
                    ->select('csodetid')
                    ->where('dbtcsodet.csoid', '=', $request->csoid)
                    ->orderByDesc('csodetid')
                    ->first();

                if ($request->statusItem == "R") {
                    $selectdbtcsodet2 = DB::table('dbtcsodet')
                        ->join('dbttrsdet', 'dbttrsdet.trsdetid', '=', 'dbtcsodet.trsdetid')
                        ->select(DB::raw("dbtcsodet.csodetid,dbtcsodet.csoid,dbttrsdet.statuscso"))
                        ->where('csodetid', '=', $csodetid->csodetid)
                        ->first();
                } else {
                    $selectdbtcsodet2 = DB::table('dbtcsodet')
                        ->join('dbttrsdeta', 'dbttrsdeta.trsdetid', '=', 'dbtcsodet.trsdetid')
                        ->select(DB::raw("dbtcsodet.csodetid,dbtcsodet.csoid,dbttrsdeta.statuscso"))
                        ->where('csodetid', '=', $csodetid->csodetid)
                        ->first();
                }

                $hasInserted = true;

                foreach ($materialUtuh as $utuh) {
                    if ($utuh[0]) {
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
                    }
                }

                if ($materialTidakUtuh[0]) {
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
                }

                if ($hasInserted == true) {
                    DB::commit();
                    return response()->json(['result' => 1]);
                } else {
                    DB::rollBack();
                    return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
                }
            } else {
                DB::rollBack();
                return response()->json(['result' => 'fail', 'message' => 'Penambahan data gagal']);
            }
        }
    }

    public function ubahItem(Request $request)
    {
        DB::beginTransaction();
        $updateItem = DB::table('dbtcsodet')
            ->where('csodetid', '=', $request->csodetid)
            ->update([
                'itemid' => $request->itemid,
                'itembatchid' => $request->itembatchid,
                'locationid' => $request->lokasi,
                'trsdetid' => $request->trsdetid,
                'grade' => null
            ]);

        if ($updateItem == true) {
            DB::table('dbtcsodet2')->where('csodetid', '=', $request->csodetid)->delete();
            DB::commit();
            return response()->json(['result' => 1]);
        } else {
            DB::rollBack();
            return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
        }
    }

    public function deleteHitung(Request $request)
    {
        DB::beginTransaction();
        $delete = DB::table('dbtcsodet2')->where('csodet2id', '=', $request->csodet2id)->delete();

        if ($delete == true) {
            DB::commit();
            return response()->json(['result' => 1]);
        } else {
            DB::rollBack();
            return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
        }
    }

    public function simpanHitung(Request $request)
    {
        DB::beginTransaction();
        $simpan = DB::table('dbtcsodet2')
            ->where('csodet2id', '=', $request->csodet2id)
            ->update([
                $request->fieldQty => $request->qty,
                $request->fieldHistory => $request->history,
                $request->fieldInput => $request->inputs,
                'konversi' => $request->konversi,
                'total' => $request->total,
            ]);

        if ($simpan == true) {
            DB::commit();
            return response()->json(['result' => 1]);
        } else {
            DB::rollBack();
            return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
        }
    }

    public function addHitung(Request $request)
    {
        DB::beginTransaction();

        if ($request->csoDetId) {
            if ($request->statusItem == "R") {
                $selectdbtcsodet = DB::table('dbtcsodet')
                    ->join('dbttrsdet', 'dbttrsdet.trsdetid', '=', 'dbtcsodet.trsdetid')
                    ->select(DB::raw("dbtcsodet.csodetid,dbtcsodet.csoid,dbttrsdet.statuscso"))
                    ->where('csodetid', '=', $request->csoDetId)
                    ->first();
            } else {
                $selectdbtcsodet = DB::table('dbtcsodet')
                    ->join('dbttrsdeta', 'dbttrsdeta.trsdetid', '=', 'dbtcsodet.trsdetid')
                    ->select(DB::raw("dbtcsodet.csodetid,dbtcsodet.csoid,dbttrsdeta.statuscso"))
                    ->where('csodetid', '=', $request->csoDetId)
                    ->first();
            }

            $insertdbtcsodet2 = DB::table('dbtcsodet2')->insert([
                'csodetid' => $selectdbtcsodet->csodetid,
                'csoid' => $selectdbtcsodet->csoid,
                'csocount' => $selectdbtcsodet->statuscso,
                'type' => $request->type,
            ]);

            if ($insertdbtcsodet2 == true) {
                // $getdbtcsodet = $selectdbtcsodet->get();
                $selectdbtcsodet2 = DB::table('dbtcsodet2')
                    ->select('csodet2id')
                    ->where('csodetid', '=', $selectdbtcsodet->csodetid)
                    ->orderByDesc('csodet2id')
                    ->first();
                DB::commit();
                return response()->json(['result' => 1, 'csodetid' => $selectdbtcsodet->csodetid, 'csodet2id' => $selectdbtcsodet2->csodet2id]);
            } else {
                DB::rollBack();
                return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
            }
        } else {
            $selectdbtcsohed = DB::table('dbtcsohed')
                ->select(DB::raw("csoid,'$request->trsdetid','$request->itemid','$request->itembatchid','$request->lokasi','$request->grade','$request->statusItem','D','D'"))
                ->where('pelakuuname', '=', $request->username)
                ->where('csoid', '=', $request->csoid)
                ->where('status', '=', 'A');

            $insertdbtcsodet1 = DB::table('dbtcsodet')->insertUsing(['csoid', 'trsdetid', 'itemid', 'itembatchid', 'locationid', 'grade', 'statusitem', 'statussubmit', 'statushslcso'], $selectdbtcsohed);

            if ($insertdbtcsodet1 == true) {

                $csodetid = DB::table('dbtcsodet')
                    ->join('dbtcsohed', 'dbtcsodet.csoid', '=', 'dbtcsohed.csoid')
                    ->select('csodetid')
                    ->where('dbtcsodet.csoid', '=', $request->csoid)
                    ->where('dbtcsohed.status', '=', 'A')
                    ->orderByDesc('csodetid')
                    ->limit(1)
                    ->first();

                if ($request->statusItem == "R") {
                    $selectdbtcsodet = DB::table('dbtcsodet')
                        ->join('dbttrsdet', 'dbttrsdet.trsdetid', '=', 'dbtcsodet.trsdetid')
                        ->select(DB::raw("dbtcsodet.csodetid,dbtcsodet.csoid,dbttrsdet.statuscso"))
                        ->where('csodetid', '=', $csodetid->csodetid)
                        ->first();
                } else {
                    $selectdbtcsodet = DB::table('dbtcsodet')
                        ->join('dbttrsdeta', 'dbttrsdeta.trsdetid', '=', 'dbtcsodet.trsdetid')
                        ->select(DB::raw("dbtcsodet.csodetid,dbtcsodet.csoid,dbttrsdeta.statuscso"))
                        ->where('csodetid', '=', $csodetid->csodetid)
                        ->first();
                }

                $insertdbtcsodet2 = DB::table('dbtcsodet2')->insert([
                    'csodetid' => $selectdbtcsodet->csodetid,
                    'csoid' => $selectdbtcsodet->csoid,
                    'csocount' => $selectdbtcsodet->statuscso,
                    'type' => $request->type,
                ]);

                if ($insertdbtcsodet2 == true) {
                    // $getdbtcsodet = $selectdbtcsodet->get();
                    $selectdbtcsodet2 = DB::table('dbtcsodet2')
                        ->select('csodet2id')
                        ->where('csodetid', '=', $csodetid->csodetid)
                        ->latest('csodet2id')
                        ->first();
                    DB::commit();
                    return response()->json(['result' => 1, 'csodetid' => $selectdbtcsodet->csodetid, 'csodet2id' => $selectdbtcsodet2->csodet2id]);
                } else {
                    DB::rollBack();
                    return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
                }
            } else {
                DB::rollBack();
                return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
            }
        }
    }

    public function addHitungTemuan(Request $request)
    {
        DB::beginTransaction();

        $color = implode(",", $request->color);

        if ($request->type == 1) {
            $type = DB::table('dbttrshed')->select('typecekstok')->where('trsid', '=', $request->trsid)->first();

            if ($type->typecekstok == 'CSO') {
                $itemId = DB::table('dbximpor')->select('itemid')->where('statusitem', '=', 'TR')->orderByDesc('createddate')->limit(1)->get();

                if (count($itemId) > 0) $itemId = $itemId[0]->itemid + 1;
                else $itemId = 9999001;

                $insertDbxImpor = DB::table('dbximpor')->insert([
                    'itemid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    'statusitem' => 'TR'
                ]);

                DB::table('dbximpordet')->insert([
                    'itemid' => $itemId,
                    'wrh' => 'TEMUAN',
                    'qty' => 0
                ]);
            } else {
                $itemId = DB::table('dbximporcss')->select('itemid')->where('statusitem', '=', 'TR')->orderByDesc('createddate')->limit(1)->get();

                if (count($itemId) > 0) $itemId = $itemId[0]->itemid + 1;
                else $itemId = 9999001;

                $insertDbxImpor = DB::table('dbximpor')->insert([
                    'itemid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    'statusitem' => 'TR'
                ]);

                DB::table('dbximpordetcss')->insert([
                    'itemid' => $itemId,
                    'wrh' => 'TEMUAN',
                    'qty' => 0
                ]);
            }
            if ($insertDbxImpor == true) {
                $getTrsId = DB::table('dbttrshed')->select('trsid')->orderByDesc('trsid')->limit(1)->get();

                $trsId = $getTrsId[0]->trsid;

                $insertdbttrsdet = DB::table('dbttrsdet')->insert([
                    'trsid' => $trsId,
                    'itemid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    'statusitem' => 'TR',
                    'statuscso' => 1
                ]);
            } else {
                return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
            }
        } else {
            $itemId = DB::table('dbximporavalan')->select('itemid')->where('statusitem', '=', 'TA')->orderByDesc('createddate')->limit(1)->get();

            if (count($itemId) > 0) $itemId = $itemId[0]->itemid + 1;
            else $itemId = 9999001;

            $insertDbxImpor = DB::table('dbximporavalan')->insert([
                'itemid' => $itemId,
                'itemname' => trim(ucwords($request->temuanname)),
                'statusitem' => 'TA'
            ]);
            if ($insertDbxImpor == true) {

                $getTrsId = DB::table('dbttrsheda')->select('trsid')->orderByDesc('trsid')->limit(1)->get();

                $trsId = $getTrsId[0]->trsid;

                $insertdbttrsdet = DB::table('dbttrsdeta')->insert([
                    'trsid' => $trsId,
                    'itemid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    'statusitem' => 'TA',
                    'statuscso' => 1
                ]);
            } else {
                return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
            }
        }

        if ($insertdbttrsdet == true) {
            $trsdetid = '';
            $statusItem = '';
            if ($request->type == 1) {
                $getDbtTrsDet = DB::table('dbttrsdet')->select('trsdetid', 'statusitem')->latest('trsdetid')->first();
                $trsdetid = $getDbtTrsDet->trsdetid;
                $statusItem = $getDbtTrsDet->statusitem;
                DB::table('dbttrsdet2')->insert([
                    'trsdetid' => $trsdetid,
                    'itemid' => $itemId,
                    'wrh' => 'TEMUAN',
                    'qty' => 0
                ]);
            } else {
                $getDbtTrsDet = DB::table('dbttrsdeta')->select('trsdetid', 'statusitem')->latest('trsdetid')->first();
                $trsdetid = $getDbtTrsDet->trsdetid;
                $statusItem = $getDbtTrsDet->statusitem;

                DB::table('dbttrsdet2a')->insert([
                    'trsdetid' => $trsdetid,
                    'itemid' => $itemId,
                    'wrh' => 'TEMUAN',
                    'qty' => 0
                ]);
            }
            $selectdbtcsohed = DB::table('dbtcsohed')
                ->select(DB::raw("csoid,'$trsdetid','$itemId','$request->lokasi','$color','$statusItem','D','D'"))
                ->where('pelakuuname', '=', $request->username)
                ->where('csoid', '=', $request->csoid)
                ->where('status', '=', 'A');

            $insertdbtcsodet1 = DB::table('dbtcsodet')->insertUsing(['csoid', 'trsdetid', 'itemid', 'locationid', 'color', 'statusitem', 'statussubmit', 'statushslcso'], $selectdbtcsohed);

            if ($insertdbtcsodet1 == true) {

                $csodetid = DB::table('dbtcsodet')
                    ->join('dbtcsohed', 'dbtcsodet.csoid', '=', 'dbtcsohed.csoid')
                    ->select('csodetid')
                    ->where('dbtcsodet.csoid', '=', $request->csoid)
                    ->where('dbtcsohed.status', '=', 'A')
                    ->orderByDesc('csodetid')
                    ->limit(1);

                $selectdbtcsodet = DB::table('dbtcsodet')
                    ->select(DB::raw("csodetid,csoid,1"))
                    ->where('csodetid', '=', $csodetid);

                $insertdbtcsodet2 = DB::table('dbtcsodet2')->insertUsing(['csodetid', 'csoid', 'csocount',], $selectdbtcsodet);

                if ($insertdbtcsodet2 == true) {
                    $getdbtcsodet = $selectdbtcsodet->get();
                    $selectdbtcsodet2 = DB::table('dbtcsodet2')
                        ->select('csodet2id')
                        ->where('csodetid', '=', $csodetid)
                        ->orderByDesc('csodet2id')
                        ->limit(1)
                        ->get();
                    DB::commit();
                    return response()->json(['result' => 1, 'csodetid' => $getdbtcsodet[0]->csodetid, 'csodet2id' => $selectdbtcsodet2[0]->csodet2id, 'itemid' => $itemId, 'trsdetid' => $trsdetid]);
                } else {
                    DB::rollBack();
                    return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
                }
            } else {
                DB::rollBack();
                return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
            }
        } else {
            DB::rollBack();
            return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
        }
    }

    public function addTemuanItem(Request $request)
    {
        DB::beginTransaction();
        $color = implode(",", $request->color);
        $coycode = Company::select('coycode')->first();
        $coy = strtoupper(substr($coycode->coycode, 0, 3));
        if ($request->csodet2id == "") {

            $type = DB::table('dbttrshed')->select('typecekstok')->where('trsid', '=', $request->trsid)->first();
            $typecekstok = strtolower($type->typecekstok);
            $impor = 'dbximpor';
            $impordet = 'dbximpordet';

            if ($typecekstok == 'css') {
                $impor = 'dbximpor' . $typecekstok;
                $impordet = 'dbximpordet' . $typecekstok;
            }

            $checkExistingId = DB::table($impor)->select('itemid')->where('statusitem', '=', 'TR')->orderByDesc('createddate')->first();

            if ($checkExistingId) $itemId = $checkExistingId->itemid + 1;
            else $itemId = 9999001;

            $insertDbxImpor = DB::table($impor)->insert([
                'itemid' => $itemId,
                'itemname' => trim(ucwords($request->temuanname)),
                'statusitem' => 'TR'
            ]);

            DB::table($impordet)->insert([
                'itemid' => $itemId,
                'wrh' => $request->lokasi,
                // 'qty' => $request->qtycso ?? 0
                'qty' => 0

            ]);

            if ($insertDbxImpor == true) {
                // $getTrsId = DB::table('dbttrshed')->select('trsid')->orderByDesc('trsid')->first();

                // $trsId = $getTrsId->trsid;

                $insertdbttrsdet = DB::table('dbttrsdet')->insert([
                    'trsid' => $request->trsid,
                    'itemid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    // 'onhand' => $request->qtycso ?? 0,
                    'onhand' => 0,
                    'statusitem' => 'TR',
                    'statuscso' => 1
                ]);
                $getTrsDet = DB::table('dbttrsdet')
                    ->select('trsdetid')
                    ->where('trsid', '=', $request->trsid)
                    ->where('itemid', $itemId)
                    ->first();
                $insertDbtTrsDet2 = DB::table('dbttrsdet2')->insert([
                    'trsdetid' => $getTrsDet->trsdetid,
                    'itemid' => $itemId,
                    'wrh' => $request->lokasi,
                    // 'qty' => $request->qtycso ?? 0
                    'qty' => 0

                ]);
            } else {
                return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
            }

            if ($insertdbttrsdet == true) {
                $trsdetid = '';

                $getDbtTrsDet = DB::table('dbttrsdet')->select('trsdetid', 'statusitem')->latest('trsdetid')->first();
                $trsdetid = $getDbtTrsDet->trsdetid;


                $selectdbtcsohed = DB::table('dbtcsohed')
                    ->select(DB::raw("csoid,'$trsdetid','$itemId','$request->lokasi','$request->grade','$color','$request->remark','TR','D','D'"))
                    ->where('pelakuuname', '=', $request->username)
                    ->where('csoid', '=', $request->csoid)
                    ->where('status', '=', 'A');

                $insertdbtcsodet1 = DB::table('dbtcsodet')->insertUsing(['csoid', 'trsdetid', 'itemid', 'locationid', 'grade', 'color', 'remark', 'statusitem', 'statussubmit', 'statushslcso'], $selectdbtcsohed);

                if ($insertdbtcsodet1 == true) {
                    $csodetid = DB::table('dbtcsodet')
                        ->join('dbtcsohed', 'dbtcsodet.csoid', '=', 'dbtcsohed.csoid')
                        ->select('csodetid')
                        ->where('dbtcsodet.csoid', '=', $request->csoid)
                        ->where('dbtcsohed.status', '=', 'A')
                        ->orderByDesc('csodetid')
                        ->first();

                    $selectdbtcsodet2 = DB::table('dbtcsodet')
                        ->join('dbttrsdet', 'dbttrsdet.trsdetid', '=', 'dbtcsodet.trsdetid')
                        ->select('dbtcsodet.csodetid', 'dbtcsodet.csoid', 'dbttrsdet.statuscso')
                        ->where('csodetid', '=', $csodetid->csodetid)
                        ->first();

                    $insertedDbtCsoDet2 = $coy == 'KKS' ? [
                        'csodetid' => $selectdbtcsodet2->csodetid,
                        'csoid' => $selectdbtcsodet2->csoid,
                        'csocount' => $selectdbtcsodet2->statuscso,
                        'qty' => $request->qtycso,
                        'inputs' => $request->qtycso,
                        'operand' => $request->qtycso,
                        'history' => $request->qtycso,
                        'tonase' => $request->tonasecso,
                    ] : [
                        'csodetid' => $selectdbtcsodet2->csodetid,
                        'csoid' => $selectdbtcsodet2->csoid,
                        'csocount' => $selectdbtcsodet2->statuscso,
                        'qty' => $request->qtycso,
                        'inputs' => $request->qtycso,
                        'operand' => $request->qtycso,
                        'history' => $request->qtycso
                    ];

                    $insertdbtcsodet2 = DB::table('dbtcsodet2')->insert($insertedDbtCsoDet2);
                    if ($insertdbtcsodet2 == true) {
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
            } else {
                DB::rollBack();
                return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
            }
        } else {
            // $simpanDbxImpor = 
            DB::table('dbximpor')
                ->where('itemid', '=', $request->itemid)
                ->update([
                    'itemname' => $request->temuanname
                ]);

            DB::table('dbttrsdet')
                ->where('itemid', '=', $request->itemid)
                ->update([
                    'itemname' => $request->temuanname
                ]);
            // if ($simpanDbxImpor == true) {
            // $simpanItem = 
            $updatedItem = $coy == 'KKS' ? [
                'dbtcsodet.itemid' => $request->itemid,
                'dbtcsodet.locationid' => $request->lokasi,
                'dbtcsodet.color' => $color,
                'dbtcsodet.remark' => $request->remark,
                'dbtcsodet2.qty' => $request->qtycso,
                'dbtcsodet2.tonase' => $request->tonasecso,
            ] : [
                'dbtcsodet.itemid' => $request->itemid,
                'dbtcsodet.locationid' => $request->lokasi,
                'dbtcsodet.color' => $color,
                'dbtcsodet.remark' => $request->remark,
                'dbtcsodet2.qty' => $request->qtycso,
            ];
            DB::table('dbtcsodet')
                ->join('dbtcsohed', 'dbtcsodet.csoid', '=', 'dbtcsohed.csoid')
                ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                ->where('dbtcsohed.pelakuuname', '=', $request->username)
                ->where('dbtcsodet.csodetid', '=', $request->csodetid)
                ->where('dbtcsohed.status', '=', 'A')
                ->update($updatedItem);
            // if ($simpanItem == true) {
            DB::commit();
            return response()->json(['result' => 1]);
            // } else {
            //     DB::rollback();
            //     return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
            // }
            // } else {
            //     DB::rollback();
            //     return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
            // }
        }
    }



    public function addTemuanAvalan(Request $request)
    {
        DB::beginTransaction();
        $color = implode(",", $request->color);
        // $color =  $request->color;


        if ($request->csodet2id == "") {
            $itemId = DB::table('dbximporavalan')->select('itemid')->where('statusitem', '=', 'TA')->orderByDesc('createddate')->limit(1)->get();
            if (count($itemId) > 0) $itemId = $itemId[0]->itemid + 1;
            else $itemId = 9999001;

            $insertDbxImpor = DB::table('dbximporavalan')->insert([
                'itemid' => $itemId,
                'itemname' => trim(ucwords($request->temuanname)),
                'itembatchid' => $itemId,
                'statusitem' => 'TA'
            ]);

            if ($insertDbxImpor == true) {
                $getTrsId = DB::table('dbttrsheda')->select('trsid')->orderByDesc('trsid')->limit(1)->get();

                $trsId = $getTrsId[0]->trsid;

                $insertdbttrsdeta = DB::table('dbttrsdeta')->insert([
                    'trsid' => $trsId,
                    'itemid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    'itembatchid' => $itemId,
                    'statusitem' => 'TA',
                    'statuscso' => 1
                ]);

                if ($insertdbttrsdeta) {
                    $getDbtTrsDet = DB::table('dbttrsdeta')->select('trsdetid', 'statusitem')->latest('trsdetid')->first();
                    $trsdetid = $getDbtTrsDet->trsdetid;

                    $selectdbtcsohed = DB::table('dbtcsohed')
                        ->select(DB::raw("csoid,'$trsdetid','$itemId','$itemId','$request->lokasi','$color','$request->remark','TA','D','D'"))
                        ->where('pelakuuname', '=', $request->username)
                        ->where('csoid', '=', $request->csoid)
                        ->where('status', '=', 'A');

                    $insertdbtcsodet1 = DB::table('dbtcsodet')->insertUsing(['csoid', 'trsdetid', 'itemid', 'itembatchid', 'locationid', 'color', 'remark', 'statusitem', 'statussubmit', 'statushslcso'], $selectdbtcsohed);

                    if ($insertdbtcsodet1 == true) {
                        $csodetid = DB::table('dbtcsodet')
                            ->join('dbtcsohed', 'dbtcsodet.csoid', '=', 'dbtcsohed.csoid')
                            ->select('csodetid')
                            ->where('dbtcsodet.csoid', '=', $request->csoid)
                            ->where('dbtcsohed.status', '=', 'A')
                            ->orderByDesc('csodetid')
                            ->limit(1);

                        $selectdbtcsodet2 = DB::table('dbtcsodet')
                            ->select(DB::raw("csodetid,csoid,1,'$request->qtycso','$request->qtycso','$request->qtycso','$request->qtycso'"))
                            ->where('csodetid', '=', $csodetid);
                        $insertdbtcsodet2 = DB::table('dbtcsodet2')->insertUsing(['csodetid', 'csoid', 'csocount', 'qty', 'inputs', 'operand'], $selectdbtcsodet2);

                        if ($insertdbtcsodet2 == true) {
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
                } else {
                    DB::rollBack();
                    return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
                }
            } else {
                DB::rollBack();
                return response()->json(['result' => 0, 'message' => 'Penambahan data gagal']);
            }
        } else {
            $simpanDbxImpor = DB::table('dbximporavalan')
                ->where('itemid', '=', $request->itemid)
                ->update([
                    'itemname' => $request->temuanname
                ]);
            if ($simpanDbxImpor == true) {
                $simpanItem = DB::table('dbtcsodet')
                    ->join('dbtcsohed', 'dbtcsodet.csoid', '=', 'dbtcsohed.csoid')
                    ->leftJoin('dbtcsodet2', 'dbtcsodet2.csodetid', '=', 'dbtcsodet.csodetid')
                    ->where('dbtcsohed.pelakuuname', '=', $request->username)
                    ->where('dbtcsodet.csodetid', '=', $request->csodetid)
                    ->where('dbtcsohed.status', '=', 'A')
                    ->update([
                        'dbtcsodet.itemid' => $request->itemid,
                        'dbtcsodet.locationid' => $request->lokasi,
                        'dbtcsodet.color' => $color,
                        'dbtcsodet.remark' => $request->remark,
                        'dbtcsodet2.qty' => $request->qtycso,
                    ]);
                if ($simpanItem == true) {
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
    }
}
