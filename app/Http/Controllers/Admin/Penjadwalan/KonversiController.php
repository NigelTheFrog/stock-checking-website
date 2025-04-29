<?php

namespace App\Http\Controllers\Admin\Penjadwalan;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\AreaLokasi;
use App\Models\Admin\Master\Company;
use App\Models\Admin\Penjadwalan\ImportItem;
use Carbon\Carbon;
use Exception;
use Illuminate\Database\Query\JoinClause;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class KonversiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $param)
    {
        $coy = Company::all();
        $dataCoy = substr($coy[0]->coycode,4);
        return view("admin.penjadwalan.konversi",["item"=> [],'dataCoy'=>$dataCoy]);

    }

    public function submit(Request $request)
    {
        if($request->typecekstok == 'CSS')
        {
            $table = DB::table('dbximporcss')
            ->select(
                'itemcode',
                'itemname',
                'konversi_1',
                'konversi_2',
                'konversi_3',
                'std_berat_kemasan',
                'std_material_loss_minus',
                'std_material_loss_plus',
                'total_produksi',
            )->get();
        }
        else
        {
            $table = DB::table('dbximpor')
            ->select(
                'itemcode',
                'itemname',
                'konversi_1',
                'konversi_2',
                'konversi_3',
                'std_berat_kemasan',
                'std_material_loss_minus',
                'std_material_loss_plus',
                'total_produksi',
            )->get();
        }
        $object = view("admin.penjadwalan.item.table-konversi", 
        ["item" => $table ,"dataCoy"=>$request->dataCoy]);
        
        return (string)$object;
    }

    public function updateKonversi(Request $request)
    {
        DB::beginTransaction();
        $csoActive = DB::table('dbttrshed')->where('statusdoc', '=', 'A')
            ->where('typecekstok','=', $request->typecekstok)->orderByDesc('trsid')->first();
        if($request->arr['coy']!="LAB")
        {
            if($request->typecekstok == 'CSS')
            {
                $submit = DB::table('dbximporcss')->where('itemcode',$request->arr['itemCode'])
                ->update(['konversi_1'=>$request->arr['konversi_1'],
                'konversi_2'=>$request->arr['konversi_2'],
                'konversi_3'=>$request->arr['konversi_3'],
                'std_berat_kemasan'=>$request->arr['beratKemasan'],
                'std_material_loss_minus'=>$request->arr['minus'],
                'std_material_loss_plus'=>$request->arr['plus'],
                'total_produksi'=>$request->arr['totalProduksi']
                ]);
            }
            else
            {
                $submit = DB::table('dbximpor')->where('itemcode',$request->arr['itemCode'])
                ->update(['konversi_1'=>$request->arr['konversi_1'],
                'konversi_2'=>$request->arr['konversi_2'],
                'konversi_3'=>$request->arr['konversi_3'],
                'std_berat_kemasan'=>$request->arr['beratKemasan'],
                'std_material_loss_minus'=>$request->arr['minus'],
                'std_material_loss_plus'=>$request->arr['plus'],
                'total_produksi'=>$request->arr['totalProduksi']
                ]);
            } 
            
            if($csoActive)
            {
                $active = db::table('dbttrsdet')
                ->join('dbttrshed','dbttrshed.trsid','=','dbttrsdet.trsid')
                ->where('dbttrshed.trsid','=',$csoActive->trsid)
                ->where('dbttrsdet.itemcode',$request->arr['itemCode'])
                ->update(['konversi_1'=>$request->arr['konversi_1'],
                'konversi_2'=>$request->arr['konversi_2'],
                'konversi_3'=>$request->arr['konversi_3'],
                'std_berat_kemasan'=>$request->arr['beratKemasan'],
                'std_material_loss_minus'=>$request->arr['minus'],
                'std_material_loss_plus'=>$request->arr['plus'],
                'total_produksi'=>$request->arr['totalProduksi']
                ]);
            }
        }
        else if($request->arr['coy']=="LAB")
        {
            // if($request->typecekstok == 'css')
            // {
            //     $submit = DB::table('dbximporcss')->where('itemcode',$request->arr['itemCode'])
            //     ->update(['konversi'=>$request->arr['konversi'],
            //     'std_berat_kemasan'=>$request->arr['beratKemasan'],
            //     'std_material_loss_minus'=>$request->arr['minus'],
            //     'std_material_loss_plus'=>$request->arr['plus'],
            //     'total_produksi'=>$request->arr['totalProduksi']
            //     ]);
            // }
            // else
            // {
            //     $submit = DB::table('dbximpor')->where('itemcode',$request->arr['itemCode'])
            //     ->update(['konversi'=>$request->arr['konversi'],
            //     'std_berat_kemasan'=>$request->arr['beratKemasan'],
            //     'std_material_loss_minus'=>$request->arr['minus'],
            //     'std_material_loss_plus'=>$request->arr['plus'],
            //     'total_produksi'=>$request->arr['totalProduksi']
            //     ]);
            // } 
            // $submit = DB::table('dbmitem')->where('itemcode',$request->arr['itemCode'])
            // ->update(['konversi'=>$request->arr['konversi'],
            //     'std_berat_kemasan'=>$request->arr['beratKemasan'],
            //     'toleransi_minus'=>$request->arr['minus'],
            //     'toleransi_plus'=>$request->arr['plus'],
            //     'std_toleransi'=>$request->arr['totalProduksi']
            // ]);
        }
        
        if($submit)
        {
            db::commit();
            return ['message'=>1,'data'=>$request->arr['itemCode']];
        }
        else
        {
            db::rollback();
            return ['message'=>0,'data'=>$request->arr['itemCode']];
        }
    }

    public function updateExcel(Request $request)
    {
        DB::beginTransaction();
        $csoActive = DB::table('dbttrshed')->where('statusdoc', '=', 'A')
            ->where('typecekstok','=', $request->typecekstok)->orderByDesc('trsid')->first();
        if($request->coy == "GDG")
        {
            if($request->typecekstok == 'CSS')
            {
                foreach($request->data as $data)
                {
                    if(DB::table('dbximporcss')->where('itemcode',$data['Item Code'])->exists()){
                        $submit = DB::table('dbximporcss')->where('itemcode',$data['Item Code'])
                        ->update(['konversi_1'=>$data['Konversi_1'],
                            'konversi_2'=>$data['Konversi_2'],
                            'konversi_3'=>$data['Konversi_3'],
                            'std_berat_kemasan'=>$data['Std Berat Kemasan'],
                            'std_material_loss_minus'=>$data['Material Loss Minus'],
                            'std_material_loss_plus'=>$data['Material Loss Plus'],
                            'total_produksi'=>$data['Total Produksi']
                        ]);

                        if($csoActive)
                        {
                            $active = db::table('dbttrsdet')
                            ->join('dbttrshed','dbttrshed.trsid','=','dbttrsdet.trsid')
                            ->where('dbttrshed.trsid','=',$csoActive->trsid)
                            ->where('dbttrsdet.itemcode',$data['Item Code'])
                            ->update(['konversi_1'=>$data['Konversi_1'],
                                'konversi_2'=>$data['Konversi_2'],
                                'konversi_3'=>$data['Konversi_3'],
                                'std_berat_kemasan'=>$data['Std Berat Kemasan'],
                                'std_material_loss_minus'=>$data['Material Loss Minus'],
                                'std_material_loss_plus'=>$data['Material Loss Plus'],
                                'total_produksi'=>$data['Total Produksi']
                            ]);
                        }
                    }
                }
            }
            else 
            {
                foreach($request->data as $data)
                {
                    if(DB::table('dbximpor')->where('itemcode',$data['Item Code'])->exists()){
                        $submit = DB::table('dbximpor')->where('itemcode',$data['Item Code'])
                        ->update(['konversi_1'=>$data['Konversi_1'],
                            'konversi_2'=>$data['Konversi_2'],
                            'konversi_3'=>$data['Konversi_3'],
                            'std_berat_kemasan'=>$data['Std Berat Kemasan'],
                            'std_material_loss_minus'=>$data['Material Loss Minus'],
                            'std_material_loss_plus'=>$data['Material Loss Plus'],
                            'total_produksi'=>$data['Total Produksi']
                        ]);

                        if($csoActive)
                        {
                            $active = db::table('dbttrsdet')
                            ->join('dbttrshed','dbttrshed.trsid','=','dbttrsdet.trsid')
                            ->where('dbttrshed.trsid','=',$csoActive->trsid)
                            ->where('dbttrsdet.itemcode',$data['Item Code'])
                            ->update(['konversi_1'=>$data['Konversi_1'],
                                'konversi_2'=>$data['Konversi_2'],
                                'konversi_3'=>$data['Konversi_3'],
                                'std_berat_kemasan'=>$data['Std Berat Kemasan'],
                                'std_material_loss_minus'=>$data['Material Loss Minus'],
                                'std_material_loss_plus'=>$data['Material Loss Plus'],
                                'total_produksi'=>$data['Total Produksi']
                            ]);
                        }
                    }
                }
            }
            // log::info($request->coy);
            // Log::info($p);
            db::commit();
            return ['message'=>1];

        }
        else
        {
            db::rollback();
            return 'ERROR';

        }
        
        return 0;
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
        //
    }
}
