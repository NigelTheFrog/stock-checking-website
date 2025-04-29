<?php

namespace App\Http\Controllers\Admin\Penjadwalan;

use App\Http\Controllers\Controller;
use App\Models\Admin\Penjadwalan\ImportAvalan;
use Carbon\Carbon;
use Exception;
use Illuminate\Database\Query\JoinClause;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class ImportAvalanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        Carbon::setLocale('id');
        $avalanBatch = DB::table("dbximpordetavalan")
            ->select("itemid",  DB::raw('SUM(qty) as qty'))
            ->groupBy("itemid", );

        $avalan = DB::table('dbximporavalan')
            ->leftJoinSub($avalanBatch, 'avalanBatch', function (JoinClause $join) {
                $join->on('dbximporavalan.itemid', '=', 'avalanBatch.itemid');
            })->get();

        $csoActive = DB::table('dbttrsheda')->where('statusdoc', '=', 'A')->orderByDesc('trsid')->first();
        $csoEnd = DB::table('dbttrsheda')->where('statusdoc', '=', 'E')->orderByDesc('trsid')->first();

        $companyID = config('values.companyId');

        $token = Http::get('http://allapi.local.sutindo.net/getToken');
        $getWarehouse = Http::post('http://allapi.local.sutindo.net/sos/getWarehouse', [
            "token" => $token['token'],
            "companyId" => $companyID,
        ]);
        $dbxCsoType = DB::table('dbxcsotype')->first();

        return view("admin.penjadwalan.import-avalan", [
            "avalan" => $avalan,
            "importedAvalan" => 0,
            "warehouse" => $getWarehouse['data'],
            "csoActive" => $csoActive,
            "csoEnd" => $csoEnd,
            'csoType' => $dbxCsoType->csotype ?? ""
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
        DB::beginTransaction();
        $token = Http::get('http://allapi.local.sutindo.net/getToken');
        $companyID = config('values.companyId');
        $csoActive = DB::table('dbttrsheda')->where('statusdoc', '=', 'A')->orderByDesc('trsid')->first();
        $dbxCsoType = DB::table('dbxcsotype')->first();

        if ($request->type == 1) {

            $noexist = 0;

            foreach ($request->checkboxImport as $valueCheckBox) {

                $getPosisiStokItem = Http::post('http://allapi.local.sutindo.net/sos/getPosisiStokAvalan', [
                    "token" => $token['token'],
                    "companyId" => $companyID,
                    "whseCode" => $request->whs,
                    "itemName" => $valueCheckBox
                ]);

                $dataPosisi = collect($getPosisiStokItem['data']);
                // dd($dataPosisi);
                if (count($dataPosisi) > 1) {
                    $dataAvalan = $dataPosisi->where('ItemCode', $valueCheckBox)->first();
                    $dataAvalan['OnHand'] = 0;

                    foreach ($dataPosisi as $posisi) {
                        $dataAvalan[$posisi['whs']] = $posisi['OnHand'];
                        $dataAvalan['OnHand'] += $posisi['OnHand'];

                    }
                    $idAvalan = DB::table('dbximporavalan')->select('itemid')->where('itemid', '=', $dataAvalan['ItemCode'])->first();
                    if ($idAvalan)  return redirect()->route("import-avalan.index")->with('error', "Item {$dataAvalan['ItemName']} sudah pernah diinput");
                    else {
                        $noexist++;
                        $insertDbxImpor = DB::table('dbximporavalan')->insert([
                            'itemid' => $dataAvalan['ItemCode'],
                            'itembatchid' => $dataAvalan['ItemCode'],
                            'itemcode' => $dataAvalan['ItemCode'],
                            'itemname' => $dataAvalan['ItemName'],
                            'uom' => 'LBR',
                            'cogs' => $dataAvalan['hpp'],
                            'statusitem' => 'R',
                            'isbatch' => '0'
                        ]);
                        if ($insertDbxImpor == true) {
                            $keys = array_keys($dataAvalan);
                            $count = count($keys);
                            for ($i = 15; $i < $count; $i++) {
                                $key = $keys[$i];
                                if ($dataAvalan[$key] != 0) {
                                    $insertDbxImporDet = DB::table('dbximpordetavalan')->insert([
                                        'itemid' => $valueCheckBox,
                                        'itembatchid' => $valueCheckBox,
                                        'wrh' => $key,
                                        'qty' => $dataAvalan[$key]
                                    ]); 
                                    if ($insertDbxImporDet == false) {
                                        DB::rollBack();
                                        return redirect()->route("import-avalan.index")->with('error', "Penambahan data detail impor item gagal");
                                    }
                                }
                            }                           
                            if($csoActive && $dbxCsoType->csotype == 'CSS') {
                                    
                                $insertDbtTrsDet = DB::table('dbttrsdet')->insert([
                                    "trsid" => $csoActive->trsid, 
                                    "itemid" => $dataAvalan['ItemCode'], 
                                    "itembatchid" =>$dataAvalan['ItemCode'], 
                                    "itemcode" => $dataAvalan['ItemCode'], 
                                    "itemname" => $dataAvalan['ItemName'], 
                                    "isbatch" => '0', 
                                    "onhand" => $dataAvalan['OnHand'], 
                                    "uom" => 'LBR', 
                                    "cogs" => $dataAvalan['hpp'], 
                                    "statusitem" => 'R', 
                                    "statuscso" => 1
                                ]);
    
                                if($insertDbtTrsDet == true) {
                                    $getTrsDet = DB::table('dbttrsdet')
                                    ->select('trsdetid')
                                    ->where('trsid', '=', $csoActive->trsid)
                                    ->where('itemid',$dataAvalan['ItemCode'])
                                    ->first();
    
                                    for ($i = 15; $i < $count; $i++) {
                                        $key = $keys[$i];
                                        if ($dataAvalan[$key] != 0) {
                                            $insertDbtTrsDet2 = DB::table('dbttrsdet2')->insert([
                                                'trsdetid' => $getTrsDet->trsdetid,
                                                'itemid' => $valueCheckBox,
                                                'itembatchid' => $valueCheckBox,
                                                'wrh' => $key,
                                                'qty' => $dataAvalan[$key]
                                            ]); 
    
                                            if ($insertDbtTrsDet2 == false) {
                                                DB::rollBack();
                                                return redirect()->route("import-avalan.index")->with('error', "Penambahan data detail impor item gagal");
                                            }
                                        }
                                    }
                                }
                            }   
                        }
                    }
                } else {
                    $avalan = $dataPosisi->first();
                    $idAvalan = DB::table('dbximporavalan')->select('itemid')->where('itemid', '=', $avalan['ItemCode'])->first();

                    if ($idAvalan)  return redirect()->route("import-avalan.index")->with('error', "Avalan {$avalan['NamaItem']} sudah pernah diinput");
                    else {
                        $noexist++;
                        $insertDbxImporAvalan = DB::table('dbximporavalan')->insert([
                            'itemid' => $avalan['ItemCode'],
                            'itembatchid' => $avalan['ItemCode'],
                            'itemcode' => $avalan['ItemCode'],
                            'itemname' => $avalan['ItemName'],
                            'uom' => 'LBR',
                            'cogs' => $avalan['hpp'],
                            'statusitem' => 'R',
                            'isbatch' => '0'
                        ]);
                        if ($insertDbxImporAvalan == true) {
                            $insertDbxImporDetAvalan = DB::table('dbximpordetavalan')->insert([
                                'itemid' => $valueCheckBox,
                                'itembatchid' => $valueCheckBox,
                                'wrh' => $avalan["whs"],
                                'qty' => $avalan["OnHand"]
                            ]);

                            if ($insertDbxImporDetAvalan == false) {
                                DB::rollBack();
                                return redirect()->route("import-avalan.index")->with('error', "Penambahan data detail impor item gagal");
                            }
                            if($csoActive && $dbxCsoType->csotype == 'CSS') {
                                    
                                $insertDbtTrsDet = DB::table('dbttrsdeta')->insert([
                                    "trsid" => $csoActive->trsid, 
                                    "itemid" => $avalan['ItemCode'], 
                                    "itembatchid" =>$avalan['ItemCode'], 
                                    "itemcode" => $avalan['ItemCode'], 
                                    "itemname" => $avalan['ItemName'], 
                                    "isbatch" => '0', 
                                    "onhand" => $avalan["OnHand"], 
                                    "uom" => 'LBR', 
                                    "cogs" => $avalan['hpp'], 
                                    "statusitem" => 'R', 
                                    "statuscso" => 1
                                ]);
    
                                if($insertDbtTrsDet == true) {
                                    $getTrsDet = DB::table('dbttrsdeta')
                                    ->select('trsdetid')
                                    ->where('trsid', '=', $csoActive->trsid)
                                    ->where('itemid',$avalan['ItemCode'])
                                    ->first();
    
                                    $insertDbtTrsDet2 = DB::table('dbttrsdet2a')->insert([
                                        'trsdetid' => $getTrsDet->trsdetid,
                                        'itemid' => $valueCheckBox,
                                        'itembatchid' => $valueCheckBox,
                                        'wrh' => $avalan["whs"],
                                        'qty' => $avalan["OnHand"]
                                    ]); 
    
                                    if ($insertDbtTrsDet2 == false) {
                                        DB::rollBack();
                                        return redirect()->route("import-avalan.index")->with('error', "Penambahan data detail impor item gagal");
                                    }
                                }
                            }
                        }
                    }
                    
                }
            }
            if ($noexist > 0) {
                DB::commit();
                return redirect()->route("import-avalan.index")->with('status', 'Berhasil melakukan impor item');
            } else {
                DB::rollBack();
                return redirect()->route("import-avalan.index")->with('error', "Terdapat duplikasi data item");
            }
        } else {
            $itemId = DB::table('dbximporavalan')->select('itemid')->where('statusitem', '=', 'T')->orderByDesc('createddate')->limit(1)->get();
            if (count($itemId) > 0) $itemId = $itemId[0]->itemid + 1;
            else $itemId = 9999001;

            $insertDbxImporAvalan = DB::table('dbximporavalan')->insert([
                'itemid' => $itemId,
                'itembatchid' => $itemId,
                'itemname' => trim(ucwords($request->temuanname)),
                'batchid' => '0',
                'heatno' => trim(ucwords($request->temuanheatno)),
                'dimension' => trim(ucwords($request->temuandimension)),
                'kondisi' => trim(ucwords($request->temuancondition)),
                'uom' => strtoupper($request->satuan),
                'statusitem' => 'T'
            ]);

            if ($insertDbxImporAvalan == true) {
                DB::table('dbximpordetavalan')->insert([
                    'itemid' => $itemId,
                    'batchid' => '0',
                    'itembatchid' => $itemId,
                    'qty' => $request->temuanstok
                ]);
                DB::commit();
                return redirect()->route("import-avalan.index")->with('status', 'Berhasil menambahkan data temuan');
            } else {
                DB::rollBack();
                return redirect()->route("import-avalan.index")->with('error', "Gagal input data temuan");
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

        $getPosisiStokAvalan = Http::post('http://allapi.local.sutindo.net/sos/getPosisiStokAvalan', [
            "token" => $token['token'],
            "companyId" => $companyID,
            "whseCode" => implode(",", $request->gudang),
            "itemName" => $request->search ?? ""
        ]);

        $getPosisiStokAvalan = collect($getPosisiStokAvalan['data']);

        $posisiStokAvalan = $getPosisiStokAvalan->unique('ItemCode');

        $dataAvalan = [];

        foreach ($posisiStokAvalan as $avalan) {
            $dataTempSpecificStokAvalan = $getPosisiStokAvalan->where('ItemCode', $avalan['ItemCode']);
            if (count($dataTempSpecificStokAvalan) > 1) {
                foreach ($dataTempSpecificStokAvalan as $tmpData) {
                    $tempoRaryExistedData = collect($dataAvalan);
                    $checkExistedAvalan= $tempoRaryExistedData->where('ItemCode', $tmpData['ItemCode']);
                    if (count($checkExistedAvalan) > 0) {
                        foreach ($request->gudang as $gdg) {
                            if ($gdg == $tmpData['whs']) {
                                $dataAvalan[$checkExistedAvalan->keys()->first()][$gdg] = $tmpData['OnHand'];
                                $dataAvalan[$checkExistedAvalan->keys()->first()]['OnHand'] += $tmpData['OnHand'];
                            }
                        }
                    } else {
                        foreach ($request->gudang as $gdg) {
                            if ($gdg == $tmpData['whs']) $tmpData[$gdg] = $tmpData['OnHand'];
                        }
                        $dataAvalan[] = $tmpData;
                    }
                }
            } else {
                foreach ($request->gudang as $gdg) {
                    if ($gdg == $avalan['whs']) $avalan[$gdg] = $avalan['OnHand'];
                }
                $dataAvalan[] = $avalan;
            }
        }        

        return view("admin.penjadwalan.avalan.table-pull-import-avalan", [
            "importedAvalan" => count($dataAvalan),
            "responseavalan" => $dataAvalan,
            "gudang" => $request->gudang,
            "gudangcode" => implode(",", $request->gudang),
            "itemname" => $request->search ?? ""
        ]);
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
            // return redirect()->route("import-avalan.index")->with('status', json_encode($request->checkboxDelete));
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

            if ($successDelete > 0) {
                DB::commit();
                return redirect()->route("import-avalan.index")->with('status', 'Berhasil menghapus data item');
            } else {
                DB::rollBack();
                return redirect()->route("import-avalan.index")->with('error', "Terdapat kegagalan dalam menghapus data dengan itembatchid $idItem");
            }
        } else {
            DB::rollBack();
            return redirect()->route("import-avalan.index")->with('error', "Harap pilih avalan yang hendak dihapus terlebih dahulu");
        }
    }
}
