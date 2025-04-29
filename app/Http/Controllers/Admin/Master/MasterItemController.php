<?php

namespace App\Http\Controllers\Admin\Master;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Http;
use App\Models\Admin\Master\Company;
use Illuminate\Support\Facades\Log;


class MasterItemController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $coy = Company::all();
        $dataCoy = substr($coy[0]->coycode,4);
        $trshed = DB::table('dbttrshed')
                ->select(
                'trsid',
                'doccsoid',
                'typecekstok',
                'csomaterial',
                'statusdoc'
                    )->get();
        $tipe = DB::table('dbmitem')->get();
        return view("admin.master.master-item",[
            "item"=> [],
            "dataCoy"=>$dataCoy,
            "document"=>$trshed,
            "statusDoc" => ""]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    public function getDocKonversi(Request $request)
    {
        // log::info($request->trsid.' , '.$request->statusDoc);
        $table = DB::table('dbttrsdet')
                ->select(
                    'trsdetid',
                    'itemcode',
                    'itemname',
                    'konversi_1',
                    'konversi_2',
                    'konversi_3',
                    'std_berat_kemasan',
                    'std_material_loss_minus',
                    'std_material_loss_plus',
                    'total_produksi'
                    )->where('trsid','=',$request->trsid)->get();
        $view = view("admin.master.table.table-konversi", 
        ["item" => $table ,"dataCoy"=>$request->dataCoy,"statusDoc"=>$request->statusDoc]);
        // log::info($object);
        // return ['view' => (string) $object, 'countAnalisator' => count($checkAnalisator)];
        // return (string)$object;
        return (string)$view;
    }

    public function submit(Request $request)
    {
        // log::info('TRSID '.$request->trsid);
        DB::beginTransaction();
        if($request->arr['coy']!="LAB")
        {
            $submit = DB::table('dbttrsdet')
                    ->join('dbttrshed','dbttrshed.trsid','=','dbttrsdet.trsid')
                    ->where('dbttrshed.trsid','=',$request->trsid)
                    ->where('dbttrsdet.trsdetid',$request->arr['trsdetid'])
                    ->update(['konversi_1'=>$request->arr['konversi_1'],
                        'konversi_2'=>$request->arr['konversi_2'],
                        'konversi_3'=>$request->arr['konversi_3'],
                        'std_berat_kemasan'=>$request->arr['beratKemasan'],
                        'std_material_loss_minus'=>$request->arr['minus'],
                        'std_material_loss_plus'=>$request->arr['plus'],
                        'total_produksi'=>$request->arr['totalProduksi']
                    ]);
            if($request->typecekstok == 'CSS')
            {
                $submitImpor = DB::table('dbximporcss')->where('itemcode',$request->arr['itemCode'])
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
                $submitImpor = DB::table('dbximpor')->where('itemcode',$request->arr['itemCode'])
                ->update(['konversi_1'=>$request->arr['konversi_1'],
                'konversi_2'=>$request->arr['konversi_2'],
                'konversi_3'=>$request->arr['konversi_3'],
                'std_berat_kemasan'=>$request->arr['beratKemasan'],
                'std_material_loss_minus'=>$request->arr['minus'],
                'std_material_loss_plus'=>$request->arr['plus'],
                'total_produksi'=>$request->arr['totalProduksi']
                ]);
            } 
            // $submit = DB::table('dbmitem')->where('itemcode',$request->arr['itemCode'])
            // ->update(['konversi'=>$request->arr['konversi'],
            //     'std_berat_kemasan'=>$request->arr['beratKemasan'],
            //     'std_material_loss_minus'=>$request->arr['minus'],
            //     'std_material_loss_plus'=>$request->arr['plus'],
            //     'total_produksi'=>$request->arr['totalProduksi']
            // ]); 
        }
        else if($request->arr['coy']=="LAB")
        {
            $submit = DB::table('dbmitem')->where('itemcode',$request->arr['itemCode'])
            ->update(['konversi'=>$request->arr['konversi'],
                'std_berat_kemasan'=>$request->arr['beratKemasan'],
                'toleransi_minus'=>$request->arr['minus'],
                'toleransi_plus'=>$request->arr['plus'],
                'std_toleransi'=>$request->arr['totalProduksi']
            ]);
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
        // Log::info($request->data[0]['Item Code']);

        DB::beginTransaction();
        if($request->coy == "GDG")
        {
            foreach($request->data as $data)
            {
                $item = db::table('dbttrsdet')->where('trsid','=',(int)$request->trsid)
                    ->where('itemcode','=',$data['Item Code'])->exists();

                if($item){
                    $submit = db::table('dbttrsdet')->where('trsid','=',(int)$request->trsid)
                    ->where('itemcode','=',$data['Item Code'])
                    ->update(['konversi_1'=>$data['Konversi_1'],
                        'konversi_2'=>$data['Konversi_2'],
                        'konversi_3'=>$data['Konversi_3'],
                        'std_berat_kemasan'=>$data['Std Berat Kemasan'],
                        'std_material_loss_minus'=>$data['Material Loss Minus'],
                        'std_material_loss_plus'=>$data['Material Loss Plus'],
                        'total_produksi'=>$data['Total Produksi']
                    ]);
                    if($request->typecekstok == 'CSS')
                    {
                        DB::table('dbximporcss')->where('itemcode',$data['Item Code'])
                        ->update(['konversi_1'=>$data['Konversi_1'],
                            'konversi_2'=>$data['Konversi_2'],
                            'konversi_3'=>$data['Konversi_3'],
                            'std_berat_kemasan'=>$data['Std Berat Kemasan'],
                            'std_material_loss_minus'=>$data['Material Loss Minus'],
                            'std_material_loss_plus'=>$data['Material Loss Plus'],
                            'total_produksi'=>$data['Total Produksi']
                        ]);
                    }
                    else
                    {
                        DB::table('dbximpor')->where('itemcode',$data['Item Code'])
                        ->update(['konversi_1'=>$data['Konversi_1'],
                            'konversi_2'=>$data['Konversi_2'],
                            'konversi_3'=>$data['Konversi_3'],
                            'std_berat_kemasan'=>$data['Std Berat Kemasan'],
                            'std_material_loss_minus'=>$data['Material Loss Minus'],
                            'std_material_loss_plus'=>$data['Material Loss Plus'],
                            'total_produksi'=>$data['Total Produksi']
                        ]);
                    }
                // if(DB::table('dbmitem')->where('itemcode',$data['Item Code'])->exists()){
                //     $submit = DB::table('dbmitem')->where('itemcode',$data['Item Code'])
                //     ->update(['konversi'=>$data['Konversi'],
                //         'std_berat_kemasan'=>$data['Std Berat Kemasan'],
                //         'std_material_loss_minus'=>$data['Material Loss Minus'],
                //         'std_material_loss_plus'=>$data['Material Loss Plus'],
                //         'total_produksi'=>$data['Total Produksi']
                //     ]);
                    // array_push($p,
                    //     ['itemcode' => $data['Item Code'],
                    //     'konversi'=>$data['Konversi'],
                    //     'std_berat_kemasan'=>$data['Std Berat Kemasan'],
                    //     'std_material_loss_minus'=>$data['Material Loss Minus'],
                    //     'std_material_loss_plus'=>$data['Material Loss Plus'],
                    //     'total_produksi'=>$data['Total Produksi']
                    // ]);
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
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {        
        // $data = new TipeUser;
        // $data->jobtypecode = $request->usertype;
        // $data->jobtypename = $request->deskripsi;
        // $data->created_by = Auth::user()->username;
        // $data->save();
        // return redirect()->route("tipe-user.index");
    }

    /**
     * Display the specified resource.
     */
    public function show(TipeUser $tipeUser)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(TipeUser $tipeUser)
    {
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, TipeUser $tipeUser)
    {
        // $tipeUser->jobtypecode = $request->usertype;
        // $tipeUser->jobtypename = $request->deskripsi;
        // $tipeUser->updated_by = Auth::user()->username;

        // $tipeUser->save();
        // return redirect()->route("tipe-user.index")->with('status', 'Data tipe-user berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(TipeUser $tipeUser)
    {
        // try {
        //     $tipeUser->delete();
        //     return redirect()->route("tipe-user.index")->with('status', 'Data tipe-user berhasil dihapus');
        // } catch(\PDOException $e) {
        //     $msg = "Data gagal dihapus karena data ini merupakan data parent dari tabel lain";
        //     return redirect()->route("tipe-user.index")->with('error', $msg);
        // }
    }
}
