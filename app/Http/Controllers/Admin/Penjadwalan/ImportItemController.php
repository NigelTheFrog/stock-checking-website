<?php

namespace App\Http\Controllers\Admin\Penjadwalan;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\Company;
use App\Models\Admin\Master\Grade;
use App\Models\Admin\Penjadwalan\ImportItem;
use Carbon\Carbon;
use Exception;
use Illuminate\Database\Query\JoinClause;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class ImportItemController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $param)
    {
        Carbon::setLocale('id');

        $companyID = config('values.companyId');

        $token = Http::get('http://allapi.local.sutindo.net/getToken');
        $getWarehouse = Http::post('http://allapi.local.sutindo.net/sos/getWarehouse', [
            "token" => $token['token'],
            "companyId" => $companyID,
        ]);

        $productId = Http::post('http://allapi.local.sutindo.net/sos/getProducts', [
            "token" => $token['token'],
            "companyId" => $companyID,
        ]);

        $getGroupingItem = Http::post('http://allapi.local.sutindo.net/sos/getGroupingItem', [
            "token" => $token['token'],
            "companyId" => $companyID,
        ]);
        // dd($getWarehouse['data']);
        if ($param->val == 'CSO') {
            $impordet = DB::table("dbximpordet")
                ->select("itemid as itemid", DB::raw('SUM(qty) as qty'))
                ->groupBy("itemid");

            $stok = DB::table('dbximpor')
                ->leftJoinSub($impordet, 'impordet', function (JoinClause $join) {
                    $join->on('dbximpor.itemid', '=', 'impordet.itemid');
                })
                ->orderBy('itemname')
                ->get();
        } else if ($param->val == "CSS") {
            $impordet = DB::table("dbximpordetcss")
                ->select("itemid as itemid", DB::raw('SUM(qty) as qty'))
                ->groupBy("itemid");

            $stok = DB::table('dbximporcss')
                ->leftJoinSub($impordet, 'impordetcss', function (JoinClause $join) {
                    $join->on('dbximporcss.itemid', '=', 'impordetcss.itemid');
                })->orderBy('itemname')
                ->get();
        }

        $csoActive = DB::table('dbttrshed')->where('statusdoc', '<>', 'P')->where('typecekstok', $param->val)->orderByDesc('trsid')->first();
        $coycode = Company::select('coycode')->first();

        return view("admin.penjadwalan.import-stok", [
            "importedBatch" => 0,
            "importedItem" => 0,
            "stok" => $stok,
            "warehouse" => $getWarehouse['data'],
            "groupingItem" => $getGroupingItem['data'],
            "csoActive" => $csoActive,
            "coy" => strtoupper(substr($coycode->coycode, 0, 3)),
            // "csoEnd" => $csoEnd,
            'csoType' => $param->val,
            'productId' => $productId['data']
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
        set_time_limit(300);
        DB::beginTransaction();
        $token = Http::get('http://allapi.local.sutindo.net/getToken');
        $companyID = config('values.companyId');
        $csoActive = DB::table('dbttrshed')->where('statusdoc', '=', 'A')
            ->where('typecekstok', $request->csotype)->orderByDesc('trsid')->first();
        // $dbxCsoType = DB::table('dbxcsotype')->where('csotype', '=', $request->typestok)->first();
        $param = json_decode($request->data, true);
        $coycode = Company::select('coycode')->first();
        $dataCoy = substr($coycode->coycode, 4);

        if ($request->type == 1) {
            if (count($param) == 0) {
                return ['task' => "0", "message" => "Anda belum memilih item"];
            } else {

                $noexist = 0;

                if ($request->csotype == "CSO") {

                    foreach ($param as $dataItem) {

                        $idItem = DB::table('dbximpor')->select('itemid')->where('itemid', '=', $dataItem['ITEMID'])->get();
                        if (count($idItem) == 0) {
                            // return ['task' => "0", "message" => "Item dengan id {$dataItem['ITEMID']} sudah pernah diinput"];
                            // return redirect()->route("import-stok.index")->with('error', "Item dengan id {$dataItem['ITEMID']} sudah pernah diinput");
                            // } else {                               

                            $insertDbxImpor = DB::table('dbximpor')->insert([
                                'itemid' => $dataItem['ITEMID'],
                                'itemcode' => $dataItem['itemcode'],
                                'itemname' => $dataItem['NamaItem'],
                                'productid' => $dataItem['ProductID'],
                                'productname' => $dataItem['Product'],
                                'subproductid' => $dataItem['subproductid'],
                                'subproductname' => $dataItem['SubProduct'],
                                'onhand' => str_replace(',', '', $dataItem['Onhand']),  // merge from sls onhand 24 12 24
                                'uom' => $dataItem['UOM'],
                                'cogs' => $dataItem['itemcost'],
                                'statusitem' => 'R',
                                'isbatch' => 0,
                                'jenis' => $request->jenis
                            ]);

                            // dd($dataItem);
                            // if (DB::table('dbmitem')->where('itemcode', $dataItem['itemcode'])->doesntExist()) {
                            //     if ($dataCoy == 'LAB') {
                            //         DB::table('dbmitem')->insert([
                            //             'itemcode' => $dataItem['itemcode'],
                            //             'itemname' => $dataItem['NamaItem'],
                            //             'konversi' => 0,
                            //             'std_berat_kemasan' => 0,
                            //             'toleransi_minus' => 0,
                            //             'toleransi_plus' => 0,
                            //             'std_toleransi' => 0
                            //         ]);
                            //     } else {
                            //         DB::table('dbmitem')->insert([
                            //             'itemcode' => $dataItem['itemcode'],
                            //             'itemname' => $dataItem['NamaItem'],
                            //             'konversi_1' => 0,
                            //             'konversi_2' => 0,
                            //             'konversi_3' => 0,
                            //             'std_berat_kemasan' => 0,
                            //             'std_material_loss_minus' => 0,
                            //             'std_material_loss_plus' => 0,
                            //             'total_produksi' => 0
                            //         ]);
                            //     }
                            // }

                            if ($insertDbxImpor == true) {


                                foreach ($dataItem['gudang'] as $gdg) {

                                    if ($gdg['qty'] != 0) {
                                        // $qtyOnhand += $gdg['qty'];
                                        $insertDbxImporDet = DB::table('dbximpordet')->insert([
                                            'itemid' => $dataItem['ITEMID'],
                                            'wrh' => $gdg['namaGudang'],
                                            'qty' => $gdg['qty']
                                        ]);

                                        if ($insertDbxImporDet == true) {
                                            if (Grade::where('gradecode', '=', $gdg['namaGudang'])->doesntExist()) {
                                                $newLocation = new Grade;
                                                $newLocation->gradecode = $gdg['namaGudang'];
                                                $newLocation->description = $gdg['namaGudang'];
                                                $newLocation->save();
                                            }
                                            $noexist++;
                                        } else {
                                            DB::rollBack();
                                            return ['task' => "0", "message" => "Penambahan data detail impor batch gagal"];
                                            // return redirect()->route("import-stok.index")->with('error', "Penambahan data detail impor batch gagal");
                                        }
                                    }
                                }
                            } else {
                                DB::rollBack();
                                return ['task' => "0", "message" => "Penambahan data impor item gagal"];
                                // return redirect()->route("import-stok.index")->with('error', "Penambahan data impor batch gagal");
                            }
                        }
                    }
                    if ($noexist > 0) {
                        DB::commit();
                        return ['task' => "1"];
                        // return redirect()->route("import-stok.index")->with('status', 'Berhasil melakukan impor data');
                    } else {
                        DB::rollBack();
                        return ['task' => "0", "message" => "Terdapat duplikasi data item"];
                        // return redirect()->route("import-stok.index")->with('error', "Terdapat duplikasi data batch");
                    }
                } else if ($request->csotype == "CSS") {
                    foreach ($param as $dataItem) {

                        $idItem = DB::table('dbximporcss')->select('itemid')->where('itemid', '=', $dataItem['ITEMID'])->get();
                        if (count($idItem) == 0) {
                            // return ['task' => "0", "message" => "Item dengan id {$dataItem['ITEMID']} sudah pernah diinput"];
                            // return redirect()->route("import-stok.index")->with('error', "Item dengan id {$dataItem['ITEMID']} sudah pernah diinput");
                            // } else {                               

                            $insertDbxImpor = DB::table('dbximporcss')->insert([
                                'itemid' => $dataItem['ITEMID'],
                                'itemcode' => $dataItem['itemcode'],
                                'itemname' => $dataItem['NamaItem'],
                                'productid' => $dataItem['ProductID'],
                                'productname' => $dataItem['Product'],
                                'subproductid' => $dataItem['subproductid'],
                                'subproductname' => $dataItem['SubProduct'],
                                'onhand' => str_replace(',', '', $dataItem['Onhand']),  // merge from sls onhand 24 12 24
                                'uom' => $dataItem['UOM'],
                                'cogs' => $dataItem['itemcost'],
                                'statusitem' => 'R',
                                'isbatch' => 0,
                                'jenis' => $request->jenis
                            ]);
                            log::info($insertDbxImpor);
                            // dd($dataItem);
                            // if (DB::table('dbmitem')->where('itemcode', $dataItem['itemcode'])->doesntExist()) {
                            //     if ($dataCoy == 'LAB') {
                            //         DB::table('dbmitem')->insert([
                            //             'itemcode' => $dataItem['itemcode'],
                            //             'itemname' => $dataItem['NamaItem'],
                            //             'konversi' => 0,
                            //             'std_berat_kemasan' => 0,
                            //             'toleransi_minus' => 0,
                            //             'toleransi_plus' => 0,
                            //             'std_toleransi' => 0
                            //         ]);
                            //     } else {
                            //         DB::table('dbmitem')->insert([
                            //             'itemcode' => $dataItem['itemcode'],
                            //             'itemname' => $dataItem['NamaItem'],
                            //             'konversi_1' => 0,
                            //             'konversi_2' => 0,
                            //             'konversi_3' => 0,
                            //             'std_berat_kemasan' => 0,
                            //             'std_material_loss_minus' => 0,
                            //             'std_material_loss_plus' => 0,
                            //             'total_produksi' => 0
                            //         ]);
                            //     }
                            // }

                            if ($insertDbxImpor == true) {

                                // $qtyOnhand = 0;
                                foreach ($dataItem['gudang'] as $gdg) {
                                    if ($gdg['qty'] != 0) {
                                        // $qtyOnhand += $gdg['qty'];
                                        $insertDbxImporDet = DB::table('dbximpordetcss')->insert([
                                            'itemid' => $dataItem['ITEMID'],
                                            'wrh' => $gdg['namaGudang'],
                                            'qty' => $gdg['qty']
                                        ]);

                                        if ($insertDbxImporDet == true) {
                                            if (Grade::where('gradecode', '=', $gdg['namaGudang'])->doesntExist()) {
                                                $newLocation = new Grade;
                                                $newLocation->gradecode = $gdg['namaGudang'];
                                                $newLocation->description = $gdg['namaGudang'];
                                                $newLocation->save();
                                            }
                                            $noexist++;
                                        } else {
                                            DB::rollBack();
                                            return ['task' => "0", "message" => "Penambahan data detail impor batch gagal"];
                                            // return redirect()->route("import-stok.index")->with('error', "Penambahan data detail impor batch gagal");
                                        }
                                    }
                                }

                                if ($csoActive && $request->csotype == 'CSS') {
                                    $insertDbtTrsDet = DB::table('dbttrsdet')->insert([
                                        "trsid" => $csoActive->trsid,
                                        'itemid' => $dataItem['ITEMID'],
                                        'itemcode' => $dataItem['itemcode'],
                                        'itemname' => $dataItem['NamaItem'],
                                        'onhand' => str_replace(',', '', $dataItem['Onhand']),
                                        'uom' => $dataItem['UOM'],
                                        'cogs' => $dataItem['itemcost'],
                                        'statusitem' => 'R',
                                        'isbatch' =>  0,
                                        "statuscso" => 1,
                                        'jenis' => $request->jenis
                                    ]);

                                    if ($insertDbtTrsDet == true) {
                                        $getTrsDet = DB::table('dbttrsdet')
                                            ->select('trsdetid')
                                            ->where('trsid', '=', $csoActive->trsid)
                                            ->where('itemid', $dataItem['ITEMID'])
                                            ->first();

                                        $groupWrh = [];
                                        foreach ($dataItem['gudang'] as $gdg) {
                                            if ($gdg['qty'] != 0) {

                                                // $tableGudang = DB::table('dbmgrade')
                                                // ->where('gradecode','=',$gdg['namaGudang'])->first();
                                                // if(array_key_exists($tableGudang->group,$groupWrh))
                                                // {
                                                //     $groupWrh[$tableGudang->group]['qty'] += $gdg['qty'];
                                                // }
                                                // else
                                                // {
                                                //     $groupWrh[$tableGudang->group??$gdg['namaGudang']] = [
                                                //         'trsdetid' => $getTrsDet->trsdetid,
                                                //         'itemid' => $dataItem['ITEMID'],
                                                //         'itembatchid' =>'',
                                                //         'wrh' => $tableGudang->group??$gdg['namaGudang'],
                                                //         'qty' => $gdg['qty']   
                                                //     ];
                                                // }

                                                // $qtyOnhand += $gdg['qty'];
                                                $insertDbtTrsDet2 = DB::table('dbttrsdet2')->insert([
                                                    'trsdetid' => $getTrsDet->trsdetid,
                                                    'itemid' => $dataItem['ITEMID'],
                                                    'wrh' => $gdg['namaGudang'],
                                                    'qty' => $gdg['qty']
                                                ]);
                                                // if ($dataItem[$key] != 0) {
                                                //     $insertDbtTrsDet2 = DB::table('dbttrsdet2')->insert([
                                                //         'trsdetid' => $getTrsDet->trsdetid,
                                                //         'itemid' => $dataItem['ITEMID'],
                                                //         'wrh' => $key,
                                                //         'qty' => $dataItem[$key]
                                                //     ]);

                                                if ($insertDbtTrsDet2 == false) {
                                                    DB::rollBack();
                                                    return ['task' => "0", "message" => "Penambahan data detail impor item gagal"];
                                                    // return redirect()->route("import-stok.index")->with('error', "Penambahan data detail impor item gagal");
                                                }
                                            }
                                        }

                                        // $key = array_keys($groupWrh);
                                        // $insert = [];
                                        // foreach($key as $k)
                                        // {
                                        //     array_push($insert,$groupWrh[$k]);
                                        // }
                                        // // log::info($insert);
                                        // $insertDbtTrsDet2 = DB::table('dbttrsdet2')->insert($insert);

                                        // if ($insertDbtTrsDet2 == false) {
                                        //     DB::rollBack();
                                        //     return ['task' => "0", "message" => "Penambahan data detail impor item gagal"];
                                        //     // return redirect()->route("import-stok.index")->with('error', "Penambahan data detail impor item gagal");
                                        // }
                                    }
                                }
                            } else {
                                DB::rollBack();
                                return ['task' => "0", "message" => "Penambahan data impor item gagal"];
                                // return redirect()->route("import-stok.index")->with('error', "Penambahan data impor batch gagal");
                            }
                        }
                    }
                    if ($noexist > 0) {
                        DB::commit();
                        return ['task' => "1"];
                        // return redirect()->route("import-stok.index")->with('status', 'Berhasil melakukan impor data');
                    } else {
                        DB::rollBack();
                        return ['task' => "0", "message" => "Terdapat duplikasi data item"];
                        // return redirect()->route("import-stok.index")->with('error', "Terdapat duplikasi data batch");
                    }
                }
            }
        } else {
            if ($request->csotype == "CSO") {
                $itemId = DB::table('dbximpor')->select('itemid')->where('statusitem', '=', 'TR')->orderByDesc('createddate')->limit(1)->get();
                if (count($itemId) > 0) $itemId = $itemId[0]->itemid + 1;
                else $itemId = 9999001;

                $insertDbxImpor = DB::table('dbximpor')->insert([
                    'itemid' => $itemId,
                    'itembatchid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    // 'batchid' => '0',
                    'heatno' => trim(ucwords($request->temuanheatno)),
                    'dimension' => trim(ucwords($request->temuandimension)),
                    'kondisi' => trim(ucwords($request->temuancondition)),
                    'uom' => strtoupper($request->satuan),
                    'statusitem' => 'TR',
                    'jenis' => $request->jenis
                ]);

                if ($insertDbxImpor == true) {
                    DB::table('dbximpordet')->insert([
                        'itemid' => $itemId,
                        'wrh' => 'TEMUAN',
                        'qty' => $request->temuanstok ?? 0
                    ]);
                    
                    if ($csoActive) {
                        $insertedDbtTrsDet = [
                            "trsid" => $csoActive->trsid,
                            'itemid' => $itemId,
                            'itemname' => trim(ucwords($request->temuanname)),
                            'heatno' => trim(ucwords($request->temuanheatno)),
                            'onhand' => $request->temuanstok ?? 0,
                            'kondisi' => trim(ucwords($request->temuancondition)),
                            'dimension' => trim(ucwords($request->temuandimension)),
                            'uom' => strtoupper($request->satuan),
                            'statusitem' => 'TR',
                            'isbatch' => 0,
                            "statuscso" => 1,
                            'jenis' => $request->jenis
                        ];

                        $insertDbtTrsDet = DB::table('dbttrsdet')->insert($insertedDbtTrsDet);
                        if ($insertDbtTrsDet == true) {
                            $getTrsDet = DB::table('dbttrsdet')
                                ->select('trsdetid')
                                ->where('trsid', '=', $csoActive->trsid)
                                ->where('itemid', $itemId)
                                ->first();
                            $insertDbtTrsDet2 = DB::table('dbttrsdet2')->insert([
                                'trsdetid' => $getTrsDet->trsdetid,
                                'itemid' => $itemId,
                                'wrh' => 'TEMUAN',
                                'qty' => $request->temuanstok ?? 0
                            ]);
                        }
                    }
                    DB::commit();
                    return redirect()->route("import-stok.index", ['val' => $request->csotype])->with('status', 'Berhasil menambahkan data temuan');
                } else {
                    DB::rollBack();
                    return redirect()->route("import-stok.index", ['val' => $request->csotype])->with('error', "Gagal input data temuan");
                }
            } else if ($request->csotype == "CSS") {
                $itemId = DB::table('dbximporcss')->select('itemid')->where('statusitem', '=', 'TR')->orderByDesc('createddate')->limit(1)->get();
                if (count($itemId) > 0) $itemId = $itemId[0]->itemid + 1;
                else $itemId = 9999001;

                $insertDbxImpor = DB::table('dbximporcss')->insert([
                    'itemid' => $itemId,
                    'itembatchid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    // 'batchid' => '0',
                    'heatno' => trim(ucwords($request->temuanheatno)),
                    'dimension' => trim(ucwords($request->temuandimension)),
                    'kondisi' => trim(ucwords($request->temuancondition)),
                    'uom' => strtoupper($request->satuan),
                    'statusitem' => 'TR',
                    'jenis' => $request->jenis
                ]);

                if ($insertDbxImpor == true) {
                    DB::table('dbximpordetcss')->insert([
                        'itemid' => $itemId,
                        'wrh' => 'TEMUAN',
                        'qty' => $request->temuanstok ?? 0
                    ]);
                    
                    if ($csoActive) {
                        $insertedDbtTrsDet = [
                            "trsid" => $csoActive->trsid,
                            'itemid' => $itemId,
                            'itemname' => trim(ucwords($request->temuanname)),
                            'heatno' => trim(ucwords($request->temuanheatno)),
                            'onhand' => $request->temuanstok ?? 0,
                            'kondisi' => trim(ucwords($request->temuancondition)),
                            'dimension' => trim(ucwords($request->temuandimension)),
                            'uom' => strtoupper($request->satuan),
                            'statusitem' => 'TR',
                            'isbatch' => 0,
                            "statuscso" => 1,
                            'jenis' => $request->jenis
                        ];

                        $insertDbtTrsDet = DB::table('dbttrsdet')->insert($insertedDbtTrsDet);
                        if ($insertDbtTrsDet == true) {
                            $getTrsDet = DB::table('dbttrsdet')
                                ->select('trsdetid')
                                ->where('trsid', '=', $csoActive->trsid)
                                ->where('itemid', $itemId)
                                ->first();
                            $insertDbtTrsDet2 = DB::table('dbttrsdet2')->insert([
                                'trsdetid' => $getTrsDet->trsdetid,
                                'itemid' => $itemId,
                                'wrh' => 'TEMUAN',
                                'qty' => $request->temuanstok ?? 0
                            ]);
                        }
                    }
                    DB::commit();
                    return redirect()->route("import-stok.index", ['val' => $request->csotype])->with('status', 'Berhasil menambahkan data temuan');
                } else {
                    DB::rollBack();
                    return redirect()->route("import-stok.index", ['val' => $request->csotype])->with('error', "Gagal input data temuan");
                }
            }
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request)
    {
        //
    }

    public function showTable(Request $request)
    {
        $companyID = config('values.companyId');
        $token = Http::get('http://allapi.local.sutindo.net/getToken');
        $coycode = Company::select('coycode')->first();


        // if ($request->type == 1) {
        $getPosisiStokItem = Http::post('http://allapi.local.sutindo.net/sos/getPosisiStokItem', [
            "token" => $token['token'],
            "companyId" => $companyID,
            "whseCode" => implode(",", $request->gudang),
            "itemGroup" => $request->grouping ? implode(",", $request->grouping) : "",
            "itemName" => $request->search ?? "",
            "product" => !empty($request->product) ? implode(",", $request->product) : ''
        ]);

        $collectedData = collect($getPosisiStokItem['data'])->unique('ITEMID');

        return count($collectedData) > 0 ? response()->json([
            "status" => 1,
            "page" =>  view("admin.penjadwalan.item.table-pull-import", [
                "importedItem" => count($collectedData),
                "responseitem" => $collectedData,
                "gudang" => $request->gudang,
                "gudangcode" => implode(",", $request->gudang),
                "itemname" => $request->search ?? "",
                "typestok" => $request->typestok,
                "coy" => strtoupper(substr($coycode->coycode, 0, 3))
            ])->render()
        ]) : [
            "status" => 0
        ];
        // } else {
        //     $getPosisiStokItemBatch = Http::post('http://allapi.local.sutindo.net/sos/getPosisiStokItemBatch', [
        //         "token" => $token['token'],
        //         "companyId" => $companyID,
        //         "whseCode" => implode(",", $request->gudang),
        //         "itemName" => $request->search ?? ""
        //     ]);

        //     return view("admin.penjadwalan.item.table-pull-import-batch", [
        //         "importedBatch" => count($getPosisiStokItemBatch['data']),
        //         "responseBatch" => $getPosisiStokItemBatch['data'],
        //         "gudang" => $request->gudang,
        //         "gudangcode" => implode(",", $request->gudang),
        //         "itemname" => $request->search ?? ""
        //     ]);
        // }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ImportItem $importItem)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ImportItem $importItem)
    {
        //
    }
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        DB::beginTransaction();
        if ($request->key == "CSS") {
            $successDelete = 0;
            $idItem = "";
            if ($request->checkboxDelete != null) {
                foreach ($request->checkboxDelete as $itemId) {
                    $deleteDbxImport = DB::table('dbximporcss')->where('itemid', '=', $itemId)->delete();
                    if ($deleteDbxImport == true) {
                        DB::table('dbximpordetcss')->where('itemid', '=', $itemId)->delete();
                        $successDelete++;
                    } else {
                        $idItem = $itemId;
                        break;
                    }
                }

                if ($successDelete > 0) {
                    DB::commit();
                    return redirect()->route("import-stok.index", ['val' => 'CSS'])->with('status', 'Berhasil menghapus data item');
                } else {
                    DB::rollBack();
                    return redirect()->route("import-stok.index", ['val' => 'CSS'])->with('error', "Terdapat kegagalan dalam menghapus data dengan itembatchid $idItem");
                }
            } else {
                DB::rollBack();
                return redirect()->route("import-stok.index", ['val' => 'CSS'])->with('error', "Harap pilih item yang hendak dihapus terlebih dahulu");
            }
        } else if ($request->key == "CSO") {
            $successDelete = 0;
            $idItem = "";
            if ($request->checkboxDelete != null) {
                foreach ($request->checkboxDelete as $itemId) {
                    $deleteDbxImport = DB::table('dbximpor')->where('itemid', '=', $itemId)->delete();
                    if ($deleteDbxImport == true) {
                        DB::table('dbximpordet')->where('itemid', '=', $itemId)->delete();
                        $successDelete++;
                    } else {
                        $idItem = $itemId;
                        break;
                    }
                }

                if ($successDelete > 0) {
                    DB::commit();
                    return redirect()->route("import-stok.index", ['val' => 'CSO'])->with('status', 'Berhasil menghapus data item');
                } else {
                    DB::rollBack();
                    return redirect()->route("import-stok.index", ['val' => 'CSO'])->with('error', "Terdapat kegagalan dalam menghapus data dengan itembatchid $idItem");
                }
            } else {
                DB::rollBack();
                return redirect()->route("import-stok.index", ['val' => 'CSO'])->with('error', "Harap pilih item yang hendak dihapus terlebih dahulu");
            }
        }
    }
}
