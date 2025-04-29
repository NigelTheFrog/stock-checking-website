<?php

namespace App\Http\Controllers\Admin\Penjadwalan;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\Company;
use App\Models\Admin\Penjadwalan\ImportItem;
use Carbon\Carbon;
use Exception;
use Illuminate\Database\Query\JoinClause;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use App\Models\Admin\Master\Grade;

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

        $getGroupingItem = Http::post('http://allapi.local.sutindo.net/sos/getGroupingItem', [
            "token" => $token['token'],
            "companyId" => $companyID,
        ]);

        // dd($getWarehouse['data']);
        // $wrhData = [];
        // foreach($getWarehouse['data'] as $wrh) {
        //     $wrhData[] = $wrh['WhseCode'];
        // }
        // dd(implode(",",$wrhData)); 

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

        $grade = [];

        $tableGrade = Grade::all()->sortBy('gradecode');

        // $check = [];
        // foreach ($tableGrade as $gdg) 
        // {
        //     if($gdg->group!=NULL || $gdg->group!='')
        //     {
        //         if(in_array($gdg->group,$check)) continue;
        //             array_push($grade,['description' => $gdg->group, 'gradecode' => $gdg->group]);
        //             array_push($check,$gdg->group);
        //     }
        //     else
        //     {
        //         array_push($grade,['description' => $gdg->description, 'gradecode' => $gdg->gradecode]);
        //     }
        // }

        return view("admin.penjadwalan.import-stok", [
            "importedBatch" => 0,
            "importedItem" => 0,
            "stok" => $stok,
            "warehouse" => $getWarehouse['data'],
            "groupingItem" => $getGroupingItem['data'],
            "csoActive" => $csoActive,
            "coy" => strtoupper(substr($coycode->coycode, 0, 3)),
            "csoType" => $param->val,
            "gdg" => $tableGrade
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
        $csoActive = DB::table('dbttrshed')->where('statusdoc', '=', 'A')
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

                        $idItem = DB::table('dbximpor')->select('itemid')->where('itemid', '=', $dataItem['ITEMID'])->get();
                        if (count($idItem) == 0) {
                            // return ['task' => "0", "message" => "Item dengan id {$dataItem['ITEMID']} sudah pernah diinput"];
                            // return redirect()->route("import-stok.index")->with('error', "Item dengan id {$dataItem['ITEMID']} sudah pernah diinput");
                            // } else {
                            $getPosisiStokBatch = Http::post('http://allapi.local.sutindo.net/sos/getPosisiStokItemBatch', [
                                "token" => $token['token'],
                                "companyId" => $companyID,
                                "itemId" => $dataItem['ITEMID']
                            ]);

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
                                'itemcode' => $dataItem['itemcode'],
                                'itemname' => $dataItem['NamaItem'],
                                'productid' => $dataItem['ProductID'],
                                'productname' => $dataItem['Product'],
                                'subproductid' => $dataItem['subproductid'],
                                'subproductname' => $dataItem['SubProduct'],
                                'onhand' => str_replace(',', '', $dataItem['Onhand']),
                                'uom' => $dataItem['UOM'],
                                'cogs' => $dataItem['itemcost'],
                                'statusitem' => 'R',
                                'isbatch' => count($getPosisiStokBatch['data']) > 0 ? 1 : 0
                            ];

                            $insertDbxImpor = DB::table('dbximpor')->insert($insertedDbxImpor);

                            // dd($dataItem);

                            if ($insertDbxImpor == true) {
                                if (count($getPosisiStokBatch['data']) > 0) {
                                    // if (count($getPosisiStokItem['data']) > 1) {
                                    foreach ($getPosisiStokBatch['data'] as $valueImporBatch) {
                                        $insertDbxImporDetBatch = DB::table('dbximpordetbatch')->insert([
                                            'itemid' => $valueImporBatch['ITEMID'],
                                            'itembatchid' => $valueImporBatch['batchid'],
                                            'batchno' => $valueImporBatch['batchno'],
                                            'kondisi' => $valueImporBatch['condition'],
                                            'dimension' => $valueImporBatch['Dimension'],
                                            'heatno' => $valueImporBatch['Heatno'],
                                            'tolerance' => $valueImporBatch['Tolerance'],
                                            'gradeid' => $valueImporBatch['GradeID'],
                                            'onhandbatch' => $valueImporBatch['onhandbatch'],
                                            'onhandsecbatch' => $valueImporBatch['onhandsecbatch']

                                        ]);

                                        if ($insertDbxImporDetBatch == false) {
                                            DB::rollBack();
                                            return ['task' => "0", "message" => "Penambahan data impor gagal"];
                                            // return redirect()->route("import-stok.index")->with('error', "Penambahan data impor gagal");
                                        }
                                    }
                                }

                                // $qtyOnhand = 0;
                                foreach ($dataItem['gudang'] as $gdg) {
                                    if ($gdg['qty'] != 0) {
                                        // $qtyOnhand += $gdg['qty'];
                                        $insertDbxImporDet = DB::table('dbximpordet')->insert([
                                            'itemid' => $dataItem['ITEMID'],
                                            'wrh' => $gdg['namaGudang'],
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
                } else if ($request->csotype == "CSS") {
                    foreach ($param as $dataItem) {
                        $idItem = DB::table('dbximporcss')->select('itemid')
                            ->where('itemid', '=', $dataItem['ITEMID'])
                            ->get();

                        if (count($idItem) == 0) {
                            // return ['task' => "0", "message" => "Item dengan id {$dataItem['ITEMID']} sudah pernah diinput"];
                            // return redirect()->route("import-stok.index")->with('error', "Item dengan id {$dataItem['ITEMID']} sudah pernah diinput");
                            // } else {
                            $getPosisiStokBatch = Http::post('http://allapi.local.sutindo.net/sos/getPosisiStokItemBatch', [
                                "token" => $token['token'],
                                "companyId" => $companyID,
                                "itemId" => $dataItem['ITEMID']
                            ]);
                            // return str_replace(',','',$dataItem['Onhand']);
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
                                'itemcode' => $dataItem['itemcode'],
                                'itemname' => $dataItem['NamaItem'],
                                'productid' => $dataItem['ProductID'],
                                'productname' => $dataItem['Product'],
                                'subproductid' => $dataItem['subproductid'],
                                'subproductname' => $dataItem['SubProduct'],
                                'onhand' => str_replace(',', '', $dataItem['Onhand']),
                                'uom' => $dataItem['UOM'],
                                'cogs' => $dataItem['itemcost'],
                                'statusitem' => 'R',
                                'isbatch' => count($getPosisiStokBatch['data']) > 0 ? 1 : 0
                            ];
                            // return trim($dataItem['Onhand'],',');
                            $insertDbxImpor = DB::table('dbximporcss')->insert($insertedDbxImpor);

                            if ($insertDbxImpor == true) {

                                if (count($getPosisiStokBatch['data']) > 0) {
                                    // if (count($getPosisiStokItem['data']) > 1) {
                                    foreach ($getPosisiStokBatch['data'] as $valueImporBatch) {
                                        $insertDbxImporDetBatch = DB::table('dbximpordetbatchcss')->insert([
                                            'itemid' => $valueImporBatch['ITEMID'],
                                            'itembatchid' => $valueImporBatch['batchid'],
                                            'batchno' => $valueImporBatch['batchno'],
                                            'kondisi' => $valueImporBatch['condition'],
                                            'dimension' => $valueImporBatch['Dimension'],
                                            'heatno' => $valueImporBatch['Heatno'],
                                            'tolerance' => $valueImporBatch['Tolerance'],
                                            'gradeid' => $valueImporBatch['GradeID'],
                                            'onhandbatch' => $valueImporBatch['onhandbatch'],
                                            'onhandsecbatch' => $valueImporBatch['onhandsecbatch']

                                        ]);

                                        if ($insertDbxImporDetBatch == false) {
                                            DB::rollBack();
                                            return ['task' => "0", "message" => "Penambahan data impor gagal"];
                                            // return redirect()->route("import-stok.index")->with('error', "Penambahan data impor gagal");
                                        }
                                    }
                                }

                                // $qtyOnhand = 0;
                                foreach ($dataItem['gudang'] as $gdg) {
                                    if ($gdg['qty'] != 0) {
                                        // $qtyOnhand += $gdg['qty'];
                                        $insertDbxImporDet = DB::table('dbximpordetcss')->insert([
                                            'itemid' => $dataItem['ITEMID'],
                                            'wrh' => $gdg['namaGudang'],
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
                                        'itemcode' => $dataItem['itemcode'],
                                        'itemname' => $dataItem['NamaItem'],
                                        'onhand' => str_replace(',', '', $dataItem['Onhand']),
                                        'uom' => $dataItem['UOM'],
                                        'cogs' => $dataItem['itemcost'],
                                        'tonase' => $dataItem['tonase'],
                                        'statusitem' => 'R',
                                        'isbatch' => count($getPosisiStokBatch['data']) > 0 ? 1 : 0,
                                        "statuscso" => 1
                                    ] : [
                                        "trsid" => $csoActive->trsid,
                                        'itemid' => $dataItem['ITEMID'],
                                        'itemcode' => $dataItem['itemcode'],
                                        'itemname' => $dataItem['NamaItem'],
                                        'onhand' => str_replace(',', '', $dataItem['Onhand']),
                                        'uom' => $dataItem['UOM'],
                                        'cogs' => $dataItem['itemcost'],
                                        'statusitem' => 'R',
                                        'isbatch' => count($getPosisiStokBatch['data']) > 0 ? 1 : 0,
                                        "statuscso" => 1
                                    ];
                                    $insertDbtTrsDet = DB::table('dbttrsdet')->insert($insertedTrsDet);


                                    if ($insertDbtTrsDet == true) {
                                        $getTrsDet = DB::table('dbttrsdet')
                                            ->select('trsdetid')
                                            ->where('trsid', '=', $csoActive->trsid)
                                            ->where('itemid', $dataItem['ITEMID'])
                                            ->first();

                                        $groupWrh = [];
                                        $groupHis = [];
                                        foreach ($dataItem['gudang'] as $gdg) {
                                            if ($gdg['qty'] != 0) {
                                                $tableGudang = DB::table('dbmgrade')
                                                ->where('gradecode','=',$gdg['namaGudang'])->first();

                                                if(array_key_exists($tableGudang->group,$groupWrh))
                                                {
                                                    $groupWrh[$tableGudang->group]['qty'] += $gdg['qty'];
                                                    array_push($groupHis[$tableGudang->group],$gdg['namaGudang']);
                                                }
                                                else
                                                {
                                                    $groupWrh[$tableGudang->group??$gdg['namaGudang']] = [
                                                        'trsdetid' => $getTrsDet->trsdetid,
                                                        'itemid' => $dataItem['ITEMID'],
                                                        // 'itembatchid' =>'',
                                                        // 'wrh' => $tableGudang->group??$gdg['namaGudang'],
                                                        'wrh' => ($tableGudang->group=='' || $tableGudang->group==NULL) ? $gdg['namaGudang'] : $tableGudang->group,
                                                        'wrh_history' => '',
                                                        'qty' => $gdg['qty']   
                                                    ];
                                                    $groupHis[$tableGudang->group??$gdg['namaGudang']]=[$gdg['namaGudang']];

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
                                            $groupWrh[$k]['wrh_history']=implode(',',$groupHis[$k]);
                                            array_push($insert,$groupWrh[$k]);
                                        }
                                        // log::info($insert);
                                        $insertDbtTrsDet2 = DB::table('dbttrsdet2')->insert($insert);

                                        if ($insertDbtTrsDet2 == false) {
                                            DB::rollBack();
                                            return ['task' => "0", "message" => "Penambahan data detail impor item gagal"];
                                            // return redirect()->route("import-stok.index")->with('error', "Penambahan data detail impor item gagal");
                                        } else {
                                            if (count($getPosisiStokBatch['data']) > 1) {
                                                foreach ($getPosisiStokBatch['data'] as $valueImporBatch) {
                                                    $insertDbtTrsBatch = DB::table('dbttrsdetbatch')->insert([
                                                        'trsdetid' => $getTrsDet->trsdetid,
                                                        'itemid' => $valueImporBatch['ITEMID'],
                                                        'itembatchid' => $valueImporBatch['batchid'],
                                                        'batchno' => $valueImporBatch['batchno'],
                                                        'kondisi' => $valueImporBatch['condition'],
                                                        'dimension' => $valueImporBatch['Dimension'],
                                                        'heatno' => $valueImporBatch['Heatno'],
                                                        'tolerance' => $valueImporBatch['Tolerance'],
                                                        'gradeid' => $valueImporBatch['GradeID'],
                                                        'onhandbatch' => $valueImporBatch['onhandbatch'],
                                                        'onhandsecbatch' => $valueImporBatch['onhandsecbatch'],
                                                    ]);
                                                    if ($insertDbtTrsBatch == false) {
                                                        DB::rollBack();
                                                        return ['task' => "0", "message" => "Penambahan data detail impor batch gagal"];
                                                        // return redirect()->route("import-stok.index")->with('error', "Penambahan data impor gagal");
                                                    }
                                                }
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

                if(!is_numeric($request->temuanstok)) return redirect()->back()->with('error','QTY harus numeric');
                
                if(($request->temuanname == null || $request->temuanname == "" ) ||
                ($request->temuanstok == null || $request->temuanstok == "" ) ||
                ($request->gudang == null || $request->gudang == "" )
                ) return redirect()->back()->with('error','Nama item, QTY dan Gudang tidak boleh kosong');

                $dataWrh = explode(",",$request->gudang);

                $itemId = DB::table('dbximpor')->select('itemid')->where('statusitem', '=', 'TR')->orderByDesc('createddate')->limit(1)->get();
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
                    'statusitem' => 'TR'
                ] : [
                    'itemid' => $itemId,
                    'itembatchid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    // 'batchid' => '0',
                    'heatno' => trim(ucwords($request->temuanheatno)),
                    'dimension' => trim(ucwords($request->temuandimension)),
                    'kondisi' => trim(ucwords($request->temuancondition)),
                    'uom' => strtoupper($request->satuan),
                    'statusitem' => 'TR'
                ];

                $insertDbxImpor = DB::table('dbximpor')->insert($insertedDbxImpor);

                if ($insertDbxImpor == true) {
                    DB::table('dbximpordet')->insert([
                        'itemid' => $itemId,
                        // 'itembatchid' => $itemId,
                        // 'batchid' => '0',
                        'qty' => $request->temuanstok ?? 0,
                        'wrh' => $dataWrh[0]
                    ]);

                    if ($csoActive) {
                        $insertedDbtTrsDet = $coy == 'KKS' ? [
                            "trsid" => $csoActive->trsid,
                            'itemid' => $itemId,
                            'itemname' => trim(ucwords($request->temuanname)),
                            'heatno' => trim(ucwords($request->temuanheatno)),
                            'onhand' => $request->temuanstok ?? 0,
                            'kondisi' => trim(ucwords($request->temuancondition)),
                            'dimension' => trim(ucwords($request->temuandimension)),
                            'uom' => strtoupper($request->satuan),
                            'tonase' => strtoupper($request->temuantonase),
                            'statusitem' => 'TR',
                            'isbatch' => 0,
                            "statuscso" => 1
                        ] : [
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
                            "statuscso" => 1
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
                                'qty' => $request->temuanstok ?? 0,
                                'wrh' => $dataWrh[1] ?? $dataWrh[0],
                                'wrh_history' => $dataWrh[0]
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
                
                if(!is_numeric($request->temuanstok)) return redirect()->back()->with('error','QTY harus numeric');
                
                if(($request->temuanname == null || $request->temuanname == "" ) ||
                ($request->temuanstok == null || $request->temuanstok == "" ) ||
                ($request->gudang == null || $request->gudang == "" )
                ) return redirect()->back()->with('error','Nama item, QTY dan Gudang tidak boleh kosong');

                $dataWrh = explode(",",$request->gudang); //dataWrh[0] = gradecode , dataWrh[1] = group

                $itemId = DB::table('dbximporcss')->select('itemid')->where('statusitem', '=', 'TR')->orderByDesc('createddate')->limit(1)->get();
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
                    'statusitem' => 'TR'
                ] : [
                    'itemid' => $itemId,
                    'itembatchid' => $itemId,
                    'itemname' => trim(ucwords($request->temuanname)),
                    // 'batchid' => '0',
                    'heatno' => trim(ucwords($request->temuanheatno)),
                    'dimension' => trim(ucwords($request->temuandimension)),
                    'kondisi' => trim(ucwords($request->temuancondition)),
                    'uom' => strtoupper($request->satuan),
                    'statusitem' => 'TR'
                ];

                $insertDbxImpor = DB::table('dbximporcss')->insert($insertedDbxImpor);

                if ($insertDbxImpor == true) {
                    DB::table('dbximpordetcss')->insert([
                        'itemid' => $itemId,
                        // 'itembatchid' => $itemId,
                        // 'batchid' => '0',
                        'qty' => $request->temuanstok ?? 0,
                        'wrh' => $dataWrh[0]
                    ]);

                    if ($csoActive) {
                        $insertedDbtTrsDet = $coy == 'KKS' ? [
                            "trsid" => $csoActive->trsid,
                            'itemid' => $itemId,
                            'itemname' => trim(ucwords($request->temuanname)),
                            'heatno' => trim(ucwords($request->temuanheatno)),
                            'onhand' => $request->temuanstok ?? 0,
                            'kondisi' => trim(ucwords($request->temuancondition)),
                            'dimension' => trim(ucwords($request->temuandimension)),
                            'uom' => strtoupper($request->satuan),
                            'tonase' => strtoupper($request->temuantonase),
                            'statusitem' => 'TR',
                            'isbatch' => 0,
                            "statuscso" => 1
                        ] : [
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
                            "statuscso" => 1
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
                                'qty' => $request->temuanstok ?? 0,
                                'wrh' => $dataWrh[1] ?? $dataWrh[0],
                                'wrh_history' => $dataWrh[0]
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
            "itemName" => $request->search ?? ""
        ]);

        $collectedData = collect($getPosisiStokItem['data'])->unique('ITEMID');

        return count($collectedData) > 0 ? response()->json([
            "status" => 1,
            "page" => view("admin.penjadwalan.item.table-pull-import", [
                "importedItem" => count($collectedData),
                "responseitem" => $collectedData,
                "gudang" => $request->gudang,
                "gudangcode" => implode(",", $request->gudang),
                "itemname" => $request->search ?? "",
                "typestok" => $request->typestok,
                "coy" => strtoupper(substr($coycode->coycode, 0, 3)),
            ])->render()
        ]) : [
            "status" => 0
        ];
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
        $successDelete = 0;
        $idItem = "";
        if ($request->checkboxDelete != null)
        {
            if ($request->key == "CSS")
            {
                foreach ($request->checkboxDelete as $itemId) {
                    $deleteDbxImport = DB::table('dbximporcss')->where('itemid', '=', $itemId)->delete();
                    if ($deleteDbxImport == true) {
                        DB::table('dbximpordetcss')->where('itemid', '=', $itemId)->delete();
                        DB::table('dbximpordetbatchcss')->where('itemid', '=', $itemId)->delete();
                        $successDelete++;
                    } else {
                        $idItem = $itemId;
                        break;
                    }
                }
            }
            else if($request->key == "CSO")
            {
                foreach ($request->checkboxDelete as $itemId) {
                    $deleteDbxImport = DB::table('dbximpor')->where('itemid', '=', $itemId)->delete();
                    if ($deleteDbxImport == true) {
                        DB::table('dbximpordet')->where('itemid', '=', $itemId)->delete();
                        DB::table('dbximpordetbatch')->where('itemid', '=', $itemId)->delete();
                        $successDelete++;
                    } else {
                        $idItem = $itemId;
                        break;
                    }
                }
            }

            if ($successDelete > 0) {
                DB::commit();
                return redirect()->route("import-stok.index", ['val' => $request->key])->with('status', 'Berhasil menghapus data item');
            } else {
                DB::rollBack();
                return redirect()->route("import-stok.index", ['val' => $request->key])->with('error', "Terdapat kegagalan dalam menghapus data dengan itembatchid $idItem");
            }

        }
        else
        {
            DB::rollBack();
            return redirect()->route("import-stok.index", ['val' => $request->key])->with('error', "Harap pilih item yang hendak dihapus terlebih dahulu");
        }




        // if ($request->key == "CSS") {
        //     $successDelete = 0;
        //     $idItem = "";
        //     if ($request->checkboxDelete != null) {
        //         foreach ($request->checkboxDelete as $itemId) {
        //             $deleteDbxImport = DB::table('dbximporcss')->where('itemid', '=', $itemId)->delete();
        //             if ($deleteDbxImport == true) {
        //                 DB::table('dbximpordetcss')->where('itemid', '=', $itemId)->delete();
        //                 DB::table('dbximpordetbatchcss')->where('itemid', '=', $itemId)->delete();
        //                 $successDelete++;
        //             } else {
        //                 $idItem = $itemId;
        //                 break;
        //             }
        //         }

        //         if ($successDelete > 0) {
        //             DB::commit();
        //             return redirect()->route("import-stok.index", ['val' => 'CSS'])->with('status', 'Berhasil menghapus data item');
        //         } else {
        //             DB::rollBack();
        //             return redirect()->route("import-stok.index", ['val' => 'CSS'])->with('error', "Terdapat kegagalan dalam menghapus data dengan itembatchid $idItem");
        //         }
        //     } else {
        //         DB::rollBack();
        //         return redirect()->route("import-stok.index", ['val' => 'CSS'])->with('error', "Harap pilih item yang hendak dihapus terlebih dahulu");
        //     }
        // } else if ($request->key == "CSO") {
        //     $successDelete = 0;
        //     $idItem = "";
        //     if ($request->checkboxDelete != null) {
        //         foreach ($request->checkboxDelete as $itemId) {
        //             $deleteDbxImport = DB::table('dbximpor')->where('itemid', '=', $itemId)->delete();
        //             if ($deleteDbxImport == true) {
        //                 DB::table('dbximpordet')->where('itemid', '=', $itemId)->delete();
        //                 DB::table('dbximpordetbatch')->where('itemid', '=', $itemId)->delete();
        //                 $successDelete++;
        //             } else {
        //                 $idItem = $itemId;
        //                 break;
        //             }
        //         }

        //         if ($successDelete > 0) {
        //             DB::commit();
        //             return redirect()->route("import-stok.index", ['val' => 'CSO'])->with('status', 'Berhasil menghapus data item');
        //         } else {
        //             DB::rollBack();
        //             return redirect()->route("import-stok.index", ['val' => 'CSO'])->with('error', "Terdapat kegagalan dalam menghapus data dengan itembatchid $idItem");
        //         }
        //     } else {
        //         DB::rollBack();
        //         return redirect()->route("import-stok.index", ['val' => 'CSO'])->with('error', "Harap pilih item yang hendak dihapus terlebih dahulu");
        //     }
        // }
    }
}
