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
            ->select("itemid", "batchid as batchiddet", DB::raw('SUM(qty) as qty'))
            ->groupBy("itemid", "batchiddet");

        $avalan = DB::table('dbximporavalan')
            ->leftJoinSub($avalanBatch, 'avalanBatch', function (JoinClause $join) {
                $join->on('dbximporavalan.itemid', '=', 'avalanBatch.itemid')->on('dbximporavalan.batchid', '=', 'avalanBatch.batchiddet');
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

        if ($request->type == 1) {
            $getPosisiStokAvalan = Http::post('http://allapi.local.sutindo.net/sos/getPosisiStokAvalan', [
                "token" => $token['token'],
                "companyId" => $companyID,
                "whseCode" => $request->whs,
                "itemName" => $request->itemname ?? ""
            ]);
            $noexist = 0;

            foreach ($request->checkboxImport as $valueCheckBox) {
                foreach ($getPosisiStokAvalan['data'] as $avalan) {
                    if ($avalan['itembatchid'] == $valueCheckBox) {
                        $idItem = DB::table('dbximporavalan')->select('itemid')->where('itembatchid', '=', $avalan['itembatchid'])->get();
                        if (count($idItem) > 0) {
                            return redirect()->route("import-avalan.index")->with('error', "Avalan dengan batch id {$avalan['itembatchid']} sudah pernah diinput");
                        } else {
                            $noexist++;

                            $insertDbxImporAvalan = DB::table('dbximporavalan')->insert([
                                'itemid' => $avalan['ITEMID'],
                                'itembatchid' => $avalan['itembatchid'],
                                'itemcode' => $avalan['itemcode'],
                                'itemname' => $avalan['NamaItem'],
                                'batchid' => $avalan['batchid'],
                                'heatno' => $avalan['heatNo'],
                                'dimension' => $avalan['Dimension'],
                                'tolerance' => $avalan['tolerance'],
                                'kondisi' => $avalan['condition'],
                                'uom' => $avalan['UOM'],
                                'cogs' => $avalan['itemcost'],
                                'productid' => $avalan['ProductID'],
                                'productname' => $avalan['Product'],
                                'subproductid' => $avalan['subproductid'],
                                'subproductname' => $avalan['SubProduct'],
                                'statusitem' => 'A',
                                'isbatch' => '1'
                            ]);


                            if ($insertDbxImporAvalan == true) {
                                $keys = array_keys($avalan);
                                $count = count($keys);
                                for ($i = 17; $i < $count; $i++) {
                                    $key = $keys[$i];
                                    if ($avalan[$key] != 0) {
                                        $insertDbxImporDet = DB::table('dbximpordetavalan')->insert([
                                            'itemid' => $avalan['ITEMID'],
                                            'itembatchid' => $avalan['itembatchid'],
                                            'batchid' => $avalan['batchid'],
                                            'wrh' => $key,
                                            'qty' => $avalan[$key]
                                        ]);

                                        if ($insertDbxImporDet == false) {
                                            DB::rollBack();
                                            return redirect()->route("import-avalan.index")->with('error', "Penambahan data detail impor avalan gagal");
                                        }
                                    }
                                }
                            } else {
                                DB::rollBack();
                                return redirect()->route("import-avalan.index")->with('error', "Penambahan data impor avalan gagal");
                            }
                        }
                    }
                }
            }
            if ($noexist > 0) {
                DB::commit();
                return redirect()->route("import-avalan.index")->with('status', 'Berhasil melakukan impor avalan');
            } else {
                DB::rollBack();
                return redirect()->route("import-avalan.index")->with('error', "Terdapat duplikasi data avalan");
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

        // try {
            $getPosisiStokAvalan = Http::post('http://allapi.local.sutindo.net/sos/getPosisiStokAvalan', [
                "token" => $token['token'],
                "companyId" => $companyID,
                "whseCode" => implode(",", $request->gudang),
                "itemName" => $request->search ?? ""
            ]);
    
            return view("admin.penjadwalan.avalan.table-pull-import-avalan", [
                "importedAvalan" => count($getPosisiStokAvalan['data']),
                "responseavalan" => $getPosisiStokAvalan['data'],
                "gudang" => $request->gudang,
                "gudangcode" => implode(",", $request->gudang),
                "itemname" => $request->search ?? ""
            ]);
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
