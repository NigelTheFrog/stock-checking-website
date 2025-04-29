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
        $color = implode(",", $request->color);
        $coycode = Company::select('coycode')->first();
        $coy = strtoupper(substr($coycode->coycode, 0, 3));
        if ($request->csodet2id == "") {
            //Tambah request->grade di sebelah $color
            $selectdbtcsohed = DB::table('dbtcsohed')
                ->select(DB::raw("csoid,'$request->trsdetid','$request->itemid', '$request->itembatchid','$request->lokasi','$request->grade','$color','$request->remark','$request->statusItem','D','D'"))
                ->where('pelakuuname', '=', $request->username)
                ->where('csoid', '=', $request->csoid)
                ->where('status', '=', 'A');
            //Tambah request->grade di sebelah 'color'
            $insertdbtcsodet1 = DB::table('dbtcsodet')->insertUsing(['csoid', 'trsdetid', 'itemid', 'itembatchid', 'locationid', 'grade', 'color', 'remark', 'statusitem', 'statussubmit', 'statushslcso'], $selectdbtcsohed);

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
                return response()->json(['result' => 'fail', 'message' => 'Penambahan data gagal']);
            }
        } else {
            $updateItem = $coy == 'KKS' ? [
                'dbtcsodet.trsdetid' => $request->trsdetid,
                'dbtcsodet.itemid' => $request->itemid,
                'dbtcsodet.locationid' => $request->lokasi,
                'dbtcsodet.itembatchid' => $request->itembatchid,
                'dbtcsodet.color' => $color,
                'dbtcsodet.remark' => $request->remark,
                'dbtcsodet2.qty' => $request->qtycso,
                'dbtcsodet2.tonase' => $request->tonasecso,
            ] : [
                'dbtcsodet.trsdetid' => $request->trsdetid,
                'dbtcsodet.itemid' => $request->itemid,
                'dbtcsodet.locationid' => $request->lokasi,
                'dbtcsodet.itembatchid' => $request->itembatchid,
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
                ->update($updateItem);

            // if ($simpanItem == true) {
            DB::commit();
            return response()->json(['result' => 1, 'data' => $simpanItem]);
            // } else {
            //     DB::rollBack();
            //     return response()->json(['result' => 0, 'message' => 'Penambahan data item gagal']);
            // }
        }
    }

    public function simpanHitung(Request $request)
    {
        DB::beginTransaction();
        $simpan = DB::table('dbtcsodet2')
            ->where('csodet2id', '=', $request->csodet2id)
            ->update([
                'qty' => $request->qty,
                'history' => $request->history,
                'inputs' => $request->inputs,
                'operand' => $request->operand,
                'qty_pengali' => $request->pengali,
                'pengali' => $request->qty_pengali
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

        $color = implode(",", $request->color);

        $selectdbtcsohed = DB::table('dbtcsohed')
            ->select(DB::raw("csoid,'$request->trsdetid','$request->itemid','$request->itembatchid','$request->lokasi','$request->grade','$color','$request->statusItem','D','D'"))
            ->where('pelakuuname', '=', $request->username)
            ->where('csoid', '=', $request->csoid)
            ->where('status', '=', 'A');

        $insertdbtcsodet1 = DB::table('dbtcsodet')->insertUsing(['csoid', 'trsdetid', 'itemid', 'itembatchid', 'locationid', 'grade', 'color', 'statusitem', 'statussubmit', 'statushslcso'], $selectdbtcsohed);


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
                'csocount' => $selectdbtcsodet->statuscso
            ]);

            if ($insertdbtcsodet2 == true) {
                // $getdbtcsodet = $selectdbtcsodet->get();
                $selectdbtcsodet2 = DB::table('dbtcsodet2')
                    ->select('csodet2id')
                    ->where('csodetid', '=', $csodetid->csodetid)
                    ->orderByDesc('csodet2id')
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

    public function addHitungTemuan(Request $request)
    {
        DB::beginTransaction();

        $color = implode(",", $request->color);

        if ($request->type == 1) {
            // $itemId = DB::table('dbximpor')->select('itemid')->where('statusitem', '=', 'TR')->orderByDesc('createddate')->limit(1)->get();
            $type = DB::table('dbttrshed')->select('typecekstok')->where('trsid', '=', $request->trsid)->first();
            $typecekstok = strtolower($type->typecekstok);
            $impor = 'dbximpor';
            $impordet = 'dbximpordet';

            if ($typecekstok == 'css') {
                $impor = 'dbximpor' . $typecekstok;
                $impordet = 'dbximpordet' . $typecekstok;
            }

            $checkExistingId = DB::table($impor)->select('itemid')->where('statusitem', '=', 'TR')->orderByDesc('createddate')->first();

            // if (count($itemId) > 0) $itemId = $itemId[0]->itemid + 1;
            if ($checkExistingId) $itemId = $checkExistingId->itemid + 1;
            else $itemId = 9999001;

            // $insertDbxImpor = DB::table('dbximpor')->insert([
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
                'statusitem' => 'TA',
                'dimension' => $request->dimension,
                'tolerance' => $request->tolerance
            ]);
            if ($insertDbxImpor == true) {

                $getTrsId = DB::table('dbttrsheda')->select('trsid')->orderByDesc('trsid')->limit(1)->get();

                $trsId = $getTrsId[0]->trsid;

                $insertdbttrsdet = DB::table('dbttrsdeta')->insert([
                    'trsid' => $trsId,
                    'itemid' => $itemId,
                    'itembatchid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    'statusitem' => 'TA',
                    'dimension' => $request->dimension,
                    'tolerance' => $request->tolerance,
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
            } else {
                $getDbtTrsDet = DB::table('dbttrsdeta')->select('trsdetid', 'statusitem')->latest('trsdetid')->first();
                $trsdetid = $getDbtTrsDet->trsdetid;
                $statusItem = $getDbtTrsDet->statusitem;
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
                'statusitem' => 'TA',
                'dimension' => $request->dimension,
                'tolerance' => $request->tolerance
            ]);

            if ($insertDbxImpor == true) {
                $getTrsId = DB::table('dbttrsheda')->select('trsid')->orderByDesc('trsid')->limit(1)->get();

                $trsId = $getTrsId[0]->trsid;

                $insertdbttrsdeta = DB::table('dbttrsdeta')->insert([
                    'trsid' => $trsId,
                    'itemid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    'itembatchid' => $itemId,
                    'dimension' => $request->dimension,
                    'tolerance' => $request->tolerance,
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
                    'itemname' => $request->temuanname,
                    'dimension' => $request->dimension,
                    'tolerance' => $request->tolerance
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
