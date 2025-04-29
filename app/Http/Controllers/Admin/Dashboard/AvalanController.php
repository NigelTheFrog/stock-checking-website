<?php

namespace App\Http\Controllers\Admin\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\Admin\Dashboard\Item;
use App\Models\Admin\Master\Company;
use App\Models\Admin\Master\Group;
use App\Models\Admin\Master\KeteranganCSOUlang;
use App\Models\Admin\Penjadwalan\ImportAvalan;
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


class AvalanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $param) // BATCH DONE
    {
        $item = collect(DB::select('CALL DashboardAvalan()'))->where('typecekstok', $param->val);
        
        $checkCsoActive = DB::table('dbttrsheda')->where('dbttrsheda.statusdoc', '=', 'A')
            ->where('typecekstok', $param->val)->orderByDesc('trsid')->limit(1)->get();

        $checkCsoEnd = DB::table('dbttrsheda')->where('dbttrsheda.statusdoc', '=', 'E')
            ->where('typecekstok', $param->val)->orderByDesc('trsid')->limit(1)->get();

        $checkCsoFinal = DB::table('dbttrsheda')->where('statusdoc', '=', 'P')
            ->where('typecekstok', $param->val)->orderByDesc('trsid')->limit(1)->get();

        $getCsoDate = DB::table('dbttrsheda')->select('startcsodate')->where('statusdoc', '!=', 'P')
            ->where('typecekstok', $param->val)->orderByDesc('trsid')->limit(1)->get();

        if (count($getCsoDate) > 0) {
            $csoDate = Carbon::parse($getCsoDate[0]->startcsodate)->format('d M Y');
        } else {
            $csoDate = "Belum ada tanggal " . $param->val;
        }

        $checkAnalisator = $item->where('analisatorid','<>',null);
        $itemBlmProses = $item->where('status', '=', '0')->where('typecekstok', $param->val);

        $itemOk = $item->where('status', '=', '3');
        $itemSelisihPlus = $item->where('status', '=', '2')->where('typecekstok', $param->val);
        $itemSelisihMinus = $item->where('status', '=', '1')->where('typecekstok', $param->val);

        $dbxjob = DB::table('dbxjob')->where('jobtypeid', '=', 2)->where('typecekstok', $param->val)->where('statuscekstok','A')->get();
        $group = Group::all();
        $keterangan = KeteranganCSOUlang::all();
        $coycode = Company::select('coycode')->first();

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

        // dd(str_replace(" ","",$coycode->coycode));
        return view("admin.dashboard.avalan", [
            'countCsoActive' => count($checkCsoActive),
            'countCsoEnd' => count($checkCsoEnd),
            'countCsoFinal' => count($checkCsoFinal),
            // 'item' => $item,
            'batch' => collect($item)->sortBy('itemname'),
            "countBatchBlmProses" => count($itemBlmProses),
            "batchBlmProses" => $itemBlmProses,
            "countBatchOk" => count($itemOk),
            "batchSelesai" => $itemOk,
            "countBatchSelisih" => (count($itemSelisihPlus) + count($itemSelisihMinus)),
            "batchSelisihPlus" => $itemSelisihPlus,
            "batchSelisihMinus" => $itemSelisihMinus,
            "dbxjob" => $dbxjob,
            "dbmgroup" => $group,
            "csodate" => $csoDate,
            "warehouse" => $getWarehouse['data'],
            "keteranganCSOUlang" => $keterangan,
            // 'valuePlus' => '',
            // 'valueMinus' => '',
            'filter' => 0,
            'search'=>$param->search ?? '',
            'typecekstok' => $param->val,
            "coy" => strtoupper(substr($coycode->coycode, 0, 3)),
            "coyCode" => str_replace(" ","",$coycode->coycode),
            'countAnalisator' => count($checkAnalisator)
        ]);
    }

    public function checkAvalanBlmProses() // BATCH DONE
    {
        $item = collect(DB::select('CALL DashboardAvalan()'));
        $itemBlmProsescss = $item->where('status', '=', '0')->where('typecekstok','=','CSS');
        $itemBlmProsescso = $item->where('status', '=', '0')->where('typecekstok','=','CSO');

        return response()->json(['cso' => count($itemBlmProsescso),'css'=>count($itemBlmProsescss)]);
    }

    public function showBanner(Request $request) //BATCH done
    {
        $items = collect(DB::select('CALL DashboardAvalan()'))->where('typecekstok', $request->typecekstok);
        $itemBlmProses = $items->where('status', '=', '0')->where('typecekstok', $request->typecekstok);
        $itemOk = $items->where('status', '=', '3')->where('typecekstok', $request->typecekstok);
        $itemSelisihPlus = $items->where('status', '=', '2')->where('typecekstok', $request->typecekstok);
        $itemSelisihMinus = $items->where('status', '=', '1')->where('typecekstok', $request->typecekstok);

        return view("admin.dashboard.banner.banner-avalan", [
            "countBatchBlmProses" => count($itemBlmProses),
            "countBatchOk" => count($itemOk),
            "countBatchSelisih" => count($itemSelisihPlus) + count($itemSelisihMinus)
        ]);
    }

    public function updateGroupingAndAnalisatorAvalan(Request $request)
    {
        if ($request->isSelisih == 0) {
            $idx = 0;
            if ($request->group) {
                foreach ($request->group as $group) {
                    if ($group != null) {
                        $data = explode(",", $group);
                        DB::table('dbttrsdeta')
                            ->where('dbttrsdeta.trsdetid', '=', $data[0])
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
                        DB::table('dbttrsdeta')
                            ->where('dbttrsdeta.trsdetid', '=', $data[0])
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
                        DB::table('dbttrsdeta')
                            ->where('dbttrsdeta.trsdetid', '=', $data[0])
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
                        DB::table('dbttrsdeta')
                            ->where('dbttrsdeta.trsdetid', '=', $data[0])
                            ->update(['analisatorid' => $data[1]]);
                    }
                }
            }
            if ($request->groupminus) {
                $idx = 0;
                foreach ($request->groupminus as $group) {
                    if ($group != null) {
                        $data = explode(",", $group);
                        DB::table('dbttrsdeta')
                            ->where('dbttrsdeta.trsdetid', '=', $data[0])
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
                        DB::table('dbttrsdeta')
                            ->where('dbttrsdeta.trsdetid', '=', $data[0])
                            ->update(['analisatorid' => $data[1]]);
                    }
                }
            }
        }
        return redirect()->route("avalan.index", ['val' => $request->typecekstok])->with('status', "Berhasil memperbarui data pada banner");
    }

    public function print(Request $request) //done
    {

        $pdf = App::make('dompdf.wrapper');
        $item = collect(DB::select('CALL DashboardAvalan()'))->where('typecekstok', $request->typecekstok);

        if ($request->status == "1") {

            $data = $item->where('status', '=', '0');

            $view = view("admin.dashboard.pdf-avalan", ["batchBlmProses" => $data, "type" => 1]);
        } elseif ($request->status == "3") {

            $data = $item->where('status', '=', '3');

            $view = view("admin.dashboard.pdf-avalan", ["batchSelesai" => $data, "type" => 3]);
        } else {

            $dataPlus = $item->where('status', '=', '2');
            $dataMinus = $item->where('status', '=', '1');

            $view = view("admin.dashboard.pdf-avalan", ["batchSelisihPlus" => $dataPlus, "batchSelisihMinus" => $dataMinus, "type" => 4]);
        }
        $pdf->loadHTML($view);
        return $pdf->stream();
    }

    public function showMainTable(Request $request) //done
    {
        // dd($request);
        $items = DB::select('CALL DashboardAvalan()');
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

        $object = view("admin.dashboard.table.avalan.main-table-avalan", 
        ["batch" => $data, 
        "filter" => $request->filter, 
        "coy" => strtoupper(substr($coycode->coycode, 0, 3))
        ]);

        return ['view' => (string) $object, 'countAnalisator' => count($checkAnalisator)];
    }



    // public function showBannerTable(String $request)
    // {
    //     $item = collect(DB::select('CALL DashboardAvalan()'));
    //     $dbxjob = DB::table('dbxjob')->where('jobtypeid', '=', 2)->get();
    //     $group = Group::all();

    //     if ($request == "1") {
    //         $itemBlmProses = $item->where('status', '=', '0');

    //         $view = view("admin.dashboard.table.item.item-belum-proses", [
    //             "itemBlmProses" => $itemBlmProses,
    //             "dbxjob" => $dbxjob,
    //             "dbmgroup" => $group
    //         ]);
    //     }
    //     // else if ($request == '2') {
    //     //     $itemSdgProses = array_filter($item, function ($data) {
    //     //         return $data->status != '0' && $data->status != '3';
    //     //     });

    //     //     $view = view("admin.dashboard.table.item.item-sedang-proses", [
    //     //         "itemSdgProses" => $itemSdgProses,
    //     //         "dbxjob" => $dbxjob,
    //     //         "dbmgroup" => $group
    //     //     ]);
    //     // } 
    //     else if ($request == '3') {
    //         $itemOk = $item->where('status', '=', '3');

    //         $view = view("admin.dashboard.table.item.item-ok", [
    //             "itemSelesai" => $itemOk,
    //             "dbxjob" => $dbxjob,
    //             "dbmgroup" => $group
    //         ]);
    //     } else {

    //         $itemSelisihPlus = $item->where('status', '=', '2');
    //         $itemSelisihMinus = $item->where('status', '=', '1');

    //         $view = view("admin.dashboard.table.item.item-selisih", [
    //             "itemSelisihPlus" => $itemSelisihPlus,
    //             "itemSelisihMinus" => $itemSelisihMinus,
    //             "dbxjob" => $dbxjob,
    //             "dbmgroup" => $group
    //         ]);
    //     }
    //     return $view;
    // }
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
        if ($request->typecekstok == 'CSO') {
            $checkDbxImport = ImportAvalan::all();
            if (count($checkDbxImport) > 0) {
                $checkCsoMaterial = DB::table('dbxmaterial')
                                    ->where('typecekstok', $request->typecekstok)
                                    ->where('statuscekstok','A')
                                    ->limit(1)
                                    ->get();
                $checkCsoType = DB::table('dbxcsotype')
                                ->where('csotype', $request->typecekstok)
                                ->where('statuscekstok','A')
                                ->limit(1)
                                ->get();

                $getCoy = Company::select('coycode')->first();
                $coy = strtoupper(substr($getCoy->coycode, 0, 3));

                if (count($checkCsoMaterial) > 0 && count($checkCsoType) > 0) {
                    $checkMonth = DB::table('dbttrsheda')
                        ->select(DB::raw("DATE_FORMAT(startcsodate, '%m') as monthbefore"), 'idxno')->where('typecekstok', $request->typecekstok)
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

                    $insertDbttrshed = DB::table('dbttrsheda')->insert([
                        'doccsoid' => $doccsoid,
                        'typecekstok' => $checkCsoType[0]->csotype,
                        'startcsodate' => $today,
                        'idxno' => $idxno,
                        'csomaterial' => $checkCsoMaterial[0]->csomaterial,
                        'statusdoc' => 'A'
                    ]);

                    if ($insertDbttrshed == true) {
                        $getTrsHedId = DB::table('dbttrsheda')->select('trsid')->where('statusdoc', '=', 'A')
                            ->where('typecekstok', $request->typecekstok)->first();
                        $selectDbxImporDet = DB::table('dbximpordetavalan')->select('itembatchid', DB::raw('sum(qty)as qty'))->groupBy('itembatchid');
                        $columnDbxImpor = $coy == 'KKS' ? [
                            DB::raw($getTrsHedId->trsid),
                            "dbximporavalan.itemid",
                            "dbximporavalan.itembatchid",
                            "itemcode",
                            "itemname",
                            "heatno",
                            "dimension",
                            "tolerance",
                            "kondisi",
                            "qty",
                            "uom",
                            "tonase",
                            "cogs",
                            "statusitem",
                            "isbatch",
                            DB::raw(1)
                        ] : [
                            DB::raw($getTrsHedId->trsid),
                            "dbximporavalan.itemid",
                            "dbximporavalan.itembatchid",
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
                        ];

                        $selectDbxImpor = DB::table('dbximporavalan')
                            ->leftJoinSub($selectDbxImporDet, 'dbximpordetavalan', function (JoinClause $join) {
                                $join->on('dbximporavalan.itembatchid', '=', 'dbximpordetavalan.itembatchid');
                            })
                            ->select($columnDbxImpor);

                        $insertDbtTrsDet = $coy == 'KKS' ? [
                            "trsid",
                            "itemid",
                            "itembatchid",
                            "itemcode",
                            "itemname",
                            "heatno",
                            "dimension",
                            "tolerance",
                            "kondisi",
                            "onhand",
                            "uom",
                            "tonase",
                            "cogs",
                            "statusitem",
                            "isbatch",
                            "statuscso"
                        ]  : [
                            "trsid",
                            "itemid",
                            "itembatchid",
                            "itemcode",
                            "itemname",
                            "heatno",
                            "dimension",
                            "tolerance",
                            "kondisi",
                            "onhand",
                            "uom",
                            "cogs",
                            "statusitem",
                            "isbatch",
                            "statuscso"
                        ];

                        $insertDbttrsdet = DB::table('dbttrsdeta')->insertUsing($insertDbtTrsDet, $selectDbxImpor);

                        if ($insertDbttrsdet == true) {
                            $getTrsDet2 = DB::table('dbttrsdeta')
                                ->join('dbttrsheda', 'dbttrsheda.trsid', '=', 'dbttrsdeta.trsid')
                                ->select('trsdetid', 'itemid', 'itembatchid')
                                ->where('dbttrsheda.statusdoc', '=', 'A')->where('dbttrsheda.typecekstok', $request->typecekstok)
                                ->get();

                            foreach ($getTrsDet2 as $trsDet2) {
                                $selectDbxImporDet2 = DB::table('dbximpordetavalan')
                                    ->select(DB::raw($trsDet2->trsdetid), "itemid", "itembatchid", "wrh", "qty")
                                    ->where('itembatchid', '=', $trsDet2->itembatchid)->get();
                                
                                $groupWrh = [];
                                foreach($selectDbxImporDet2 as $det2)
                                {
                                    $tableGudang = DB::table('dbmgrade')->where('gradecode','=',$det2->wrh)->first();
                                    if(array_key_exists($tableGudang->group,$groupWrh))
                                    {
                                        $groupWrh[$tableGudang->group]['qty'] += $det2->qty;
                                    }
                                    else
                                    {
                                        $groupWrh[$tableGudang->group??$det2->wrh] = [
                                            'trsdetid' => $trsDet2->trsdetid,
                                            'itemid' => $det2->itemid??'',
                                            'itembatchid' => $det2->itembatchid,
                                            'wrh' => ($tableGudang->group=='' || $tableGudang->group==NULL) ? $det2->wrh : $tableGudang->group,
                                            'qty' => $det2->qty   
                                        ];
                                    }
                                }
                                $key = array_keys($groupWrh);
                                $insert = [];
                                foreach($key as $k)
                                {
                                    array_push($insert,$groupWrh[$k]);
                                }
                                
                                $insertDbtTrsdet2 = DB::table('dbttrsdet2a')->insert($insert);

                                if ($insertDbtTrsdet2 == false) {
                                    DB::rollBack();
                                    return redirect()->route("avalan.index", ['val' => $request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                                } 
                                // else {
                                //     $selectDbxImporDetBatch = DB::table('dbximpordetbatch')
                                //         ->select(DB::raw($trsDet2->trsdetid), "itemid", "itembatchid", "batchno", "kondisi", "dimension", "heatno", "tolerance", "gradeid", "onhandbatch", "onhandsecbatch")
                                //         ->where('itemid', '=', $trsDet2->itemid);

                                //     if (count($selectDbxImporDetBatch->get()) > 0) {
                                //         $insertDbtTrsDetBatch = DB::table('dbttrsdetbatch')->insertUsing(["trsdetid", "itemid", "itembatchid", "batchno", "kondisi", "dimension", "heatno", "tolerance", "gradeid", "onhandbatch", "onhandsecbatch"], $selectDbxImporDetBatch);
                                //         if ($insertDbtTrsDetBatch == false) {
                                //             DB::rollBack();
                                //             return redirect()->route("item.index", ['val' => $request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                                //         }
                                //     }
                                // }
                            }

                            DB::table('dbtcsoprsn')
                                ->where('trsid', '=', $getTrsHedId->trsid)
                                ->update(["status" => "P"]);

                            $finalise = DB::table("dbxsetdate")->insert(["date" => Carbon::now(), "tipe" => "I", 'typecekstok' => $request->typecekstok,'statuscekstok' => 'A']);
                            if ($finalise == true) {
                                DB::commit();
                                return redirect()->route("avalan.index", ['val' => $request->typecekstok])->with('status', "Berhasil memulai CSO");
                            } else {
                                DB::rollBack();
                                return redirect()->route("avalan.index", ['val' => $request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                            }
                        } else {
                            DB::rollBack();
                            return redirect()->route("avalan.index", ['val' => $request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                        }
                    } else {
                        DB::rollBack();
                        return redirect()->route("avalan.index", ['val' => $request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                    }
                } else {
                    DB::rollBack();
                    return redirect()->route("pengaturan.index", ['val' => $request->typecekstok.'A'])->with('error', "Harap lakukan input tipe CSO dan Materialnya terlebih dahulu");
                }
            } else {
                DB::rollBack();
                return redirect()->route("import-avalan.index", ['val' => $request->typecekstok])->with('error', "Harap lakukan import batch terlebih dahulu");
            }
        } else if ($request->typecekstok == 'CSS') {
            $checkDbxImport = DB::table('dbximporavalancss')->get();
            if (count($checkDbxImport) > 0) {
                $checkCsoMaterial = DB::table('dbxmaterial')
                                    ->where('typecekstok', $request->typecekstok)
                                    ->where('statuscekstok','A')
                                    ->limit(1)
                                    ->get();
                $checkCsoType = DB::table('dbxcsotype')
                                ->where('csotype', $request->typecekstok)
                                ->where('statuscekstok','A')
                                ->limit(1)
                                ->get();
                $getCoy = Company::select('coycode')->first();
                $coy = strtoupper(substr($getCoy->coycode, 0, 3));

                if (count($checkCsoMaterial) > 0 && count($checkCsoType) > 0) {
                    $checkMonth = DB::table('dbttrsheda')
                        ->select(DB::raw("DATE_FORMAT(startcsodate, '%m') as monthbefore"), 'idxno')->where('typecekstok', $request->typecekstok)
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

                    $insertDbttrshed = DB::table('dbttrsheda')->insert([
                        'doccsoid' => $doccsoid,
                        'typecekstok' => $checkCsoType[0]->csotype,
                        'startcsodate' => $today,
                        'idxno' => $idxno,
                        'csomaterial' => $checkCsoMaterial[0]->csomaterial,
                        'statusdoc' => 'A'
                    ]);

                    if ($insertDbttrshed == true) {
                        $getTrsHedId = DB::table('dbttrsheda')->select('trsid')->where('statusdoc', '=', 'A')
                            ->where('typecekstok', $request->typecekstok)->first();
                        $selectDbxImporDet = DB::table('dbximpordetavalancss')->select('itembatchid', DB::raw('sum(qty)as qty'))->groupBy('itembatchid');
                        $columnDbxImpor = $coy == 'KKS' ? [
                            DB::raw($getTrsHedId->trsid),
                            "dbximporavalancss.itemid",
                            "dbximporavalancss.itembatchid",
                            "itemcode",
                            "itemname",
                            "heatno",
                            "dimension",
                            "tolerance",
                            "kondisi",
                            "qty",
                            "uom",
                            "tonase",
                            "cogs",
                            "statusitem",
                            "isbatch",
                            DB::raw(1)
                        ] : [
                            DB::raw($getTrsHedId->trsid),
                            "dbximporavalancss.itemid",
                            "dbximporavalancss.itembatchid",
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
                        ];

                        $selectDbxImpor = DB::table('dbximporavalancss')
                            ->leftJoinSub($selectDbxImporDet, 'dbximpordetavalancss', function (JoinClause $join) {
                                $join->on('dbximporavalancss.itembatchid', '=', 'dbximpordetavalancss.itembatchid');
                            })
                            ->select($columnDbxImpor);

                        $insertDbtTrsDet = $coy == 'KKS' ? [
                            "trsid",
                            "itemid",
                            "itembatchid",
                            "itemcode",
                            "itemname",
                            "heatno",
                            "dimension",
                            "tolerance",
                            "kondisi",
                            "onhand",
                            "uom",
                            "tonase",
                            "cogs",
                            "statusitem",
                            "isbatch",
                            "statuscso"
                        ]  : [
                            "trsid",
                            "itemid",
                            "itembatchid",
                            "itemcode",
                            "itemname",
                            "heatno",
                            "dimension",
                            "tolerance",
                            "kondisi",
                            "onhand",
                            "uom",
                            "cogs",
                            "statusitem",
                            "isbatch",
                            "statuscso"
                        ];

                        $insertDbttrsdet = DB::table('dbttrsdeta')->insertUsing($insertDbtTrsDet, $selectDbxImpor);

                        if ($insertDbttrsdet == true) {
                            $getTrsDet2 = DB::table('dbttrsdeta')
                                ->join('dbttrsheda', 'dbttrsheda.trsid', '=', 'dbttrsdeta.trsid')
                                ->select('trsdetid', 'itemid', 'itembatchid')
                                ->where('dbttrsheda.statusdoc', '=', 'A')->where('dbttrsheda.typecekstok', $request->typecekstok)
                                ->get();

                            foreach ($getTrsDet2 as $trsDet2) {
                                $selectDbxImporDet2 = DB::table('dbximpordetavalancss')
                                    ->select(DB::raw($trsDet2->trsdetid), "itemid", "itembatchid", "wrh", "qty")
                                    ->where('itembatchid', '=', $trsDet2->itembatchid)->get();

                                $groupWrh = [];
                                foreach($selectDbxImporDet2 as $det2)
                                {
                                    $tableGudang = DB::table('dbmgrade')->where('gradecode','=',$det2->wrh)->first();
                                    if(array_key_exists($tableGudang->group,$groupWrh))
                                    {
                                        $groupWrh[$tableGudang->group]['qty'] += $det2->qty;
                                    }
                                    else
                                    {
                                        $groupWrh[$tableGudang->group??$det2->wrh] = [
                                            'trsdetid' => $trsDet2->trsdetid,
                                            'itemid' => $det2->itemid??'',
                                            'itembatchid' => $det2->itembatchid,
                                            'wrh' => ($tableGudang->group=='' || $tableGudang->group==NULL) ? $det2->wrh : $tableGudang->group,
                                            'qty' => $det2->qty   
                                        ];
                                    }
                                }
                                $key = array_keys($groupWrh);
                                $insert = [];
                                foreach($key as $k)
                                {
                                    array_push($insert,$groupWrh[$k]);
                                }

                                $insertDbtTrsdet2 = DB::table('dbttrsdet2a')->insert($insert);

                                if ($insertDbtTrsdet2 == false) {
                                    DB::rollBack();
                                    return redirect()->route("avalan.index", ['val' => $request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                                } 
                                // else {
                                //     $selectDbxImporDetBatch = DB::table('dbximpordetbatchcss')
                                //         ->select(DB::raw($trsDet2->trsdetid), "itemid", "itembatchid", "batchno", "kondisi", "dimension", "heatno", "tolerance", "gradeid", "onhandbatch", "onhandsecbatch")
                                //         ->where('itemid', '=', $trsDet2->itemid);

                                //     if (count($selectDbxImporDetBatch->get()) > 0) {
                                //         $insertDbtTrsDetBatch = DB::table('dbttrsdetbatch')->insertUsing(["trsdetid", "itemid", "itembatchid", "batchno", "kondisi", "dimension", "heatno", "tolerance", "gradeid", "onhandbatch", "onhandsecbatch"], $selectDbxImporDetBatch);
                                //         if ($insertDbtTrsDetBatch == false) {
                                //             DB::rollBack();
                                //             return redirect()->route("item.index", ['val' => $request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                                //         }
                                //     }
                                // }
                            }

                            DB::table('dbtcsoprsn')
                                ->where('trsid', '=', $getTrsHedId->trsid)
                                ->update(["status" => "P"]);

                            $finalise = DB::table("dbxsetdate")->insert(["date" => Carbon::now(), "tipe" => "I", 'typecekstok' => $request->typecekstok,'statuscekstok' => 'A']);
                            if ($finalise == true) {
                                DB::commit();
                                return redirect()->route("avalan.index", ['val' => $request->typecekstok])->with('status', "Berhasil memulai CSO");
                            } else {
                                DB::rollBack();
                                return redirect()->route("avalan.index", ['val' => $request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                            }
                        } else {
                            DB::rollBack();
                            return redirect()->route("avalan.index", ['val' => $request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                        }
                    } else {
                        DB::rollBack();
                        return redirect()->route("avalan.index", ['val' => $request->typecekstok])->with('error', "Gagal memulai CSO, silahkan ulangi");
                    }
                } else {
                    DB::rollBack();
                    return redirect()->route("pengaturan.index", ['val' => $request->typecekstok.'A'])->with('error', "Harap lakukan input tipe CSO dan Materialnya terlebih dahulu");
                }
            } else {
                DB::rollBack();
                return redirect()->route("import-avalan.index", ['val' => $request->typecekstok])->with('error', "Harap lakukan import batch terlebih dahulu");
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
            ->select(DB::raw("dbtcsodet.csoid, dbtcsodet.trsdetid, dbtcsodet.itemid, dbtcsodet.itembatchid,  dbtcsodet.locationid, 'A', 'D', 'T'"))
            ->where('dbtcsodet.trsdetid', '=', $request->trsdetid)
            ->where('dbtcsodet.statussubmit', '=', 'P')
            ->whereRaw("(dbtcsodet.statushslcso = 'T' OR dbtcsodet.statushslcso = 'D')")
            ->where('dbtcsohed.status', '=', 'A')
            ->where('dbtcsohed.tipecso','A')
            ->whereRaw("(dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')");

        $insertDbtCsoDet = DB::table('dbtcsodet')->insertUsing(['csoid', 'trsdetid', 'itemid', 'itembatchid', 'locationid', 'statusitem', 'statussubmit', 'statushslcso'], $getDataDbtCsoDet);

        if ($insertDbtCsoDet == true) {

            $updateLCso = DB::table('dbtcsodet')
                ->leftJoin('dbtcsohed', 'dbtcsodet.csoid', '=', 'dbtcsohed.csoid')
                ->where('dbtcsodet.trsdetid', $request->trsdetid)
                ->where('dbtcsohed.status', 'A')
                ->where('dbtcsohed.tipecso', 'A')
                ->where('dbtcsodet.statussubmit', '=', 'P')
                ->whereRaw("(dbtcsodet.statushslcso = 'T' OR dbtcsodet.statushslcso = 'D') AND (dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')")
                ->update(['dbtcsodet.statushslcso' => 'C']);

            if ($updateLCso == true) {
                $updateDbtTrsDet = DB::table('dbttrsdeta')
                    ->where('trsdetid', $request->trsdetid)
                    ->increment('statuscso');
                if ($updateDbtTrsDet == true) {
                    $getDbtTrsDet = DB::table('dbttrsdeta')
                        ->join('dbttrsheda', 'dbttrsdeta.trsid', '=', 'dbttrsheda.trsid')
                        ->select('statuscso')
                        ->where('trsdetid', $request->trsdetid)
                        ->first();

                    $getDbtCsoDetOnDbtCsoHed = DB::table('dbtcsodet')
                        ->leftJoin('dbtcsohed', 'dbtcsohed.csoid', '=', 'dbtcsodet.csoid')
                        ->select(['dbtcsodet.csodetid', 'dbtcsodet.csoid', DB::raw("'$getDbtTrsDet->statuscso' AS csocount")])
                        ->where('dbtcsodet.trsdetid', '=', $request->trsdetid)
                        ->where('dbtcsodet.statushslcso', '=', 'T')
                        ->where('dbtcsohed.status', '=', 'A')
                        ->where('dbtcsohed.tipecso', '=', 'A')
                        ->whereRaw("(dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')");


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
            return response()->json(['result' => 0, 'message' => 'Gagal insert dbtcsodet']);
        }
    }

    public function updateCsoAvalan(Request $request)
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
        if ($request->groupValue != '') {
            $groupValue = $request->groupValue;
        } else {
            $groupValue = null;
        }
        
        $updateDetailItem = DB::table('dbttrsdeta')
            ->where('itembatchid', $request->itembatchid)
            ->where('dbttrsdeta.trsdetid', '=', $request->trsdetid)
            ->update([
                'koreksi' => $request->koreksi,
                'deviasi' => $request->deviasi,
                'analisatorid' => $request->analisator,
                'keterangan' => $request->keterangan,
                'groupid' => $request->grouping,
                'kesalahan_admin' => $kesalahan,
                "batch_tertukar" => $batch_tertukar,
                "analisator_checked" => $checked,
                "tidak_hitung" => $hitung,
                "group_value" => $groupValue
            ]);

        if ($updateDetailItem == true) {
            DB::commit();
            return redirect()->route("avalan.index", ['val' => $request->typecekstok,'search'=>$request->searchCSO])->with('status', "Berhasil mengubah data ".$request->typecekstok." batch");
        } else {
            DB::rollBack();
            return redirect()->route("avalan.index", ['val' => $request->typecekstok,'search'=>$request->searchCSO])->with('error', "Gagal mengubah data ".$request->typecekstok." batch");
        }
    }

    public function setAnalisatorAvalan(Request $request)
    {
        DB::beginTransaction();
        $item = json_decode($request->item);
        $view = "";
        
        foreach ($item as $i) {
            $updateDetailItem = DB::table('dbttrsdeta')
                ->where('dbttrsdeta.trsdetid', '=', $i)
                ->update(['analisatorid' => $request->analisator]);
        }

        $dbxjob = DB::table('dbxjob')
            ->where('jobtypeid', '=', 2)
            ->where('typecekstok', $request->typecekstok)
            ->where('statuscekstok','A')
            ->get();
        $group = Group::all();
        $collectedBatch = collect(DB::select('CALL DashboardAvalan()'))->where('typecekstok', $request->typecekstok);
        $countAnalisator = $collectedBatch->where('analisatorid','<>',null);
        if ($request->type == 0) {
            $batchBlmProses = $collectedBatch->where('status', '=', '0');

            $view = view("admin.dashboard.table.avalan.avalan-belum-proses", [
                "batchBlmProses" => $batchBlmProses,
                "dbxjob" => $dbxjob,
                "dbmgroup" => $group
            ]);
        } elseif ($request->type == 1) {
            $batchOk = $collectedBatch->where('status', '=', '3');

            $view = view("admin.dashboard.table.avalan.avalan-ok", [
                "batchSelesai" => $batchOk,
                "dbxjob" => $dbxjob,
                "dbmgroup" => $group
            ]);
        } else {
            $batchSelisihPlus = $collectedBatch->where('status', '=', '2');
            $batchSelisihMinus = $collectedBatch->where('status', '=', '1');
            $view = view("admin.dashboard.table.avalan.avalan-selisih", [
                "batchSelisihPlus" => $batchSelisihPlus,
                "batchSelisihMinus" => $batchSelisihMinus,
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

    public function showDetailCsoAvalan(Request $request)
    {
        $param = json_decode($request->param, true);

        $dataAnalisator = DB::table('dbttrsdeta')
            ->join('dbttrsheda', 'dbttrsheda.trsid', '=', 'dbttrsdeta.trsid')
            ->leftJoin('dbmuser', 'dbttrsdeta.analisatorid', '=', 'dbmuser.userid')
            ->select(["dbttrsdeta.analisatorid", "name"])
            ->where('trsdetid', '=', $param['trsdetid'])
            ->where('dbttrsheda.typecekstok', $request->typecekstok)
            ->whereNot('dbttrsheda.statusdoc', '=', 'P')
            ->whereNotNull('analisatorid')
            ->get();
            
        $dataTertukar = DB::table('dbttrsdeta')
            ->join('dbttrsheda', 'dbttrsheda.trsid', '=', 'dbttrsdeta.trsid')
            ->leftJoin('dbmgroup', 'dbmgroup.groupid', '=', 'dbttrsdeta.groupid')
            ->select(["dbttrsdeta.groupid", "dbmgroup.groupdesc"])
            ->where('trsdetid', '=', $param['trsdetid'])
            ->whereNot('dbttrsheda.statusdoc', '=', 'P')
            ->whereNotNull('dbttrsdeta.groupid')
            ->get();
            
        $dataAdminBatch = DB::table('dbttrsdeta')
            ->join('dbttrsheda', 'dbttrsheda.trsid', '=', 'dbttrsdeta.trsid')
            ->select(['kesalahan_admin', 'batch_tertukar', 'analisator_checked', 'tidak_hitung'])
            ->where('dbttrsdeta.trsdetid', '=', $param['trsdetid'])
            ->whereNot('dbttrsheda.statusdoc', '=', 'P')
            ->get();

        $cekCso = DB::table('dbtcsodet2')
            ->select('dbtcsodet2.csodet2id')
            ->leftJoin('dbtcsodet', 'dbtcsodet.csodetid', '=', 'dbtcsodet2.csodetid')
            ->leftJoin('dbtcsohed', 'dbtcsohed.csoid', '=', 'dbtcsodet2.csoid')
            ->leftJoin('dbttrsdeta', 'dbttrsdeta.trsdetid', '=', 'dbtcsodet.trsdetid')
            ->where('dbtcsodet.trsdetid', '=', $param['trsdetid'])
            ->where('dbtcsohed.typecekstok', $request->typecekstok)
            ->whereNotNull('dbtcsodet2.qty')
            ->whereColumn('dbtcsodet2.csocount', 'dbttrsdeta.statuscso')
            ->where('statussubmit', 'P')
            ->where('dbtcsohed.status', 'A')
            ->where('dbtcsohed.tipecso', 'A')
            ->whereRaw("(dbtcsodet.statusitem = 'A' OR dbtcsodet.statusitem = 'TA')")
            ->get();

        $cekItem = DB::table('dbttrsdeta')
            ->select('dbttrsdeta.statusitem', 'dbttrsdeta.trsid', 'dbttrsdeta.statuscso', 'dbttrsdeta.analisatorid')
            ->leftjoin('dbttrsheda', 'dbttrsheda.trsid', '=', 'dbttrsdeta.trsid')
            ->where('dbttrsdeta.trsdetid', '=', $param['trsdetid'])
            ->where('dbttrsheda.typecekstok', $request->typecekstok)
            ->whereNot('dbttrsheda.statusdoc', '=', 'P')
            ->first();

        $dataDetailDashboard = collect(DB::select('CALL DashboardAvalanDetail(?)', [$param['trsdetid']]))->where('typecekstok', $request->typecekstok);

        $wrhItem = DB::table('dbttrsdet2a')->select('wrh', 'qty')->where('trsdetid', $param['trsdetid'])->get();

        $warehouse = [];
    
        foreach($wrhItem as $idx => $wh)
        {
            $warehouse[$wh->wrh]=['wrh' => $wh->wrh, 'qty' => $wh->qty,'check' => 0];
        }
        $dataPicPerCSO =  $dataDetailDashboard->unique('username');
        
        $dataCso = [];
        foreach ($dataPicPerCSO as $picCso) {
            $tempData = [];
            $tempData['name'] = $picCso->name;
            for ($i = 1; $i <= 4; $i++) {
                $tempCSO = $dataDetailDashboard->where('username', $picCso->username)->where('csocount', $i);
                if (count($tempCSO) > 0) $tempData["cso$i"] = $tempCSO->sum('qty');
                else $tempData["cso$i"] = 0;
            }

            $tempCSO = $dataDetailDashboard->where('username', $picCso->username)->where('csocount', $cekItem->statuscso);
            
            foreach($tempCSO as $tempCSO1)
            {
                $check = $tempCSO1->grade;
                if( array_key_exists($check,$warehouse))
                {   
                    $warehouse[$check]['check']+=$tempCSO1->qty;
                }
            }

            array_push($dataCso, $tempData);
        }

        $dataGroup = Group::all();

        $dataDbxJob = DB::table('analisator')
            ->select(['userid', 'name'])->where('typecekstok', $request->typecekstok)->where('statuscekstok','A')
            ->distinct()
            ->get();

        $coycode = Company::select('coycode','usewrhgrp')->first();

        if (strtoupper(substr($coycode->coycode, 0, 3)) == 'KKS') {
            $returnedData = [
                "itembatchid" => $param['itembatchid'],
                "trsdetid" => $param['trsdetid'],
                // 'batchItem' => $dataBatchItem,
                "onhand" => $param['onhand'],
                "totalcso" => $param['totalcso'],
                "selisih" => $param['selisih'],
                "koreksi" => $param['koreksi'],
                "deviasi" => $param['deviasi'],
                "keterangan" => $param['keterangan'],
                "tonaseTotal" => $param['tonase'],
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
                "useWrhGrp" => $coycode->usewrhgrp,
                'wrhItem' => $warehouse
            ];
        } else {
            $returnedData = [
                "itembatchid" => $param['itembatchid'],
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
                "useWrhGrp" => $coycode->usewrhgrp,
                // 'wrhItem' => $wrhItem
                'wrhItem' => $warehouse
            ];
        }
        return view('admin.dashboard.table.avalan.detail-cso-avalan', $returnedData);
    }

    public function showHistoryTransaksi(Request $request)
    {
        $companyID = config('values.companyId');
        $token = Http::get('http://allapi.local.sutindo.net/getToken');
        $getHistoryTransaksi = Http::post('http://allapi.local.sutindo.net/sos/getHistoryTransaksi', [
            "token" => $token['token'],
            "companyId" => $companyID,
            // "itemid"=>  "14554",
            "itemid" =>  $request->itemid,
            "tipe" => $request->tipe ?? "",
            "warehouse" =>  $request->warehouse ?? "",
            "tanggal" => $request->tanggal ?? ""
        ]);

        return DataTables::of($getHistoryTransaksi['data'])
            ->addIndexColumn()
            ->make();
    }

    public function hapusTemuanAvalan(Request $request) // done 
    {
        DB::beginTransaction();
        
        $deleteDataFromDbtTrsDet = DB::table('dbttrsdeta')
            ->where('dbttrsdeta.itembatchid', '=', $request->itembatchid)
            ->where('dbttrsdeta.trsdetid', '=', $request->trsdetid)
            ->delete();

        if ($deleteDataFromDbtTrsDet == true) {

            if ($request->typecekstok == 'CSO') {
                $deleteDataFromDbxImpor = DB::table('dbximporavalan')
                    ->where('dbximporavalan.itembatchid', '=', $request->itembatchid)
                    ->delete();
            } else if ($request->typecekstok == 'CSS') {
                $deleteDataFromDbxImpor = DB::table('dbximporavalancss')
                    ->where('dbximporavalancss.itembatchid', '=', $request->itembatchid)
                    ->delete();
            }

            if ($deleteDataFromDbxImpor == true) {
                $getCSODetData = DB::table('dbtcsodet')->where('dbtcsodet.trsdetid', '=', $request->trsdetid)->where('statusitem','TA');
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

        DB::table('dbttrsheda')
            ->where('statusdoc', '=', 'A')->where('typecekstok', $request->typecekstok)
            ->update(['endcsodate' => Carbon::now(), 'statusdoc' => 'E']);

        $insertDbtCsoPrsn = DB::insert("INSERT INTO dbtcsoprsn (trsid,userid,username,name,coyid,jobtypeid,status,tipecso)
        SELECT DISTINCT ch.trsid,userid,username,name,j.coyid,jobtypeid,'D','A' as status FROM dbxjob j 
        INNER JOIN dbtcsohed ch ON j.userid = ch.pelakuid 
        WHERE ch.trsid = (SELECT trsid FROM dbttrsheda WHERE statusdoc='E' ORDER BY trsid DESC LIMIT 1) AND ch.tipecso  = 'A' AND j.typecekstok = '" . $request->typecekstok . "' AND j.statuscekstok = 'A'
        UNION 
        SELECT DISTINCT td.trsid,userid,username,name,j.coyid,jobtypeid,'D','A' as status FROM dbxjob j 
        INNER JOIN dbttrsdeta td ON td.analisatorid =j.userid
        WHERE j.typecekstok = '" . $request->typecekstok . "' AND j.statuscekstok = 'A' AND
        td.trsid = (SELECT trsid FROM dbttrsheda WHERE statusdoc='E' ORDER BY trsid DESC LIMIT 1)");

        if ($insertDbtCsoPrsn == true) {
            DB::commit();
            return redirect()->route("avalan.index", ['val' => $request->typecekstok])->with('status', $request->typecekstok . ' Item berhasil diberhentikan');
        } else {
            DB::rollBack();
            return redirect()->route("avalan.index", ['val' => $request->typecekstok])->with('error', 'Gagal memberhentikan' . $request->typecekstok . 'Item');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        // DB::beginTransaction();

        $updateDbtTrsHed = DB::table('dbttrshed')
            ->where('statusdoc', '=', 'E')->where('typecekstok', $request->typecekstok)
            ->update(['statusdoc' => 'P']);

        if ($request->typecekstok == 'CSO') {
            DB::table('dbximpor')->truncate();
            DB::table('dbximpordet')->truncate();
        } else if ($request->typecekstok == 'CSS') {
            DB::table('dbximporcss')->truncate();
            DB::table('dbximpordetcss')->truncate();
        }

        DB::table('dbxsetdate')->where('tipe', '=', 'I')->where('typecekstok', $request->typecekstok)->delete();

        DB::table('dbxmaterial')->where('typecekstok', $request->typecekstok)->delete();

        DB::table('dbtcsohed')->where('typecekstok', $request->typecekstok)
            ->update(['status' => 'P']);

        DB::table('dbtcsoprsn')->where('typecekstok', $request->typecekstok)
            ->update(['status' => 'P']);

        DB::table('dbxjob')->where('typecekstok', $request->typecekstok)->delete();

        // if($updateDbtTrsHed == true ) {
        DB::commit();
        return redirect()->route("avalan.index", ['val' => $request->typecekstok])->with('status', $request->typecekstok . ' berhasil diakhiri');

    }
}