<?php

namespace App\Http\Controllers\Admin\Penjadwalan;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\Company;
use App\Models\Admin\Penjadwalan\ImportAvalan;
use Carbon\Carbon;
use Exception;
use Illuminate\Database\Query\JoinClause;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class ImportAvalanController extends Controller
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

        if($param->val == 'CSO')
        {
            $avalanBatch = DB::table("dbximpordetavalan")
            ->select("itembatchid", "batchid as batchiddet", DB::raw('SUM(qty) as qty'))
            ->groupBy("itembatchid", "batchiddet");
            
            // $avalan = DB::table('dbximporavalan')
            // ->leftJoinSub($avalanBatch, 'avalanBatch', function (JoinClause $join) {
            //     $join->on('dbximporavalan.itemid', '=', 'avalanBatch.itemid')->on('dbximporavalan.batchid', '=', 'avalanBatch.batchiddet');
            // })->get();
            
            $avalan = DB::table('dbximporavalan')
            ->leftJoinSub($avalanBatch, 'avalanBatch', function (JoinClause $join) {
                $join->on('dbximporavalan.itembatchid', '=', 'avalanBatch.itembatchid');
            })->get();
            log::info($avalan);
        }
        else if($param->val == 'CSS')
        {
            $avalanBatch = DB::table("dbximpordetavalancss")
            ->select("itembatchid", "batchid as batchiddet", DB::raw('SUM(qty) as qty'))
            ->groupBy("itembatchid", "batchiddet");

            $avalan = DB::table('dbximporavalancss')
            ->leftJoinSub($avalanBatch, 'avalanBatch', function (JoinClause $join) {
                $join->on('dbximporavalancss.itembatchid', '=', 'avalanBatch.itembatchid')->on('dbximporavalancss.batchid', '=', 'avalanBatch.batchiddet');
            })->get();

        }
        $csoActive = DB::table('dbttrsheda')->where('statusdoc', '<>', 'P')->where('typecekstok', $param->val)->orderByDesc('trsid')->first();
        // $csoEnd = DB::table('dbttrsheda')->where('statusdoc', '=', 'E')->orderByDesc('trsid')->first();

        // $dbxCsoType = DB::table('dbxcsotype')->first();
        $coycode = Company::select('coycode')->first();

        // dd($getWarehouse['data']);
        return view("admin.penjadwalan.import-avalan", [
            "avalan" => $avalan,
            "importedAvalan" => 0,
            "warehouse" => $getWarehouse['data'],
            "csoActive" => $csoActive,
            // "csoEnd" => $csoEnd,
            "coy" => strtoupper(substr($coycode->coycode, 0, 3)),
            'csoType' => $param->val
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
        $csoActive = DB::table('dbttrsheda')->where('statusdoc', '=', 'A')
            ->where('typecekstok', $request->csotype)->orderByDesc('trsid')->first();
        // $dbxCsoType = DB::table('dbxcsotype')->where('csotype','=',$request->typestok)->first();
        $coycode = Company::select('coycode')->first();
        $coy = strtoupper(substr($coycode->coycode, 0, 3));

        if ($request->type == 1) {
            $token = Http::get('http://allapi.local.sutindo.net/getToken');
            $companyID = config('values.companyId');


            $param = json_decode($request->data, true);
            // return[$param];

            if (count($param) == 0) {
                return ['task' => "0", "message" => "Anda belum memilih item"];
            } else {

                $noexist = 0;
                if ($request->csotype == "CSO") {
                    foreach ($param as $dataItem) {

                        $idItem = DB::table('dbximporavalan')->select('itembatchid')->where('itembatchid', '=', $dataItem['itemBatchId'])->get();
                        if (count($idItem) == 0) {
                            // $getPosisiStokBatch = Http::post('http://allapi.local.sutindo.net/sos/getPosisiStokItemBatch', [
                            //     "token" => $token['token'],
                            //     "companyId" => $companyID,
                            //     "itemId" => $dataItem['ITEMID']
                            // ]);

                            $insertedDbxImpor = $coy == 'KKS' ? [
                                'itemid' => $dataItem['ITEMID'],
                                'itemcode' => $dataItem['itemcode'],
                                'itemname' => $dataItem['NamaItem'],
                                'productid' => $dataItem['ProductID'],
                                'productname' => $dataItem['Product'],
                                'subproductid' => $dataItem['subproductid'],
                                'subproductname' => $dataItem['SubProduct'],
                                'onhand' => str_replace(',', '', $dataItem['Onhand']),
                                'uom' => $dataItem['UOM'],
                                'tonase' => $dataItem['tonase'],
                                'cogs' => $dataItem['itemcost'],
                                'statusitem' => 'A',
                                'isbatch' => count($getPosisiStokBatch['data']) > 0 ? 1 : 0
                            ] : [
                                'itemid' => $dataItem['ITEMID'],
                                'itembatchid' => $dataItem['itemBatchId'],
                                'itemcode' => $dataItem['itemCode'],
                                'itemname' => $dataItem['itemName'],
                                'batchid' => $dataItem['batchId'],
                                'heatno' => $dataItem['heatNo'],
                                'dimension' => $dataItem['dimension'],
                                'tolerance' => $dataItem['tolerance'],
                                'kondisi' => $dataItem['condition'],
                                'uom' => $dataItem['uom'],
                                'cogs' =>  $dataItem['cogs'],
                                'productid' => $dataItem['productId'],
                                'productname' => $dataItem['productName'],
                                'subproductid' => $dataItem['subProductId'],
                                'subproductname' => $dataItem['subProductName'],
                                'statusitem' => 'A',
                                'isbatch' => 0,
                                'onhand' => str_replace(',', '', $dataItem['onHand'])
                            ];

                            $insertDbxImpor = DB::table('dbximporavalan')->insert($insertedDbxImpor);
                            log::info($insertDbxImpor);
                            // dd($dataItem);

                            if ($insertDbxImpor == true) {
                                // if (count($getPosisiStokBatch['data']) > 0) {
                                //     // if (count($getPosisiStokItem['data']) > 1) {
                                //     foreach ($getPosisiStokBatch['data'] as $valueImporBatch) {
                                //         $insertDbxImporDetBatch = DB::table('dbximpordetbatch')->insert([
                                //             'itemid' => $valueImporBatch['ITEMID'],
                                //             'itembatchid' => $valueImporBatch['batchid'],
                                //             'batchno' => $valueImporBatch['batchno'],
                                //             'kondisi' => $valueImporBatch['condition'],
                                //             'dimension' => $valueImporBatch['Dimension'],
                                //             'heatno' => $valueImporBatch['Heatno'],
                                //             'tolerance' => $valueImporBatch['Tolerance'],
                                //             'gradeid' => $valueImporBatch['GradeID'],
                                //             'onhandbatch' => $valueImporBatch['onhandbatch'],
                                //             'onhandsecbatch' => $valueImporBatch['onhandsecbatch']

                                //         ]);

                                //         if ($insertDbxImporDetBatch == false) {
                                //             DB::rollBack();
                                //             return ['task' => "0", "message" => "Penambahan data impor gagal"];
                                //             // return redirect()->route("import-stok.index")->with('error', "Penambahan data impor gagal");
                                //         }
                                //     }
                                // }

                                // $qtyOnhand = 0;
                                foreach ($dataItem['gudang'] as $gdg) {
                                    if ($gdg['qty'] != 0) {
                                        // $qtyOnhand += $gdg['qty'];
                                        $insertDbxImporDet = DB::table('dbximpordetavalan')->insert([
                                            'itemid' => $dataItem['ITEMID'],
                                            'wrh' => $gdg['namaGudang'],
                                            'batchid' => $dataItem['batchId'],
                                            'itembatchid' => $dataItem['itemBatchId'],
                                            'qty' => $gdg['qty']
                                        ]);

                                        if(!DB::table('dbmgrade')->where('gradecode','=',$gdg['namaGudang'])->exists())
                                        {
                                            db::table('dbmgrade')->insert([
                                                'gradecode' => $gdg['namaGudang'],
                                                'description' => $gdg['namaGudang']
                                            ]);

                                        }
                                        if ($insertDbxImporDet == true) $noexist++;
                                        else {
                                            DB::rollBack();
                                            return ['task' => "0", "message" => "Penambahan data detail impor batch gagal"];
                                            // return redirect()->route("import-stok.index")->with('error', "Penambahan data detail impor batch gagal");
                                        }
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
                else if ($request->csotype == "CSS") {
                    foreach ($param as $dataItem) {
                        $idItem = DB::table('dbximporavalancss')->select('itembatchid')
                            ->where('itembatchid', '=', $dataItem['itemBatchId'])
                            ->get();

                        if (count($idItem) == 0) {
                            // $getPosisiStokBatch = Http::post('http://allapi.local.sutindo.net/sos/getPosisiStokItemBatch', [
                            //     "token" => $token['token'],
                            //     "companyId" => $companyID,
                            //     "itemId" => $dataItem['ITEMID']
                            // ]);
                            
                            $insertedDbxImpor = $coy == 'KKS' ? [
                                'itemid' => $dataItem['ITEMID'],
                                'itemcode' => $dataItem['itemcode'],
                                'itemname' => $dataItem['NamaItem'],
                                'productid' => $dataItem['ProductID'],
                                'productname' => $dataItem['Product'],
                                'subproductid' => $dataItem['subproductid'],
                                'subproductname' => $dataItem['SubProduct'],
                                'onhand' => str_replace(',', '', $dataItem['Onhand']),
                                'uom' => $dataItem['UOM'],
                                'tonase' => $dataItem['tonase'],
                                'cogs' => $dataItem['itemcost'],
                                'statusitem' => 'R',
                                'isbatch' => count($getPosisiStokBatch['data']) > 0 ? 1 : 0
                            ] : [
                                'itemid' => $dataItem['ITEMID'],
                                'itembatchid' => $dataItem['itemBatchId'],
                                'itemcode' => $dataItem['itemCode'],
                                'itemname' => $dataItem['itemName'],
                                'batchid' => $dataItem['batchId'],
                                'heatno' => $dataItem['heatNo'],
                                'dimension' => $dataItem['dimension'],
                                'tolerance' => $dataItem['tolerance'],
                                'kondisi' => $dataItem['condition'],
                                'uom' => $dataItem['uom'],
                                'cogs' =>  $dataItem['cogs'],
                                'productid' => $dataItem['productId'],
                                'productname' => $dataItem['productName'],
                                'subproductid' => $dataItem['subProductId'],
                                'subproductname' => $dataItem['subProductName'],
                                'statusitem' => 'A',
                                'isbatch' => 0,
                                'onhand' => str_replace(',', '', $dataItem['onHand'])
                            ];
                            // return trim($dataItem['Onhand'],',');
                            $insertDbxImpor = DB::table('dbximporavalancss')->insert($insertedDbxImpor);

                            if ($insertDbxImpor == true) {

                                // if (count($getPosisiStokBatch['data']) > 0) {
                                //     // if (count($getPosisiStokItem['data']) > 1) {
                                //     foreach ($getPosisiStokBatch['data'] as $valueImporBatch) {
                                //         $insertDbxImporDetBatch = DB::table('dbximpordetbatchcss')->insert([
                                //             'itemid' => $valueImporBatch['ITEMID'],
                                //             'itembatchid' => $valueImporBatch['batchid'],
                                //             'batchno' => $valueImporBatch['batchno'],
                                //             'kondisi' => $valueImporBatch['condition'],
                                //             'dimension' => $valueImporBatch['Dimension'],
                                //             'heatno' => $valueImporBatch['Heatno'],
                                //             'tolerance' => $valueImporBatch['Tolerance'],
                                //             'gradeid' => $valueImporBatch['GradeID'],
                                //             'onhandbatch' => $valueImporBatch['onhandbatch'],
                                //             'onhandsecbatch' => $valueImporBatch['onhandsecbatch']

                                //         ]);

                                //         if ($insertDbxImporDetBatch == false) {
                                //             DB::rollBack();
                                //             return ['task' => "0", "message" => "Penambahan data impor gagal"];
                                //             // return redirect()->route("import-stok.index")->with('error', "Penambahan data impor gagal");
                                //         }
                                //     }
                                // }

                                // $qtyOnhand = 0;
                                foreach ($dataItem['gudang'] as $gdg) {
                                    if ($gdg['qty'] != 0) {
                                        // $qtyOnhand += $gdg['qty'];
                                        $insertDbxImporDet = DB::table('dbximpordetavalancss')->insert([
                                            'itemid' => $dataItem['ITEMID'],
                                            'wrh' => $gdg['namaGudang'],
                                            'batchid' => $dataItem['batchId'],
                                            'itembatchid' => $dataItem['itemBatchId'],
                                            'qty' => $gdg['qty']
                                        ]);
                                        if(!DB::table('dbmgrade')->where('gradecode','=',$gdg['namaGudang'])->exists())
                                        {
                                            db::table('dbmgrade')->insert([
                                                'gradecode' => $gdg['namaGudang'],
                                                'description' => $gdg['namaGudang']
                                            ]);

                                        }
                                        
                                        if ($insertDbxImporDet == true) $noexist++;
                                        else {
                                            DB::rollBack();
                                            return ['task' => "0", "message" => "Penambahan data detail impor batch gagal"];
                                            // return redirect()->route("import-stok.index")->with('error', "Penambahan data detail impor batch gagal");
                                        }
                                    }
                                }
                                // return 'berhasil 1';
                                if ($csoActive && $request->csotype == 'CSS') //tipecekstokcss
                                {
                                    $insertedTrsDet = $coy == 'KKS' ? [
                                        "trsid" => $csoActive->trsid,
                                        'itemid' => $dataItem['ITEMID'],
                                        'itembatchid' => $dataItem['itemBatchId'],
                                        'itemcode' => $dataItem['itemcode'],
                                        'itemname' => $dataItem['NamaItem'],
                                        'onhand' => str_replace(',', '', $dataItem['Onhand']),
                                        'uom' => $dataItem['UOM'],
                                        'cogs' => $dataItem['cogs'],
                                        'tonase' => $dataItem['tonase'],
                                        'statusitem' => 'A',
                                        'isbatch' => count($getPosisiStokBatch['data']) > 0 ? 1 : 0,
                                        "statuscso" => 1
                                    ] : [
                                        "trsid" => $csoActive->trsid,
                                        'itemid' => $dataItem['ITEMID'],
                                        'itembatchid' => $dataItem['itemBatchId'],
                                        'itemcode' => $dataItem['itemCode'],
                                        'itemname' => $dataItem['itemName'],
                                        // 'batchid' => $dataItem['batchId'],
                                        'heatno' => $dataItem['heatNo'],
                                        'dimension' => $dataItem['dimension'],
                                        'tolerance' => $dataItem['tolerance'],
                                        'kondisi' => $dataItem['condition'],
                                        'uom' => $dataItem['uom'],
                                        'cogs' =>  $dataItem['cogs'],
                                        // 'productid' => $dataItem['productId'],
                                        // 'productname' => $dataItem['productName'],
                                        // 'subproductid' => $dataItem['subProductId'],
                                        // 'subproductname' => $dataItem['subProductName'],
                                        'statusitem' => 'A',
                                        'isbatch' => 0,
                                        'onhand' => str_replace(',', '', $dataItem['onHand']),
                                        "statuscso" => 1
                                        
                                        
                                        // 'itemid' => $dataItem['ITEMID'],
                                        // 'itembatchid' => $dataItem['itemBatchId'],      
                                        // 'itemcode' => $dataItem['itemcode'],
                                        // 'itemname' => $dataItem['NamaItem'],
                                        // 'onhand' => str_replace(',', '', $dataItem['Onhand']),
                                        // 'uom' => $dataItem['UOM'],
                                        // 'cogs' => $dataItem['cogs'],
                                        // 'statusitem' => 'A',
                                        // 'isbatch' => count($getPosisiStokBatch['data']) > 0 ? 1 : 0,
                                        // "statuscso" => 1
                                    ];
                                    $insertDbtTrsDet = DB::table('dbttrsdeta')->insert($insertedTrsDet);


                                    if ($insertDbtTrsDet == true) {
                                        $getTrsDet = DB::table('dbttrsdeta')
                                            ->select('trsdetid')
                                            ->where('trsid', '=', $csoActive->trsid)
                                            ->where('itembatchid', $dataItem['itemBatchId'])
                                            ->first();

                                        $groupWrh = [];
                                        foreach ($dataItem['gudang'] as $gdg) {
                                            if ($gdg['qty'] != 0) {
                                                $tableGudang = DB::table('dbmgrade')
                                                ->where('gradecode','=',$gdg['namaGudang'])->first();
                                                if(array_key_exists($tableGudang->group,$groupWrh))
                                                {
                                                    $groupWrh[$tableGudang->group]['qty'] += $gdg['qty'];
                                                }
                                                else
                                                {
                                                    $groupWrh[$tableGudang->group??$gdg['namaGudang']] = [
                                                        'trsdetid' => $getTrsDet->trsdetid,
                                                        'itemid' => $dataItem['ITEMID'],
                                                        // 'itembatchid' =>'',
                                                        // 'wrh' => $tableGudang->group??$gdg['namaGudang'],
                                                        'wrh' => ($tableGudang->group=='' || $tableGudang->group==NULL) ? $gdg['namaGudang'] : $tableGudang->group,
                                                        'itembatchid' => $dataItem['itemBatchId'],
                                                        'qty' => $gdg['qty']   
                                                    ];
                                                }

                                                // $qtyOnhand += $gdg['qty'];
                                                // $insertDbtTrsDet2 = DB::table('dbttrsdet2')->insert([
                                                //     'trsdetid' => $getTrsDet->trsdetid,
                                                //     'itemid' => $dataItem['ITEMID'],
                                                //     'wrh' => $gdg['namaGudang'],
                                                //     'qty' => $gdg['qty']
                                                // ]);
                                                // if ($dataItem[$key] != 0) {
                                                //     $insertDbtTrsDet2 = DB::table('dbttrsdet2')->insert([
                                                //         'trsdetid' => $getTrsDet->trsdetid,
                                                //         'itemid' => $dataItem['ITEMID'],
                                                //         'wrh' => $key,
                                                //         'qty' => $dataItem[$key]
                                                //     ]);
                                            }
                                        }
                                        // log::info("test");
                                        $key = array_keys($groupWrh);
                                        $insert = [];
                                        foreach($key as $k)
                                        {
                                            array_push($insert,$groupWrh[$k]);
                                        }
                                        // log::info($insert);
                                        $insertDbtTrsDet2 = DB::table('dbttrsdet2a')->insert($insert);

                                        if ($insertDbtTrsDet2 == false) {
                                            DB::rollBack();
                                            return ['task' => "0", "message" => "Penambahan data detail impor item gagal"];
                                            // return redirect()->route("import-stok.index")->with('error', "Penambahan data detail impor item gagal");
                                        } 
                                        // else {
                                        //     if (count($getPosisiStokBatch['data']) > 1) {
                                        //         foreach ($getPosisiStokBatch['data'] as $valueImporBatch) {
                                        //             $insertDbtTrsBatch = DB::table('dbttrsdetbatch')->insert([
                                        //                 'trsdetid' => $getTrsDet->trsdetid,
                                        //                 'itemid' => $valueImporBatch['ITEMID'],
                                        //                 'itembatchid' => $valueImporBatch['batchid'],
                                        //                 'batchno' => $valueImporBatch['batchno'],
                                        //                 'kondisi' => $valueImporBatch['condition'],
                                        //                 'dimension' => $valueImporBatch['Dimension'],
                                        //                 'heatno' => $valueImporBatch['Heatno'],
                                        //                 'tolerance' => $valueImporBatch['Tolerance'],
                                        //                 'gradeid' => $valueImporBatch['GradeID'],
                                        //                 'onhandbatch' => $valueImporBatch['onhandbatch'],
                                        //                 'onhandsecbatch' => $valueImporBatch['onhandsecbatch'],
                                        //             ]);
                                        //             if ($insertDbtTrsBatch == false) {
                                        //                 DB::rollBack();
                                        //                 return ['task' => "0", "message" => "Penambahan data detail impor batch gagal"];
                                        //                 // return redirect()->route("import-stok.index")->with('error', "Penambahan data impor gagal");
                                        //             }
                                        //         }
                                        //     }
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
        } else {
            if ($request->csotype == "CSO") {
                $itemId = DB::table('dbximporavalan')->select('itembatchid')->where('statusitem', '=', 'TA')->orderByDesc('createddate')->limit(1)->get();
                if (count($itemId) > 0) $itemId = $itemId[0]->itemid + 1;
                else $itemId = 9999001;

                $insertedDbxImpor = $coy == 'KKS' ? [
                    'itemid' => $itemId,
                    'itembatchid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    // 'batchid' => '0',
                    'heatno' => trim(ucwords($request->temuanheatno)),
                    'dimension' => trim(ucwords($request->temuandimension)),
                    'kondisi' => trim(ucwords($request->temuancondition)),
                    'uom' => strtoupper($request->satuan),
                    'tonase' => strtoupper($request->temuantonase),
                    'statusitem' => 'TA'
                ] : [
                    'itemid' => $itemId,
                    'itembatchid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    // 'batchid' => '0',
                    'heatno' => trim(ucwords($request->temuanheatno)),
                    'dimension' => trim(ucwords($request->temuandimension)),
                    'kondisi' => trim(ucwords($request->temuancondition)),
                    'uom' => strtoupper($request->satuan),
                    'statusitem' => 'TA'
                ];

                $insertDbxImpor = DB::table('dbximporavalan')->insert($insertedDbxImpor);

                if ($insertDbxImpor == true) {
                    DB::table('dbximpordetavalan')->insert([
                        'itemid' => $itemId,
                        'itembatchid' => $itemId,
                        // 'batchid' => '0',
                        'qty' => $request->temuanstok ?? 0
                    ]);

                    if ($csoActive) {
                        $insertedDbtTrsDet = $coy == 'KKS' ? [
                            "trsid" => $csoActive->trsid,
                            'itemid' => $itemId,
                            'itembatchid' => $itemId,
                            'itemname' => trim(ucwords($request->temuanname)),
                            'heatno' => trim(ucwords($request->temuanheatno)),
                            'onhand' => $request->temuanstok ?? 0,
                            'kondisi' => trim(ucwords($request->temuancondition)),
                            'dimension' => trim(ucwords($request->temuandimension)),
                            'uom' => strtoupper($request->satuan),
                            'tonase' => strtoupper($request->temuantonase),
                            'statusitem' => 'TA',
                            'isbatch' => 0,
                            "statuscso" => 1
                        ] : [
                            "trsid" => $csoActive->trsid,
                            'itemid' => $itemId,
                            'itembatchid' => $itemId,
                            'itemname' => trim(ucwords($request->temuanname)),
                            'heatno' => trim(ucwords($request->temuanheatno)),
                            'onhand' => $request->temuanstok ?? 0,
                            'kondisi' => trim(ucwords($request->temuancondition)),
                            'dimension' => trim(ucwords($request->temuandimension)),
                            'uom' => strtoupper($request->satuan),
                            'statusitem' => 'TA',
                            'isbatch' => 0,
                            "statuscso" => 1
                        ];

                        $insertDbtTrsDet = DB::table('dbttrsdeta')->insert($insertedDbtTrsDet);
                        if ($insertDbtTrsDet == true) {
                            $getTrsDet = DB::table('dbttrsdeta')
                                ->select('trsdetid')
                                ->where('trsid', '=', $csoActive->trsid)
                                ->where('itembatchid', $itemId)
                                ->first();
                            $insertDbtTrsDet2 = DB::table('dbttrsdet2a')->insert([
                                'trsdetid' => $getTrsDet->trsdetid,
                                'itemid' => $itemId,
                                'itembatchid' => $itemId,
                                'qty' => $request->temuanstok ?? 0
                            ]);
                        }
                    }
                    DB::commit();
                    return redirect()->route("import-avalan.index", ['val' => $request->csotype])->with('status', 'Berhasil menambahkan data temuan');
                } else {
                    DB::rollBack();
                    return redirect()->route("import-avalan.index", ['val' => $request->csotype])->with('error', "Gagal input data temuan");
                }
            } else if ($request->csotype == "CSS") {
                $itemId = DB::table('dbximporavalancss')->select('itembatchid')->where('statusitem', '=', 'TA')->orderByDesc('createddate')->limit(1)->get();
                if (count($itemId) > 0) $itemId = $itemId[0]->itemid + 1;
                else $itemId = 9999001;

                $insertedDbxImpor = $coy == 'KKS' ? [
                    'itemid' => $itemId,
                    'itembatchid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    // 'batchid' => '0',
                    'heatno' => trim(ucwords($request->temuanheatno)),
                    'dimension' => trim(ucwords($request->temuandimension)),
                    'kondisi' => trim(ucwords($request->temuancondition)),
                    'uom' => strtoupper($request->satuan),
                    'tonase' => strtoupper($request->temuantonase),
                    'statusitem' => 'TA'
                ] : [
                    'itemid' => $itemId,
                    'itembatchid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    // 'batchid' => '0',
                    'heatno' => trim(ucwords($request->temuanheatno)),
                    'dimension' => trim(ucwords($request->temuandimension)),
                    'kondisi' => trim(ucwords($request->temuancondition)),
                    'uom' => strtoupper($request->satuan),
                    'statusitem' => 'TA'
                ];

                $insertDbxImpor = DB::table('dbximporavalancss')->insert($insertedDbxImpor);

                if ($insertDbxImpor == true) {
                    DB::table('dbximpordetavalancss')->insert([
                        'itemid' => $itemId,
                        'itembatchid' => $itemId,
                        // 'batchid' => '0',
                        'qty' => $request->temuanstok ?? 0
                    ]);

                    if ($csoActive) {
                        $insertedDbtTrsDet = $coy == 'KKS' ? [
                            "trsid" => $csoActive->trsid,
                            'itemid' => $itemId,
                            'itembatchid' => $itemId,
                            'itemname' => trim(ucwords($request->temuanname)),
                            'heatno' => trim(ucwords($request->temuanheatno)),
                            'onhand' => $request->temuanstok ?? 0,
                            'kondisi' => trim(ucwords($request->temuancondition)),
                            'dimension' => trim(ucwords($request->temuandimension)),
                            'uom' => strtoupper($request->satuan),
                            'tonase' => strtoupper($request->temuantonase),
                            'statusitem' => 'TA',
                            'isbatch' => 0,
                            "statuscso" => 1
                        ] : [
                            "trsid" => $csoActive->trsid,
                            'itemid' => $itemId,
                            'itembatchid' => $itemId,
                            'itemname' => trim(ucwords($request->temuanname)),
                            'heatno' => trim(ucwords($request->temuanheatno)),
                            'onhand' => $request->temuanstok ?? 0,
                            'kondisi' => trim(ucwords($request->temuancondition)),
                            'dimension' => trim(ucwords($request->temuandimension)),
                            'uom' => strtoupper($request->satuan),
                            'statusitem' => 'TA',
                            'isbatch' => 0,
                            "statuscso" => 1
                        ];

                        $insertDbtTrsDet = DB::table('dbttrsdeta')->insert($insertedDbtTrsDet);
                        if ($insertDbtTrsDet == true) {
                            $getTrsDet = DB::table('dbttrsdeta')
                                ->select('trsdetid')
                                ->where('trsid', '=', $csoActive->trsid)
                                ->where('itembatchid', $itemId)
                                ->first();
                            $insertDbtTrsDet2 = DB::table('dbttrsdet2a')->insert([
                                'trsdetid' => $getTrsDet->trsdetid,
                                'itemid' => $itemId,
                                'itembatchid' => $itemId,
                                'qty' => $request->temuanstok ?? 0
                            ]);
                        }
                    }
                    DB::commit();
                    return redirect()->route("import-avalan.index", ['val' => $request->csotype])->with('status', 'Berhasil menambahkan data temuan');
                } else {
                    DB::rollBack();
                    return redirect()->route("import-avalan.index", ['val' => $request->csotype])->with('error', "Gagal input data temuan");
                }
            }
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(ImportAvalan $importAvalan)
    {
        //
    }

    public function showTable(Request $request)
    {
        $companyID = config('values.companyId');
        $token = Http::get('http://allapi.local.sutindo.net/getToken');
        $coycode = Company::select('coycode')->first();
        // log::info(implode(",", $request->gudang));
                // try {
            $getPosisiStokAvalan = Http::post('http://allapi.local.sutindo.net/sos/getPosisiStokAvalan', [
                "token" => $token['token'],
                "companyId" => $companyID,
                "whseCode" => implode(",", $request->gudang),
                "itemName" => $request->search ?? ""
            ]);
            log::info($getPosisiStokAvalan);
            // @foreach ($responseavalan as $avalan)
            // {{-- @foreach ($responseavalan as $idx => $avalan) --}}
            //     {{-- <tr class="text-center" id="data_{{ $idx }}"> --}}
            //     <tr class="text-center">
            //         <td>
            //             <div class="form-check">
            //                 <input type="checkbox" name="checkboxImport[]"
            //                     class="form-check-input cekboxsemuaavalan"
            //                     value={{ $avalan['itembatchid'] }}>
            //             </div>
            //         </td>
            //         {{-- <td>{{ $idx+1 }}</td> --}}
            //         <td>{{ $avalan['NamaItem'] }}</td>
            //         <td>{{ $avalan['Product'] }}</td>
            //         <td>{{ $avalan['SubProduct'] }}</td>
            //         <td>{{ $avalan['batchno'] }}</td>
            //         <td>{{ $avalan['heatNo'] }}</td>
            //         <td>{{ $avalan['Dimension'] }}</td>
            //         <td>{{ $avalan['tolerance'] }}</td>
            //         <td>{{ $avalan['condition'] }}</td>
            //         <td>{{ number_format($avalan['Onhand'],2,'.',',') }}</td>
            //         <td>{{ $avalan['UOM'] }}</td>
            //         {{-- @if ($coy == 'KKS')
            //             <td>{{ (float)$item['tonase'] }}</td>
            //         @endif --}}
            //         @foreach ($gudang as $gdg)
            //             @if (isset($avalan[$gdg]))
            //                 <td>{{ (float) $avalan[$gdg] }}</td>
            //             @else
            //                 <td>0</td>
            //             @endif
            //         @endforeach
            // return $getPosisiStokAvalan;
            // $avalan =[[
            //     'itembatchid'=>1,
            //     'NamaItem' => 'test',
            //     'Product' => 'test',
            //     'SubProduct' => 'test',
            //     'batchno' => '101',
            //     'heatNo' => 101,
            //     'Dimension' => '10 x 12',
            //     'tolerance' => 0,
            //     'condition' => 'good',
            //     'Onhand' => 2000,
            //     'UOM' => 'KG',
            //     'SMG1' =>1,
            // ],
            // [
            //     'itembatchid'=>2,
            //     'NamaItem' => 'PLAT BESI',
            //     'Product' => 'PLAT BESI',
            //     'SubProduct' => '900',
            //     'batchno' => '102',
            //     'heatNo' => 900,
            //     'Dimension' => '111 x 12',
            //     'tolerance' => 2,
            //     'condition' => 'broken',
            //     'Onhand' => 777,
            //     'UOM' => 'KG',
            //     'SMG1' =>10,
            // ]];
            // return response()->json([
            //     "status" => 1,
            //     "page" => view("admin.penjadwalan.avalan.table-pull-import-avalan", [
            //         "importedAvalan" => 1,
            //         "responseavalan" => $avalan,
            //         "gudang" => $request->gudang,
            //         "gudangcode" => implode(",", $request->gudang),
            //         "typestok" => $request->typestok,
            //         "itemname" => $request->search ?? "",
            //         "coy" => strtoupper(substr($coycode->coycode, 0, 3)),
            //     ])->render()
            // ]);

            $collectedData = collect($getPosisiStokAvalan['data'])->unique('ITEMID');
            // return $collectedData;
            return count($collectedData) > 0 ? response()->json([
                "status" => 1,
                "page" => view("admin.penjadwalan.avalan.table-pull-import-avalan", [
                    "importedAvalan" => count($getPosisiStokAvalan['data']),
                    "responseavalan" => $getPosisiStokAvalan['data'],
                    "gudang" => $request->gudang,
                    "gudangcode" => implode(",", $request->gudang),
                    "itemname" => $request->search ?? "",
                    "typestok" => $request->typestok,
                    "coy" => strtoupper(substr($coycode->coycode, 0, 3)),
                ])->render()
            ]) : [
                "status" => 0
            ];
        // } catch (Exception $e) {
        //     return ['message'=>$e->getMessage()];
        // }
        
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ImportAvalan $importAvalan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ImportAvalan $importAvalan)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        DB::beginTransaction();
        $successDelete = 0;
        $idItem = "";
        if ($request->checkboxDelete != null) {

            if ($request->key == "CSS") 
            {
                foreach ($request->checkboxDelete as $itemBatchId) {
                    $deleteDbxImportAvalan = DB::table('dbximporavalancss')->where('itembatchid', '=', $itemBatchId)->delete();
                    if ($deleteDbxImportAvalan == true) {
                        $deleteDbxImportAvalanDet = DB::table('dbximpordetavalancss')->where('itembatchid', '=', $itemBatchId)->delete();
                        if ($deleteDbxImportAvalanDet == true) $successDelete++;
                    } else {
                        $idItem = $itemBatchId;
                        break;
                    }
                }
            }
            else if ($request->key == "CSO")
            {
                foreach ($request->checkboxDelete as $itemBatchId) {
                    $deleteDbxImportAvalan = DB::table('dbximporavalan')->where('itembatchid', '=', $itemBatchId)->delete();
                    if ($deleteDbxImportAvalan == true) {
                        $deleteDbxImportAvalanDet = DB::table('dbximpordetavalan')->where('itembatchid', '=', $itemBatchId)->delete();
                        if ($deleteDbxImportAvalanDet == true) $successDelete++;
                    } else {
                        $idItem = $itemBatchId;
                        break;
                    }
                }
            }

           

            if ($successDelete > 0) {
                DB::commit();
                return redirect()->route("import-avalan.index",['val' => $request->key])->with('status', 'Berhasil menghapus data item');
            } else {
                DB::rollBack();
                return redirect()->route("import-avalan.index",['val' => $request->key])->with('error', "Terdapat kegagalan dalam menghapus data dengan itembatchid $idItem");
            }
        } else {
            DB::rollBack();
            return redirect()->route("import-avalan.index",['val' => $request->key])->with('error', "Harap pilih avalan yang hendak dihapus terlebih dahulu");
        }
    }
}
