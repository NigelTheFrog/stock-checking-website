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
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;

class ImportItemController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $param)
    {
        Carbon::setLocale('id');
        $location = DB::table('dbmlocation')->get();
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

            $csoActive = DB::table('dbttrshed')->where('statusdoc', '<>', 'P')->where('typecekstok', $param->val)->orderByDesc('trsid')->first();
            $coycode = Company::select('coycode')->first();


            $companyID = config('values.companyId');

            $token = Http::get('http://allapi.local.sutindo.net/getToken');
            $getWarehouse = Http::post('http://allapi.local.sutindo.net/sos/getWarehouse', [
                "token" => $token['token'],
                "companyId" => $companyID,
            ]);

            return view("admin.penjadwalan.import-stok", [
                "importedBatch" => 0,
                "importedItem" => 0,
                "stok" => $stok,
                "warehouse" => $getWarehouse['data'],
                "csoActive" => $csoActive,
                "coy" => strtoupper(substr($coycode->coycode, 0, 3)),
                // "csoEnd" => $csoEnd,
                'csoType' => $param->val,
                // 'location'=> $location
                'location'=> $getWarehouse['data']
            ]);
        } else if ($param->val == "CSS") {
            $impordet = DB::table("dbximpordetcss")
                ->select("itemid as itemid", DB::raw('SUM(qty) as qty'))
                ->groupBy("itemid");

            $stok = DB::table('dbximporcss')
                ->leftJoinSub($impordet, 'impordetcss', function (JoinClause $join) {
                    $join->on('dbximporcss.itemid', '=', 'impordetcss.itemid');
                })->orderBy('itemname')
                ->get();

            $csoActive = DB::table('dbttrshed')->where('statusdoc', '<>', 'P')->where('typecekstok', $param->val)->orderByDesc('trsid')->first();
            $coycode = Company::select('coycode')->first();

            $companyID = config('values.companyId');

            $token = Http::get('http://allapi.local.sutindo.net/getToken');
            $getWarehouse = Http::post('http://allapi.local.sutindo.net/sos/getWarehouse', [
                "token" => $token['token'],
                "companyId" => $companyID,
            ]);

            $dbxCsoType = DB::table('dbxcsotype')->where('csotype', '=', $param->val)->first();

            return view("admin.penjadwalan.import-stok", [
                "importedBatch" => 0,
                "importedItem" => 0,
                "stok" => $stok,
                "warehouse" => $getWarehouse['data'],
                "csoActive" => $csoActive,
                "coy" => strtoupper(substr($coycode->coycode, 0, 3)),
                // "csoEnd" => $csoEnd,
                'csoType' => $param->val,
                'location'=> $getWarehouse['data']
            ]);
        }
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
        $param = json_decode($request->data, true);

        if ($request->type == 1) {
            if (count($param) == 0) {
                return ['task' => "0", "message" => "Anda belum memilih item"];
            } else {
                $noexist = 0;
                if ($request->csotype == "CSO") {

                    foreach ($param as $dataItem) {

                        $idItem = DB::table('dbximpor')->select('itemid')->where('itemid', '=', $dataItem['ITEMID'])->get();
                        if (count($idItem) == 0) {
                            $insertDbxImpor = DB::table('dbximpor')->insert([
                                'itemid' => $dataItem['ITEMID'],
                                'onhand' => str_replace(',', '', $dataItem['Onhand']),
                                'itembatchid' => $dataItem['ITEMID'],
                                'itemcode' => $dataItem['ITEMID'],
                                'itemname' => $dataItem['NamaItem'],
                                'uom' => $dataItem['UOM'],
                                'cogs' => $dataItem['itemcost'],
                                'statusitem' => 'R',
                                'isbatch' => '0'
                            ]);

                            if ($insertDbxImpor == true) {


                                foreach ($dataItem['gudang'] as $gdg) {

                                    if ($gdg['qty'] != 0) {
                                        // $qtyOnhand += $gdg['qty'];
                                        $insertDbxImporDet = DB::table('dbximpordet')->insert([
                                            'itemid' => $dataItem['ITEMID'],
                                            'itembatchid' => $dataItem['ITEMID'],
                                            'wrh' => $gdg['namaGudang'],
                                            // 'grade' => substr($gdg['namaGudang'],-1),
                                            'qty' => $gdg['qty']
                                        ]);

                                        $locationname = substr($gdg['namaGudang'],0,strlen($gdg['namaGudang'])-2);

                                        if(!DB::table('dbmlocation')->where('locationname','=',$locationname)->exists())
                                        {
                                            DB::table('dbmlocation')->insert([
                                                'locationcode' => '',
                                                'locationname' => $locationname,
                                                'created_by' => Auth::user()->username,
                                                'coyid' => 0,
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
                    }
                } else if ($request->csotype == "CSS") {
                    foreach ($param as $dataItem) {

                        $idItem = DB::table('dbximporcss')->select('itemid')->where('itemid', '=', $dataItem['ITEMID'])->get();
                        if (count($idItem) == 0) {
                            $insertDbxImpor = DB::table('dbximporcss')->insert([
                                'itemid' => $dataItem['ITEMID'],
                                'onhand' => str_replace(',', '', $dataItem['Onhand']),
                                'itembatchid' => $dataItem['ITEMID'],
                                'itemcode' => $dataItem['ITEMID'],
                                'itemname' => $dataItem['NamaItem'],
                                'uom' => $dataItem['UOM'],
                                'cogs' => $dataItem['itemcost'],
                                'statusitem' => 'R',
                                'isbatch' => '0'
                            ]);

                            if ($insertDbxImpor == true) {
                                foreach ($dataItem['gudang'] as $gdg) {
                                    if ($gdg['qty'] != 0) {
                                        $insertDbxImporDet = DB::table('dbximpordetcss')->insert([
                                            'itemid' => $dataItem['ITEMID'],
                                            'itembatchid' => $dataItem['ITEMID'],
                                            'wrh' => $gdg['namaGudang'],
                                            // 'grade' => substr($gdg['namaGudang'],-1),
                                            'qty' => $gdg['qty']
                                        ]);
                                        $locationname = substr($gdg['namaGudang'],0,strlen($gdg['namaGudang'])-2);
                                        // return $locationname;
                                        // return DB::table('dbmlocation')->where('locationname','=','B52')->exists();
                                        // return $locationname;

                                        if(!DB::table('dbmlocation')->where('locationname','=',$locationname)->exists())
                                        {
                                            DB::table('dbmlocation')->insert([
                                                'locationcode' => '',
                                                'locationname' => $locationname,
                                                'created_by' => Auth::user()->username,
                                                'coyid' => 0,
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

                                if ($csoActive && $request->csotype == 'CSS') {
                                    $insertDbtTrsDet = DB::table('dbttrsdet')->insert([
                                        "trsid" => $csoActive->trsid,
                                        'itemid' => $dataItem['ITEMID'],
                                        'itemcode' => $dataItem['ITEMID'],
                                        'itemname' => $dataItem['NamaItem'],
                                        'onhand' => str_replace(',', '', $dataItem['Onhand']),
                                        'uom' => $dataItem['UOM'],
                                        'cogs' => $dataItem['itemcost'],
                                        'statusitem' => 'R',
                                        'isbatch' =>  0,
                                        "statuscso" => 1
                                    ]);

                                    if ($insertDbtTrsDet == true) {
                                        $getTrsDet = DB::table('dbttrsdet')
                                            ->select('trsdetid')
                                            ->where('trsid', '=', $csoActive->trsid)
                                            ->where('itemid', $dataItem['ITEMID'])
                                            ->first();

                                        foreach ($dataItem['gudang'] as $gdg) {
                                            if ($gdg['qty'] != 0) {
                                                // $qtyOnhand += $gdg['qty'];
                                                $insertDbtTrsDet2 = DB::table('dbttrsdet2')->insert([
                                                    'trsdetid' => $getTrsDet->trsdetid,
                                                    'itemid' => $dataItem['ITEMID'],
                                                    'itembatchid' => $dataItem['ITEMID'],
                                                    'wrh' => $gdg['namaGudang'],
                                                    // 'grade' => substr($gdg['namaGudang'],-1),
                                                    'qty' => $gdg['qty']
                                                ]);

                                                if ($insertDbtTrsDet2 == false) {
                                                    DB::rollBack();
                                                    return ['task' => "0", "message" => "Penambahan data detail impor item gagal"];
                                                    // return redirect()->route("import-stok.index")->with('error', "Penambahan data detail impor item gagal");
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
                    'batchid' => '0',
                    'heatno' => trim(ucwords($request->temuanheatno)),
                    'dimension' => trim(ucwords($request->temuandimension)),
                    'kondisi' => trim(ucwords($request->temuancondition)),
                    'uom' => strtoupper($request->satuan),
                    'statusitem' => 'TR'
                ]);

                if ($insertDbxImpor == true) {
                    DB::table('dbximpordet')->insert([
                        'itemid' => $itemId,
                        'itembatchid' => $itemId,
                        'wrh' => $request->lokasi,
                        'batchid' => '0',
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
                                'wrh' => $request->lokasi,
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
                    'batchid' => '0',
                    'heatno' => trim(ucwords($request->temuanheatno)),
                    'dimension' => trim(ucwords($request->temuandimension)),
                    'kondisi' => trim(ucwords($request->temuancondition)),
                    'uom' => strtoupper($request->satuan),
                    'statusitem' => 'TR'
                ]);

                if ($insertDbxImpor == true) {
                    DB::table('dbximpordetcss')->insert([
                        'itemid' => $itemId,
                        'itembatchid' => $itemId,
                        'wrh' => $request->lokasi,
                        'batchid' => '0',
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
                                'wrh' => $request->lokasi,
                                'itemid' => $itemId,
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

        $getPosisiStokItem = Http::post('http://allapi.local.sutindo.net/sos/getPosisiStokItem', [
            "token" => $token['token'],
            "companyId" => $companyID,
            "whseCode" => implode(",", $request->gudang),
            "itemName" => $request->search ?? ""
        ]);

        $getPosisiStokItem = collect($getPosisiStokItem['data']);

        $posisiStokItem = $getPosisiStokItem->unique('ItemCode');

        $dataItem = [];

        foreach ($posisiStokItem as $item) {
            $dataTempSpecificStokItem = $getPosisiStokItem->where('ItemCode', $item['ItemCode']);
            $tempItem = [];
            $onHandAllWrh = 0;
            foreach ($dataTempSpecificStokItem as $tmpData) {
                if (count($tempItem) == 0) {
                    $tempItem = $tmpData;
                }
                $onHandAllWrh += $tmpData['OnHand'];
                $tempItem[preg_replace('/\s+/', '', $tmpData['whs'])] = $tmpData['OnHand'];
                
            }
            $tempItem['OnHandAllWrh'] = $onHandAllWrh;
            array_push($dataItem,$tempItem);
        }

        return view("admin.penjadwalan.item.table-pull-import", [
            "importedItem" => count($dataItem),
            "responseitem" => $dataItem,
            "gudang" => $request->gudang,
            "gudangcode" => implode(",", $request->gudang),
            "itemname" => $request->search ?? "",
            "typestok" => $request->typestok
        ]);
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
                        // DB::table('dbximpordetbatch')->where('itemid', '=', $itemId)->delete();
                        $successDelete++;
                    } else {
                        $idItem = $itemId;
                        break;
                    }
                }
                // foreach ($request->checkboxDelete as $itemBatchId) {
                //     $deleteDbxImport = DB::table('dbximpor')->where('itembatchid', '=', $itemBatchId)->delete();
                //     if ($deleteDbxImport == true) {
                //         DB::table('dbximpordet')->where('itembatchid', '=', $itemBatchId)->delete();
                //         $successDelete++;
                //     } else {
                //         $idItem = $itemBatchId;
                //         break;
                //     }
                // }

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
