<?php

namespace App\Http\Controllers\Admin\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\Admin\Dashboard\Item;
use App\Models\Admin\Master\Company;
use App\Models\Admin\Master\Group;
use App\Models\Admin\Master\KeteranganCSOUlang;
use App\Models\Admin\Penjadwalan\ImportItem;
use App\Models\ViewDashboard;
use Barryvdh\DomPDF\PDF;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use \NumberFormatter;
use Carbon\Carbon;
use Illuminate\Database\Query\JoinClause;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Log;


class ItemController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $param)
    {
        $item = collect(DB::select('CALL Dashboard()'))->where('typecekstok',$param->val);

        $checkCsoActive = DB::table('dbttrshed')->where('dbttrshed.statusdoc', '=', 'A')
        ->where('typecekstok',$param->val)->orderByDesc('trsid')->limit(1)->get();

        $checkCsoEnd = DB::table('dbttrshed')->where('dbttrshed.statusdoc', '=', 'E')
        ->where('typecekstok',$param->val)->orderByDesc('trsid')->limit(1)->get();

        $checkCsoFinal = DB::table('dbttrshed')->where('statusdoc', '=', 'P')
        ->where('typecekstok',$param->val)->orderByDesc('trsid')->limit(1)->get();

        $getCsoDate = DB::table('dbttrshed')->select('startcsodate')->where('statusdoc', '!=', 'P')
        ->where('typecekstok',$param->val)->orderByDesc('trsid')->limit(1)->get();

        if (count($getCsoDate) > 0) {
            $csoDate = Carbon::parse($getCsoDate[0]->startcsodate)->format('d M Y');
        } else {
            $csoDate = "Belum ada tanggal ".$param->val;
        }

        $checkAnalisator = $item->where('analisatorid','<>',null);
        $itemBlmProses = $item->where('status', '=', '0')->where('typecekstok', $param->val);

        $itemOk = $item->where('status', '=', '3');
        $itemSelisihPlus = $item->where('status', '=', '2')->where('typecekstok',$param->val);
        $itemSelisihMinus = $item->where('status', '=', '1')->where('typecekstok',$param->val);

        $dbxjob = DB::table('dbxjob')->where('jobtypeid', '=', 2)->where('typecekstok',$param->val)->get();
        $group = Group::all();
        $keterangan = KeteranganCSOUlang::all();
        $coycode = Company::select('coycode')->first();

        // $getBatchItem = DB::table('dbttrsdetbatch')->where('trsdetid','=','37')->get();
        // dd($getBatchItem);

        $companyID = config('values.companyId');

        $token = Http::get('http://allapi.local.sutindo.net/getToken');
        $getWarehouse = Http::post('http://allapi.local.sutindo.net/sos/getWarehouse', [
            "token" => $token['token'],
            "companyId" => $companyID,
        ]);

        if(!empty($param->search))
        {
            $items=$item->toArray();
            $item = array_filter($items, function ($data) use ($param) {
                return (stripos($data->itemname, $param->search) !== false ||
                    stripos($data->itemcode, $param->search) !== false ||
                    stripos($data->itemid, $param->search) !== false ||
                    stripos($data->analisator, $param->search) !== false ||
                    stripos($data->analisatorid, $param->search) !== false ||
                    stripos($data->statusname, $param->search) !== false);
            });
        }

        return view("admin.dashboard.item", [
            'countCsoActive' => count($checkCsoActive),
            'countCsoEnd' => count($checkCsoEnd),
            'countCsoFinal' => count($checkCsoFinal),
            'item' => collect($item)->sortBy('itemname'),
            "countItemBlmProses" => count($itemBlmProses),
            "itemBlmProses" => $itemBlmProses,
            "countItemOk" => count($itemOk),
            "itemSelesai" => $itemOk,
            "countItemSelisih" => (count($itemSelisihPlus) + count($itemSelisihMinus)),
            "itemSelisihPlus" => $itemSelisihPlus,
            "itemSelisihMinus" => $itemSelisihMinus,
            "dbxjob" => $dbxjob,
            "dbmgroup" => $group,
            "csodate" => $csoDate,
            "warehouse" => $getWarehouse['data'],
            "keteranganCSOUlang" => $keterangan,
            'valuePlus' => '',
            'valueMinus' => '',
            'filter' => 0,
            'search'=>$param->search ?? '',
            'typecekstok' => $param->val,
            "coy" => strtoupper(substr($coycode->coycode, 0, 3)),
            "coyCode" => str_replace(" ","",$coycode->coycode),
            'countAnalisator' => count($checkAnalisator)
        ]);
    }

    public function checkItemBlmProses()
    {
        $item = collect(DB::select('CALL Dashboard()'));
        $itemBlmProsescss = $item->where('status', '=', '0')->where('typecekstok','=','CSS');
        $itemBlmProsescso = $item->where('status', '=', '0')->where('typecekstok','=','CSO');

        return response()->json(['cso' => count($itemBlmProsescso),'css'=>count($itemBlmProsescss)]);
    }

    public function showBanner(Request $request) //done
    {

        $items = collect(DB::select('CALL Dashboard()'))->where('typecekstok',$request->typecekstok);
        $itemBlmProses = $items->where('status', '=', '0')->where('typecekstok',$request->typecekstok);
        $itemOk = $items->where('status', '=', '3')->where('typecekstok',$request->typecekstok);
        $itemSelisihPlus = $items->where('status', '=', '2')->where('typecekstok',$request->typecekstok);
        $itemSelisihMinus = $items->where('status', '=', '1')->where('typecekstok',$request->typecekstok);

        return view("admin.dashboard.banner.banner-item", [

            "countItemBlmProses" => count($itemBlmProses),
            "countItemOk" => count($itemOk),
            "countItemSelisih" => count($itemSelisihPlus) + count($itemSelisihMinus)
        ]);
    }

    public function updateGroupingAndAnalisatorItem(Request $request)
    {
        if ($request->isSelisih == 0) {
            $idx=0;
            if ($request->group) {
                foreach ($request->group as $group) {
                    if ($group != null) {
                        $data = explode(",", $group);
                        DB::table('dbttrsdet')
                            ->where('dbttrsdet.trsdetid', '=', $data[0])
                            ->update([
                                'groupid' => $data[1],
                                'group_value' => $request->groupValueBanner[$idx]
                            ]);
                        $idx += 1;
                    }
                }
            }
            if ($request->analisator) {
                foreach ($request->analisator as $analisator) {
                    if ($analisator != null) {
                        $data = explode(",", $analisator);
                        DB::table('dbttrsdet')
                            ->where('dbttrsdet.trsdetid', '=', $data[0])
                            ->update(['analisatorid' => $data[1]]);
                    }
                }
            }
        } else {
            if ($request->groupplus) {
                $idx = 0;
                foreach ($request->groupplus as $group) {
                    if ($group != null) {
                        $data = explode(",", $group);
                        DB::table('dbttrsdet')
                            ->where('dbttrsdet.trsdetid', '=', $data[0])
                            ->update([
                                'groupid' => $data[1],
                                'group_value' => $request->groupValuePlus[$idx]
                            ]);
                        $idx += 1;
                    }
                }
            }
            if ($request->analisatorplus) {
                foreach ($request->analisatorplus as $analisator) {
                    if ($analisator != null) {
                        $data = explode(",", $analisator);
                        DB::table('dbttrsdet')
                            ->where('dbttrsdet.trsdetid', '=', $data[0])
                            ->update(['analisatorid' => $data[1]]);
                    }
                }
            }
            if ($request->groupminus) {
                $idx = 0;
                foreach ($request->groupminus as $group) {
                    if ($group != null) {
                        $data = explode(",", $group);
                        DB::table('dbttrsdet')
                            ->where('dbttrsdet.trsdetid', '=', $data[0])
                            ->update([
                                'groupid' => $data[1],
                                'group_value' => $request->groupValueMinus[$idx]
                            ]);
                        $idx += 1;
                    }
                }
            }
            if ($request->analisatorminus) {
                foreach ($request->analisatorminus as $analisator) {
                    if ($analisator != null) {
                        $data = explode(",", $analisator);
                        DB::table('dbttrsdet')
                            ->where('dbttrsdet.trsdetid', '=', $data[0])
                            ->update(['analisatorid' => $data[1]]);
                    }
                }
            }
        }
        return redirect()->route("item.index",['val'=>$request->typecekstok])->with('status', "Berhasil memperbarui data pada banner");
    }

    public function print(Request $request) //done
    {

        $pdf = App::make('dompdf.wrapper');
        $item = collect(DB::select('CALL Dashboard()'))->where('typecekstok',$request->typecekstok);

        if ($request->status == "1") {
            
            $data = $item->where('status', '=', '0');

            $view = view("admin.dashboard.pdf-item", ["itemBlmProses" => $data, "type" => 1]);
        } elseif ($request->status == "3") {
            
            $data = $item->where('status', '=', '3');

            $view = view("admin.dashboard.pdf-item", ["itemSelesai" => $data, "type" => 3]);
        } else {

            $dataPlus = $item->where('status', '=', '2');
            $dataMinus = $item->where('status', '=', '1');

            $view = view("admin.dashboard.pdf-item", ["itemSelisihPlus" => $dataPlus, "itemSelisihMinus" => $dataMinus, "type" => 4]);
        }
        $pdf->loadHTML($view);
        return $pdf->stream();
    }

    public function showMainTable(Request $request)
    {
        $items = DB::select('CALL Dashboard()');
        $coycode = Company::select('coycode')->first();
        $filteredItems = array_filter($items, function ($data) use ($request) {
            return ($data->typecekstok ==  $request->typecekstok) && (stripos($data->itemname, $request->search) !== false ||
                stripos($data->itemcode, $request->search) !== false ||
                stripos($data->itemid, $request->search) !== false ||
                stripos($data->analisator, $request->search) !== false ||
                stripos($data->analisatorid, $request->search) !== false ||
                stripos($data->statusname, $request->search) !== false);
        });

        $checkAnalisator = collect($filteredItems)->where('analisatorid','<>',null);

        switch ($request->filter) {
            case 1:
                $data = collect($filteredItems)->sortBy('itemname');
                break;
            case 2:
                $data = collect($filteredItems)->sortByDesc('itemname');
                break;
            case 3:
                $data = collect($filteredItems)->sortBy('statusname');
                break;
            case 4:
                $data = collect($filteredItems)->sortByDesc('statusname');
                break;
            case 5:
                $data = collect($filteredItems)->sortBy('selisih');
                break;
            case 6:
                $data = collect($filteredItems)->sortByDesc('selisih');
                break;
            case 7:
                $data = collect($filteredItems)->sortBy('onhand');
                break;
            case 8:
                $data = collect($filteredItems)->sortByDesc('onhand');
                break;
            case 9:
                $data = collect($filteredItems)->sortBy('totalcso');
                break;
            case 10:
                $data = collect($filteredItems)->sortByDesc('totalcso');
                break;
            case 11:
                $data = collect($filteredItems)->sortBy('koreksi');
                break;
            case 12:
                $data = collect($filteredItems)->sortByDesc('koreksi');
                break;
            case 13:
                $data = collect($filteredItems)->sortBy('deviasi');
                break;
            case 14:
                $data = collect($filteredItems)->sortByDesc('deviasi');
                break;
            case 15:
                $data = collect($filteredItems)->sortBy('statuscso');
                break;
            case 16:
                $data = collect($filteredItems)->sortByDesc('statuscso');
                break;
            case 17:
                $data = collect($filteredItems)->sortBy('groupdesc');
                break;
            case 18:
                $data = collect($filteredItems)->sortByDesc('groupdesc');
                break;
            case 19:
                $data = collect($filteredItems)->sortBy('supanalisatorplier');
                break;
            case 20:
                $data = collect($filteredItems)->sortByDesc('analisator');
                break;
            case 21:
                $data = collect($filteredItems)->where('status', 0);
                break;
            case 22:
                $data = collect($filteredItems)->whereBetween('status', [1, 2]);
                break;
            case 23:
                $data = collect($filteredItems)->where('status', 1);
                break;
            case 24:
                $data = collect($filteredItems)->where('status', 2);
                break;
            case 25:
                $data = collect($filteredItems)->where('status', 3);
                break;
            default:
                $data = collect($filteredItems)->sortBy('itemname');
        }
        // $itemName = array();
        // foreach ($filteredItems as $key => $row) {
        //     $itemName[$key] = $row->itemname;
        // }
        // $testtt = 0;
        // if ($request->filter == 1) {
        //     array_multisort($itemName, SORT_ASC, $filteredItems);
        // } else if ($request->filter == 2) {
        //     array_multisort($itemName, SORT_DESC, $filteredItems);
        // }

        $object = view("admin.dashboard.table.item.main-table-item", 
        ["item" => $data, 
        "filter" => $request->filter, 
        "coy" => strtoupper(substr($coycode->coycode, 0, 3)),
        'typecekstok' => $request->typecekstok
        ]);

        return ['view' => (string) $object, 
        'countAnalisator' => count($checkAnalisator)];
    }



    public function showBannerTable(String $request)
    {
        $item = collect(DB::select('CALL Dashboard()'));
        $dbxjob = DB::table('dbxjob')->where('jobtypeid', '=', 2)->get();
        $group = Group::all();

        if ($request == "1") {
            $itemBlmProses = $item->where('status', '=', '0');
            $view = view("admin.dashboard.table.item.item-belum-proses", [
                "itemBlmProses" => $itemBlmProses,
                "dbxjob" => $dbxjob,
                "dbmgroup" => $group
            ]);
        }
        // else if ($request == '2') {
        //     $itemSdgProses = array_filter($item, function ($data) {
        //         return $data->status != '0' && $data->status != '3';
        //     });

        //     $view = view("admin.dashboard.table.item.item-sedang-proses", [
        //         "itemSdgProses" => $itemSdgProses,
        //         "dbxjob" => $dbxjob,
        //         "dbmgroup" => $group
        //     ]);
        // } 
        else if ($request == '3') {
            $itemOk = $item->where('status', '=', '3');
            $view = view("admin.dashboard.table.item.item-ok", [
                "itemSelesai" => $itemOk,
                "dbxjob" => $dbxjob,
                "dbmgroup" => $group
            ]);
        } else {

            $itemSelisihPlus = $item->where('status', '=', '2');
            $itemSelisihMinus = $item->where('status', '=', '1');

            $view = view("admin.dashboard.table.item.item-selisih", [
                "itemSelisihPlus" => $itemSelisihPlus,
                "itemSelisihMinus" => $itemSelisihMinus,
                "dbxjob" => $dbxjob,
                "dbmgroup" => $group
            ]);
        }
        return $view;
    }
    /**
     * Show the form for creating a new resource.
     */
    public function create() {}

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request) //done
    {
        DB::beginTransaction();
        if($request->typecekstok=='CSO')
        {
            $checkDbxImport = ImportItem::all();

        if (count($checkDbxImport) > 0) {
            $checkCsoMaterial = DB::table('dbxmaterial')->where('typecekstok',$request->typecekstok)->limit(1)->get();
            $checkCsoType = DB::table('dbxcsotype')->where('csotype',$request->typecekstok)->limit(1)->get();
            $getCoy = Company::select('coycode')->first();
            $coy = strtoupper(substr($getCoy->coycode, 0, 3));

            if (count($checkCsoMaterial) > 0 && count($checkCsoType) > 0) {
                $checkMonth = DB::table('dbttrshed')
                    ->select(DB::raw("DATE_FORMAT(startcsodate, '%m') as monthbefore"), 'idxno')->where('typecekstok',$request->typecekstok)
                    ->orderByDesc('trsid')
                    ->limit(1)
                    ->get();
                $idxno = 0;

                if (count($checkMonth) > 0 && $checkMonth[0]->monthbefore == Carbon::now()->month) {
                    $idxno = $checkMonth[0]->idxno + 1;
                } else {
                    $idxno = 1;
                }
                $today = Carbon::now()->format('Y-m-d');

                $doccsoid = "{$checkCsoType[0]->csotype}{$getCoy->coycode}{$today}-{$idxno}";

                $insertDbttrshed = DB::table('dbttrshed')->insert([
                    'doccsoid' => $doccsoid,
                    'startcsodate' => $today,
                    'idxno' => $idxno,
                    'typecekstok' => $checkCsoType[0]->csotype,
                    'csomaterial' => $checkCsoMaterial[0]->csomaterial,
                    'statusdoc' => 'A'
                ]);

                if ($insertDbttrshed == true) {
                    $getTrsHedId = DB::table('dbttrshed')->select('trsid')->where('statusdoc', '=', 'A')
                    ->where('typecekstok',$request->typecekstok)->first();
                    $selectDbxImporDet = DB::table('dbximpordet')->select('itemid', DB::raw('sum(qty)as qty'))->groupBy('itemid');

                    $selectDbxImpor = DB::table('dbximpor')
                        ->leftJoinSub($selectDbxImporDet, 'dbximpordet', function (JoinClause $join) {
                            $join->on('dbximpor.itemid', '=', 'dbximpordet.itemid');
                        })
                        ->select([
                            DB::raw($getTrsHedId->trsid),
                            "dbximpor.itemid",
                            "dbximpor.itembatchid",
                            "itemcode",
                            "itemname",
                            "heatno",
                            "dimension",
                            "tolerance",
                            "kondisi",
                            "qty",
                            "uom",
                            "cogs",
                            "statusitem",
                            "isbatch",
                            DB::raw(1)
                        ]);

                    $insertDbttrsdet = DB::table('dbttrsdet')->insertUsing(["trsid", "itemid", "itembatchid", "itemcode", "itemname", "heatno", "dimension", "tolerance", "kondisi", "onhand", "uom", "cogs", "statusitem", "isbatch", "statuscso"], $selectDbxImpor);

                    if ($insertDbttrsdet == true) {
                        $getTrsDet2 = DB::table('dbttrsdet')
                            ->join('dbttrshed', 'dbttrshed.trsid', '=', 'dbttrsdet.trsid')
                            ->select('trsdetid', 'itemid', 'itembatchid')
                            ->where('dbttrshed.statusdoc', '=', 'A')->where('dbttrshed.typecekstok',$request->typecekstok)
                            ->get();
                            

                        foreach ($getTrsDet2 as $trsDet2) {
                            $selectDbxImporDet2 = DB::table('dbximpordet')
                                ->select(DB::raw($trsDet2->trsdetid), "itemid", "itembatchid", "wrh", "qty")
                                ->where('itemid', '=', $trsDet2->itemid);
                            // dd($selectDbxImporDet2->get());

                            // $insertDbtTrsdet2 = 
                            DB::table('dbttrsdet2')->insertUsing(["trsdetid", "itemid", "itembatchid", "wrh", "qty"], $selectDbxImporDet2);

                            // if ($insertDbtTrsdet2 == false) {
                            //     DB::rollBack();
                            //     return redirect()->route("item.index",['val'=>$request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                            // }
                        }

                        DB::table('dbtcsoprsn')
                            ->where('trsid', '=', $getTrsHedId->trsid)
                            ->update(["status" => "P"]);

                        $finalise = DB::table("dbxsetdate")->insert(["date" => Carbon::now(), "tipe" => "I",'typecekstok'=>$request->typecekstok]);
                        if ($finalise == true) {
                            DB::commit();
                                return redirect()->route("item.index",['val'=>$request->typecekstok])->with('status', "Berhasil memulai CSO");
                        } else {
                            DB::rollBack();
                                return redirect()->route("item.index",['val'=>$request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                        }
                    } else {
                        DB::rollBack();
                            return redirect()->route("item.index",['val'=>$request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                    }
                } else {
                    DB::rollBack();
                        return redirect()->route("item.index",['val'=>$request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                }
            } else {
                DB::rollBack();
                    return redirect()->route("pengaturan.index",['val'=>$request->typecekstok])->with('error', "Harap lakukan input tipe CSO dan Materialnya terlebih dahulu");
            }
        } else {
            DB::rollBack();
                return redirect()->route("import-stok.index",['val'=>$request->typecekstok])->with('error', "Harap lakukan import item terlebih dahulu");
        }

        }
        else if($request->typecekstok=='CSS')
        {
            $checkDbxImport = DB::table('dbximporcss')->get();
        if (count($checkDbxImport) > 0) {
            $checkCsoMaterial = DB::table('dbxmaterial')->where('typecekstok',$request->typecekstok)->limit(1)->get();
            $checkCsoType = DB::table('dbxcsotype')->where('csotype',$request->typecekstok)->limit(1)->get();
            $getCoy = Company::select('coycode')->first();
            $coy = strtoupper(substr($getCoy->coycode, 0, 3));

            if (count($checkCsoMaterial) > 0 && count($checkCsoType) > 0) {
                $checkMonth = DB::table('dbttrshed')
                    ->select(DB::raw("DATE_FORMAT(startcsodate, '%m') as monthbefore"), 'idxno')->where('typecekstok',$request->typecekstok)
                    ->orderByDesc('trsid')
                    ->limit(1)
                    ->get();
                $idxno = 0;

                if (count($checkMonth) > 0 && $checkMonth[0]->monthbefore == Carbon::now()->month) {
                    $idxno = $checkMonth[0]->idxno + 1;
                } else {
                    $idxno = 1;
                }
                $today = Carbon::now()->format('Y-m-d');

                $doccsoid = "{$checkCsoType[0]->csotype}{$getCoy->coycode}{$today}-{$idxno}";

                $insertDbttrshed = DB::table('dbttrshed')->insert([
                    'doccsoid' => $doccsoid,
                    'startcsodate' => $today,
                    'idxno' => $idxno,
                    'typecekstok' => $checkCsoType[0]->csotype,
                    'csomaterial' => $checkCsoMaterial[0]->csomaterial,
                    'statusdoc' => 'A'
                ]);

                if ($insertDbttrshed == true) {
                    $getTrsHedId = DB::table('dbttrshed')->select('trsid')->where('statusdoc', '=', 'A')
                    ->where('typecekstok',$request->typecekstok)->first();
                    $selectDbxImporDet = DB::table('dbximpordetcss')->select('itemid', DB::raw('sum(qty)as qty'))->groupBy('itemid');

                    $selectDbxImpor = DB::table('dbximporcss')
                        ->leftJoinSub($selectDbxImporDet, 'dbximpordetcss', function (JoinClause $join) {
                            $join->on('dbximporcss.itemid', '=', 'dbximpordetcss.itemid');
                        })
                        ->select([
                            DB::raw($getTrsHedId->trsid),
                            "dbximporcss.itemid",
                            "dbximporcss.itembatchid",
                            "itemcode",
                            "itemname",
                            "heatno",
                            "dimension",
                            "tolerance",
                            "kondisi",
                            "qty",
                            "uom",
                            "cogs",
                            "statusitem",
                            "isbatch",
                            DB::raw(1)
                        ]);

                    $insertDbttrsdet = DB::table('dbttrsdet')->insertUsing(["trsid", "itemid", "itembatchid", "itemcode", "itemname", "heatno", "dimension", "tolerance", "kondisi", "onhand", "uom", "cogs", "statusitem", "isbatch", "statuscso"], $selectDbxImpor);

                    if ($insertDbttrsdet == true) {
                        $getTrsDet2 = DB::table('dbttrsdet')
                            ->join('dbttrshed', 'dbttrshed.trsid', '=', 'dbttrsdet.trsid')
                            ->select('trsdetid', 'itemid', 'itembatchid')
                            ->where('dbttrshed.statusdoc', '=', 'A')->where('dbttrshed.typecekstok',$request->typecekstok)
                            ->get();

                        foreach ($getTrsDet2 as $trsDet2) {
                            $selectDbxImporDet2 = DB::table('dbximpordetcss')
                                ->select(DB::raw($trsDet2->trsdetid), "itemid", "itembatchid", "wrh", "qty")
                                ->where('itemid', '=', $trsDet2->itemid);
                            // dd($selectDbxImporDet2->get());

                            // $insertDbtTrsdet2 = 
                            DB::table('dbttrsdet2')->insertUsing(["trsdetid", "itemid", "itembatchid", "wrh", "qty"], $selectDbxImporDet2);

                            // if ($insertDbtTrsdet2 == false) {
                            //     DB::rollBack();
                            //     return redirect()->route("item.index",['val'=>$request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                            // }
                        }

                        DB::table('dbtcsoprsn')
                            ->where('trsid', '=', $getTrsHedId->trsid)
                            ->update(["status" => "P"]);

                        $finalise = DB::table("dbxsetdate")->insert(["date" => Carbon::now(), "tipe" => "I",'typecekstok'=>$request->typecekstok]);
                        if ($finalise == true) {
                            DB::commit();
                                return redirect()->route("item.index",['val'=>$request->typecekstok])->with('status', "Berhasil memulai CSO");
                        } else {
                            DB::rollBack();
                                return redirect()->route("item.index",['val'=>$request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                        }
                    } else {
                        DB::rollBack();
                            return redirect()->route("item.index",['val'=>$request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                    }
                } else {
                    DB::rollBack();
                        return redirect()->route("item.index",['val'=>$request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                }
            } else {
                DB::rollBack();
                    return redirect()->route("pengaturan.index",['val'=>$request->typecekstok])->with('error', "Harap lakukan input tipe CSO dan Materialnya terlebih dahulu");
            }
        } else {
            DB::rollBack();
                return redirect()->route("import-stok.index",['val'=>$request->typecekstok])->with('error', "Harap lakukan import item terlebih dahulu");
        }

        }
        
    }

    /**
     * Display the specified resource.
     */
    public function show(Item $item) {}

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Item $item)
    {
        //
    }

    public function csoUlang(Request $request)
    {
        DB::beginTransaction();

        $getDataDbtCsoDet = DB::table('dbtcsodet')
            ->leftJoin('dbtcsohed', 'dbtcsodet.csoid', '=', 'dbtcsohed.csoid')
            ->select(DB::raw("dbtcsodet.csoid, dbtcsodet.trsdetid, dbtcsodet.itemid, dbtcsodet.itemid as 'itembatchid', dbtcsodet.color, dbtcsodet.locationid, dbtcsodet.grade, 'R', 'D', 'T'"))
            ->where('dbtcsodet.trsdetid', '=', $request->trsdetid)
            ->where('dbtcsodet.statussubmit', '=', 'P')
            ->whereRaw("(dbtcsodet.statushslcso = 'T' OR dbtcsodet.statushslcso = 'D')")
            ->whereRaw("(dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')")
            ->where('dbtcsohed.status', '=', 'A');

        $insertDbtCsoDet = DB::table('dbtcsodet')->insertUsing(['csoid', 'trsdetid', 'itemid', 'itembatchid', 'color', 'locationid', 'grade', 'statusitem', 'statussubmit', 'statushslcso'], $getDataDbtCsoDet);

        if ($insertDbtCsoDet == true) {

            $updateLCso = DB::table('dbtcsodet')
                ->leftJoin('dbtcsohed', 'dbtcsodet.csoid', '=', 'dbtcsohed.csoid')
                ->where('dbtcsodet.trsdetid', $request->trsdetid)
                ->where('dbtcsohed.status', 'A')
                ->where('dbtcsodet.statussubmit', '=', 'P')
                ->whereRaw("(dbtcsodet.statushslcso = 'T' OR dbtcsodet.statushslcso = 'D')")
                ->whereRaw("(dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')")
                ->update(['dbtcsodet.statushslcso' => 'C']);
            if ($updateLCso == true) {
                $updateDbtTrsDet = DB::table('dbttrsdet')
                    ->where('trsdetid', $request->trsdetid)
                    ->increment('statuscso');
                if ($updateDbtTrsDet == true) {
                    $getDbtTrsDet = DB::table('dbttrsdet')
                        ->join('dbttrshed', 'dbttrsdet.trsid', '=', 'dbttrshed.trsid')
                        ->select('statuscso')
                        ->where('trsdetid', $request->trsdetid)
                        ->where('dbttrshed.statusdoc', 'A')
                        ->first();
                    $getDbtCsoDetOnDbtCsoHed = DB::table('dbtcsodet')
                        ->leftJoin('dbtcsohed', 'dbtcsohed.csoid', '=', 'dbtcsodet.csoid')
                        ->select(['dbtcsodet.csodetid', 'dbtcsodet.csoid', DB::raw("'$getDbtTrsDet->statuscso' AS csocount")])
                        ->where('dbtcsodet.trsdetid', '=', $request->trsdetid)
                        ->where('dbtcsodet.statushslcso', '=', 'T')
                        ->whereRaw("(dbtcsodet.statusitem = 'R' OR dbtcsodet.statusitem = 'TR')")
                        ->where('dbtcsohed.status', '=', 'A');

                    $insertDbtCsoDet2 = DB::table('dbtcsodet2')->insertUsing(['csodetid', 'csoid', 'csocount'], $getDbtCsoDetOnDbtCsoHed);
                    if ($insertDbtCsoDet2 == true) {
                        foreach ($request->keteranganCsoUlang as $keteranganId) {
                            foreach ($getDbtCsoDetOnDbtCsoHed->get() as $csodet) {
                                DB::table('dbtcsoketerangan')->insert([
                                    'csodetid' => $csodet->csodetid,
                                    'keteranganid' => $keteranganId
                                ]);
                            }
                        }
                        DB::commit();
                        return response()->json(['result' => 1]);
                    } else {
                        DB::rollBack();
                        return response()->json(['result' => 0]);
                    }
                } else {
                    DB::rollBack();
                    return response()->json(['result' => 0]);
                }
            } else {
                DB::rollBack();
                return response()->json(['result' => 0]);
            }
        } else {
            DB::rollBack();
            return response()->json(['result' => 0]);
        }
    }

    
    public function setAnalisatorItem(Request $request)
    {
        DB::beginTransaction();
        $item = json_decode($request->item);
        $view = "";

        foreach ($item as $i) {
            $updateDetailItem = DB::table('dbttrsdet')
                ->where('dbttrsdet.trsdetid', '=', $i)
                ->update(['analisatorid' => $request->analisator]);

            // if ($updateDetailItem == false) {
            //     DB::rollBack();
            //     return ['task' => 0];
            // }
        }

        $dbxjob = DB::table('dbxjob')
            ->where('jobtypeid', '=', 2)
            ->where('typecekstok', $request->typecekstok)
            ->get();
        $group = Group::all();
        $collectedItem = collect(DB::select('CALL Dashboard()'))->where('typecekstok', $request->typecekstok);
        $countAnalisator = $collectedItem->where('analisatorid','<>',null);

        if ($request->type == 0) {
            $itemBlmProses = $collectedItem->where('status', '=', '0');

            $view = view("admin.dashboard.table.item.item-belum-proses", [
                "itemBlmProses" => $itemBlmProses,
                "dbxjob" => $dbxjob,
                "dbmgroup" => $group
            ]);
        } elseif ($request->type == 1) {
            $itemOk = $collectedItem->where('status', '=', '3');

            $view = view("admin.dashboard.table.item.item-ok", [
                "itemSelesai" => $itemOk,
                "dbxjob" => $dbxjob,
                "dbmgroup" => $group
            ]);
        } else {
            $itemSelisihPlus = $collectedItem->where('status', '=', '2');
            $itemSelisihMinus = $collectedItem->where('status', '=', '1');
            $view = view("admin.dashboard.table.item.item-selisih", [
                "itemSelisihPlus" => $itemSelisihPlus,
                "itemSelisihMinus" => $itemSelisihMinus,
                "dbxjob" => $dbxjob,
                "dbmgroup" => $group
            ]);
        }        

        DB::commit();
        return [
            'task' => 1,
            'view' => (string) $view,
            'countAnalisator' => count($countAnalisator)
        ];
    }

    public function updateCsoItem(Request $request)
    {
        DB::beginTransaction();
        if (!empty($request->check_kesalahan_admin)) {
            $kesalahan = 1;
        } else {
            $kesalahan = 0;
        }

        if (!empty($request->check_batch_tertukar)) {
            $batch_tertukar = 1;
        } else {
            $batch_tertukar = 0;
        }

        if (!empty($request->check_pemeriksaan_analisator)) {
            $checked = 1;
        } else {
            $checked = 0;
        }
        if (!empty($request->check_tidak_hitung)) {
            $hitung = 1;
        } else {
            $hitung = 0;
        }
        if($request->groupValue !='')
        {
            $groupValue = $request->groupValue;
        }else{
            $groupValue = null;
        }
        // if ($request->batchno == null) {
        $updateDetailItem = DB::table('dbttrsdet')
            ->where('itemid', $request->itemid)
            ->where('dbttrsdet.trsdetid', '=', $request->trsdetid)
            ->update([
                'koreksi' => $request->koreksi,
                'deviasi' => $request->deviasi,
                'analisatorid' => $request->analisator,
                'keterangan' => $request->keterangan,
                'groupid' => $request->grouping,
                'kesalahan_admin' => $kesalahan,
                "batch_tertukar" => $batch_tertukar,
                "analisator_checked" => $checked,
                "tidak_hitung"=>$hitung,
                "group_value"=>$groupValue
            ]);
        // } else {
        //     $updateAvalan = DB::table('dbttrsdet')
        //         ->where('itemid', $request->itemid)
        //         ->where('batchno', $request->batchno)
        //         ->where('dbttrsdet.trsdetid', '=', $request->trsdetid)
        //         ->update([
        //             'koreksi' => $request->koreksi,
        //             'deviasi' => $request->deviasi,
        //             'analisatorid' => $request->analisator,
        //             'keterangan' => $request->keterangan,
        //             'groupid' => $request->grouping,
        //             'kesalahan_admin' => $kesalahan,
        //             "batch_tertukar" => $batch_tertukar
        //         ]);
        // }

        if ($updateDetailItem == true) {
            DB::commit();
            return redirect()->route("item.index", ['val' => $request->typecekstok,'search'=>$request->searchCSO])->with('status', "Berhasil mengubah data CSO item");
        } else {
            DB::rollBack();
            return redirect()->route("item.index", ['val' => $request->typecekstok,'search'=>$request->searchCSO])->with('error', "Gagal mengubah data CSO item");
        }
    }

    public function showDetailCso(Request $request)
    {
        $param = json_decode($request->param, true);

        $dataAnalisator = DB::table('dbttrsdet')
            ->join('dbttrshed', 'dbttrshed.trsid', '=', 'dbttrsdet.trsid')
            ->leftJoin('dbmuser', 'dbttrsdet.analisatorid', '=', 'dbmuser.userid')
            ->select(["dbttrsdet.analisatorid", "name"])
            ->where('trsdetid', '=', $param['trsdetid'])
            ->where('dbttrshed.typecekstok',$request->typecekstok)
            ->whereNot('dbttrshed.statusdoc', '=', 'P')
            ->whereNotNull('analisatorid')
            ->get();

        $dataTertukar = DB::table('dbttrsdet')
            ->join('dbttrshed', 'dbttrshed.trsid', '=', 'dbttrsdet.trsid')
            ->leftJoin('dbmgroup', 'dbmgroup.groupid', '=', 'dbttrsdet.groupid')
            ->select(["dbttrsdet.groupid", "dbmgroup.groupdesc"])
            ->where('trsdetid', '=', $param['trsdetid'])
            ->whereNot('dbttrshed.statusdoc', '=', 'P')
            ->whereNotNull('dbttrsdet.groupid')
            ->get();

        $dataAdminBatch = DB::table('dbttrsdet')
            ->join('dbttrshed', 'dbttrshed.trsid', '=', 'dbttrsdet.trsid')
            ->select(['kesalahan_admin', 'batch_tertukar', 'analisator_checked','tidak_hitung'])
            ->where('dbttrsdet.trsdetid', '=', $param['trsdetid'])
            ->whereNot('dbttrshed.statusdoc', '=', 'P')
            ->get();

        $cekCso = DB::table('dbtcsodet2')
            ->select('dbtcsodet2.csodet2id')
            ->leftJoin('dbtcsodet', 'dbtcsodet.csodetid', '=', 'dbtcsodet2.csodetid')
            ->leftJoin('dbtcsohed', 'dbtcsohed.csoid', '=', 'dbtcsodet2.csoid')
            ->leftJoin('dbttrsdet', 'dbttrsdet.trsdetid', '=', 'dbtcsodet.trsdetid')
            ->where('dbtcsodet.trsdetid', '=', $param['trsdetid'])
            ->where('dbtcsohed.typecekstok',$request->typecekstok )
            ->whereNotNull('dbtcsodet2.qty')
            ->whereColumn('dbtcsodet2.csocount', 'dbttrsdet.statuscso')
            ->where('statussubmit', 'P')
            ->where('dbtcsohed.status', 'A')
            ->get();

        $cekItem = DB::table('dbttrsdet')
            ->select('dbttrsdet.statusitem', 'dbttrsdet.trsid', 'dbttrsdet.statuscso', 'dbttrsdet.analisatorid')
            ->leftjoin('dbttrshed', 'dbttrshed.trsid', '=', 'dbttrsdet.trsid')
            ->where('dbttrsdet.trsdetid', '=', $param['trsdetid'])
            ->where('dbttrshed.typecekstok',$request->typecekstok)
            ->whereNot('dbttrshed.statusdoc', '=', 'P')
            ->first();

        $wrhItem = DB::table('dbttrsdet2')->select('wrh','qty')->where('trsdetid', $param['trsdetid'])->get();
        $warehouse = [];
    
        foreach($wrhItem as $idx => $wh)
        {
            // $ini = strpos($wh->wrh,"-");                                                
            // if ($ini == 0) return '';                                                
            // $ini += strlen(1);                                                
            // $len = strpos($wh->wrh,"-", $ini) - $ini;
            $len = strlen($wh->wrh)-2;
            // return $wh->wrh;
            // $wrhname = substr($wh->wrh, $ini, $ini-$len);
            $wrhname = substr($wh->wrh, 0, strlen($wh->wrh)-2);

            // return strval(strlen($wh->wrh)-2)." ".strval($len);
            $warehouse["$wrhname-".substr($wh->wrh,-1)]=['wrhFullName' =>$wh->wrh ,'wrh' => $wrhname, 'qty' => $wh->qty,'check' => 0];
            // array_push($warehouse,['wrhFullName' =>$wh->wrh ,'wrh' => $wh->wrh , 'qty' => $wh->qty,'check' => 0]);
        }
        
        $dataDetailDashboard = collect(DB::select('CALL DashboardDetail(?)', [$param['trsdetid']]))->where('typecekstok',$request->typecekstok);

        $dataPicPerCSO =  $dataDetailDashboard->unique('username');
        $dataCso = [];

        foreach ($dataPicPerCSO as $picCso) {
            $tempData = [];
            $tempData['name'] = $picCso->name;
            $cso =0 ;
            for ($i = 1; $i <= 4; $i++) {
                $tempCSO = $dataDetailDashboard->where('username', $picCso->username)->where('csocount', $i);
                if (count($tempCSO) > 0) 
                {
                    $tempData["cso$i"] = $tempCSO->sum('qty');
                    $cso = $i;
                }
                else $tempData["cso$i"] = 0;
            }
            
            $tempCSO = $dataDetailDashboard->where('username', $picCso->username)->where('csocount', $cekItem->statuscso);
            foreach($tempCSO as $tempCSO1)
            {
                $check = $tempCSO1->locationname."-".$tempCSO1->grade;
                if( array_key_exists($check,$warehouse))
                {   
                    $warehouse[$check]['check']+=$tempCSO1->qty;
                }
            }

            // $check = $picCso->locationname."-".$picCso->grade;
            // // return $check;
            // if( array_key_exists($check,$warehouse) )
            // {   
            //     // return $warehouse[$check]['wrhFullName'];
            //     $warehouse[$check]['check']+=$tempData["cso$cso"];
            //     // return $warehouse[$check]['check'];
            //     $c .= $check."; ";
            // }
            array_push($dataCso, $tempData);
        }
        
        $dataGroup = Group::all();

        $dataDbxJob = DB::table('analisator')
            ->select(['userid', 'name'])->where('typecekstok',$request->typecekstok)
            ->distinct()
            ->get();

        // $dataBatchItem = DB::table('dbttrsdetbatch')->where('trsdetid', '=', $param['trsdetid'])->get();

        $coycode = Company::select('coycode')->first();

        // $itemsDet = collect(DB:: select('Call DashboardDetail()'));
        // $dataDetailDashboard = $itemsDet->where('itemid','=',$request->id);
        // // $dataDetailDashboard = DB::table('viewdetaildashb')->distinct()->where('itemid', '=', $request->id)->get();
        // $dataTotalCso = DB::table('dbttrsdet')
        //     ->leftJoin('totalcso1', 'totalcso1.itemid', '=', 'dbttrsdet.itemid')
        //     ->leftJoin('totalcso2', 'totalcso2.itemid', '=', 'dbttrsdet.itemid')
        //     ->leftJoin('totalcso3', 'totalcso3.itemid', '=', 'dbttrsdet.itemid')
        //     ->leftJoin('totalcso4', 'totalcso4.itemid', '=', 'dbttrsdet.itemid')
        //     ->select('dbttrsdet.itemid')
        //     ->selectRaw('ifnull(totalcso1.qtytot,0) as totalcso1')
        //     ->selectRaw('ifnull(totalcso2.qtytot,0) as totalcso2')
        //     ->selectRaw('ifnull(totalcso3.qtytot,0) as totalcso3')
        //     ->selectRaw('ifnull(totalcso4.qtytot,0) as totalcso4')
        //     ->where('dbttrsdet.itemid', '=', $request->id)
        //     ->distinct()
        //     ->get();

        // $dataCsoCount = DB::table('viewdetaildashb')
        //     ->select(['name'])
        //     ->selectRaw('SUM(cso1) over (partition by name) as cso1')
        //     ->selectRaw('SUM(cso2) over (partition by name) as cso2')
        //     ->selectRaw('SUM(cso3) over (partition by name) as cso3')
        //     ->selectRaw('SUM(cso4) over (partition by name) as cso4')
        //     ->where('itemid', '=', $request->id)
        //     ->distinct()
        //     ->get();

        // $dataGroup = Group::all();

        // $dataDbxJob = DB::table('analisator')
        //     ->select(['userid', 'name'])
        //     ->distinct()
        //     ->get();

        // $dataBatchItem = DB::table('dbttrsdetbatch')->where('trsdetid', '=', $request->trsdet)->get();
        // return [
        // "itemid" => $data->itemid,
        // "trsdetid" => $data->trsdetid,
        // 'batchItem' => $dataBatchItem,
        // "onhand" => $data->onhand,
        // "totalcso" => $data->totalcso,
        // "selisih" => $data->selisih,
        // "koreksi" => $data->koreksi,
        // "deviasi" => $data->deviasi,
        // "keterangan" => $data->keterangan,
        // "dataAdminBatch" => $dataAdminBatch[0],
        // "tableDetailDashboard" => $dataDetailDashboard,
        // "dataCso" => $dataCsoCount,
        // "totalCso" => $dataTotalCso,
        // "analisator" => $dataAnalisator,
        // "group" => $dataGroup,
        // "dbxJob" => $dataDbxJob,
        // "checkCso" => count($cekCso),
        // "checkItemType" => $cekItem[0]
        // ];
        return view('admin.dashboard.table.item.detail-cso-item', [
            "itemid" => $param['itemid'],
            "trsdetid" => $param['trsdetid'],
            // 'batchItem' => $dataBatchItem,
            "onhand" => $param['onhand'],
            "totalcso" => $param['totalcso'],
            "selisih" => $param['selisih'],
            "koreksi" => $param['koreksi'],
            "deviasi" => $param['deviasi'],
            "keterangan" => $param['keterangan'],
            "dataAdminBatch" => $dataAdminBatch[0],
            "tableDetailDashboard" => $dataDetailDashboard,
            // "dataCso" => $dataCsoCount,
            "dataCso" => $dataCso,
            "analisator" => $dataAnalisator,
            "group" => $dataGroup,
            "tertukar" => $dataTertukar,
            "dbxJob" => $dataDbxJob,
            "checkCso" => count($cekCso),
            "checkItemType" => $cekItem,
            "coy" => strtoupper(substr($coycode->coycode, 0, 3)),
            'wrhItem' =>$warehouse,
            'typecekstok' => $request->typecekstok
        ]);
    }

    // public function showHistoryTransaksi(Request $request)
    // {
    //     $companyID = config('values.companyId');
    //     $token = Http::get('http://allapi.local.sutindo.net/getToken');
    //     $getHistoryTransaksi = Http::post('http://allapi.local.sutindo.net/sos/getHistoryTransaksi', [
    //         "token" => $token['token'],
    //         "companyId" => $companyID,
    //         // "itemid"=>  "14554",
    //         "itemid" =>  $request->itemid,
    //         "tipe" => $request->tipe ?? "",
    //         "warehouse" =>  $request->warehouse ?? "",
    //         "tanggal" => $request->tanggal ?? ""
    //     ]);

    //     // if($request->tanggal) {
    //     //     $paramDate = explode(",",$request->tanggal);
    //     //     $tempData = collect($getHistoryTransaksi['data']);
    //     //     $data = $tempData->whereBetween('PostingDate',[$paramDate[0], $paramDate[1]]);
    //     // } else $data = collect($getHistoryTransaksi['data']);        

    //     return DataTables::of($getHistoryTransaksi['data'])
    //         ->addIndexColumn()
    //         ->make();
    // }

    public function hapusTemuanItem(Request $request) // done 
    {
        DB::beginTransaction();

        $deleteDataFromDbtTrsDet = DB::table('dbttrsdet')
            ->where('dbttrsdet.trsdetid', '=', $request->trsdetid)
            ->delete();

        if ($deleteDataFromDbtTrsDet == true) {

            if ($request->typecekstok == 'CSO') {
                $deleteDataFromDbxImpor = DB::table('dbximpor')
                    ->where('dbximpor.itemid', '=', $request->itemid)
                    ->delete();

                DB::table('dbximpordet')
                    ->where('dbximpordet.itemid', '=', $request->itemid)
                    ->delete();
            } else if ($request->typecekstok == 'CSS') {
                $deleteDataFromDbxImpor = DB::table('dbximporcss')
                    ->where('dbximporcss.itemid', '=', $request->itemid)
                    ->delete();
                    DB::table('dbximpordetcss')
                    ->where('dbximpordetcss.itemid', '=', $request->itemid)
                    ->delete();
            } 
            
            if ($deleteDataFromDbxImpor == true) {
                $getCSODetData = DB::table('dbtcsodet')->where('dbtcsodet.trsdetid', '=', $request->trsdetid);
                $csodetid = $getCSODetData->get();

                foreach ($csodetid as $csodet) {
                    DB::table('dbtcsodet2')
                        ->where('dbtcsodet2.csodetid', '=', $csodet->csodetid)
                        ->delete();
                    // if($deleteFromDbtCSoDet2 == false) {
                    //     DB::rollBack();
                    //     return response()->json(['result' => 0]);
                    // }

                }
                $getCSODetData->delete();

                DB::commit();
                return response()->json(['result' => 1]);
            } else {
                DB::rollBack();
                return response()->json(['result' => 0]);
            }
        } else {
            DB::rollBack();
            return response()->json(['result' => 0]);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {
        DB::beginTransaction();

        DB::table('dbttrshed')
            ->where('statusdoc', '=', 'A')->where('typecekstok',$request->typecekstok)
            ->update(['endcsodate' => Carbon::now(), 'statusdoc' => 'E']);

        $insertDbtCsoPrsn = DB::insert("INSERT INTO dbtcsoprsn (trsid,userid,username,name,coyid,jobtypeid,status,tipecso)
        SELECT DISTINCT ch.trsid,userid,username,name,j.coyid,jobtypeid,'D','R' as status FROM dbxjob j 
        INNER JOIN dbtcsohed ch ON j.userid = ch.pelakuid 
        WHERE ch.trsid = (SELECT trsid FROM dbttrshed WHERE statusdoc='E' ORDER BY trsid DESC LIMIT 1) AND ch.tipecso  = 'R' AND j.typecekstok = '".$request->typecekstok."'
        UNION 
        SELECT DISTINCT td.trsid,userid,username,name,j.coyid,jobtypeid,'D','R' as status FROM dbxjob j 
        INNER JOIN dbttrsdet td ON td.analisatorid =j.userid
        WHERE j.typecekstok = '".$request->typecekstok."' AND
        td.trsid = (SELECT trsid FROM dbttrshed WHERE statusdoc='E' ORDER BY trsid DESC LIMIT 1)");

        if ($insertDbtCsoPrsn == true) {
            DB::commit();
            return redirect()->route("item.index",['val'=>$request->typecekstok])->with('status',$request->typecekstok.' Item berhasil diberhentikan');
        } else {
            DB::rollBack();
            return redirect()->route("item.index",['val'=>$request->typecekstok])->with('error', 'Gagal memberhentikan'.$request->typecekstok.'Item');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        // DB::beginTransaction();

        $updateDbtTrsHed = DB::table('dbttrshed')
            ->where('statusdoc', '=', 'E')->where('typecekstok',$request->typecekstok)
            ->update(['statusdoc' => 'P']);

        if($request->typecekstok == 'CSO')
        {
        DB::table('dbximpor')->truncate();
        DB::table('dbximpordet')->truncate();

            // DB::table('dbxcsotype')->truncate();        

        }
        else if($request->typecekstok == 'CSS')
        {
            DB::table('dbximporcss')->truncate();
            DB::table('dbximpordetcss')->truncate();

            
            // DB::table('dbxcsotype')->truncate();  
        }

        DB::table('dbxsetdate')->where('tipe', '=', 'I')->where('typecekstok',$request->typecekstok)->delete();

        DB::table('dbxmaterial')->where('typecekstok',$request->typecekstok)->delete();

        DB::table('dbtcsohed')->where('typecekstok',$request->typecekstok)
            ->update(['status' => 'P']);

        DB::table('dbtcsoprsn')->where('typecekstok',$request->typecekstok)
            ->update(['status' => 'P']);

        DB::table('dbxjob')->where('typecekstok',$request->typecekstok)->delete();

        // if($updateDbtTrsHed == true ) {
        DB::commit();
        return redirect()->route("item.index",['val'=>$request->typecekstok])->with('status', $request->typecekstok.' berhasil diakhiri');
        // } else {
        //     DB::rollBack();
        //     return redirect()->route("item.index")->with('error', 'Gagal mengakhiri CSO');
        // }

    }
}
