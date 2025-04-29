<?php

namespace App\Http\Controllers\Admin\Master;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\AreaLokasi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Http;

class AreaLokasiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $lokasi = AreaLokasi::orderBy('locationcode')->get();
        return view("admin.master.area-lokasi",["lokasi"=> $lokasi]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = new AreaLokasi;
        $data->locationcode = $request->locationcode;
        $data->locationname = $request->namalokasi;        
        $data->created_by = Auth::user()->username;
        $data->save();
        return redirect()->route("area-lokasi.index");
    }

    /**
     * Display the specified resource.
     */
    public function show(AreaLokasi $areaLokasi)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(AreaLokasi $areaLokasi)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, AreaLokasi $areaLokasi)
    {
        // $areaLokasi->locationcode = $request->locationcode;
        $areaLokasi->locationname = $request->namalokasi;
        $areaLokasi->updated_by = Auth::user()->username;
        $areaLokasi->save();
        return redirect()->route("area-lokasi.index")->with('status', 'Data lokasi berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(AreaLokasi $areaLokasi)
    {
        try {
            $areaLokasi->delete();
            return redirect()->route("area-lokasi.index")->with('status', 'Data lokasi berhasil dihapus');
        } catch(\PDOException $e) {
            $msg = "Data gagal dihapus karena data ini merupakan data parent dari tabel lain";
            return redirect()->route("area-lokasi.index")->with('error', $msg);
        }
    }

    public function setLokasi(Request $request)
    {
        AreaLokasi::query()->update(['isdefault' => 0]);
        $specificLokasi = AreaLokasi::findOrFail($request->locationid);
        $specificLokasi->isdefault = 1;
        $specificLokasi->save();
        return ['status' => 1];
    }

    public function SearchLokasi(Request $request)
    {
        // return "lokasi";
        // dd($request);
        if($request->lokasi!=""){
            $name="%".$request->lokasi."%";
            $lokasiData = DB::select('SELECT * from dbmlocation 
            WHERE locationname LIKE "'.$name.'" OR locationcode LIKE "'.$name.'" ORDER BY locationcode');
            $div="";
            $i=1;
            foreach($lokasiData as $loct)
            {
                $div.='<tr class="text-center">
                                <td class="align-middle">'.$i.'</td>
                                <td class="align-middle">'.$loct->locationcode.'</td>
                                <td class="align-middle">'.$loct->locationname.'</td>
                                <td class="align-middle"> 
                                    <button type="button" onclick="openModalEdit(this)" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target=""><i class="bi bi-pencil-square"></i></button>
                                    <button type="button" onclick="openModalDelete(this)" class="btn btn-danger btn-sm" title="Hapus User" id="btnHapus" data-id=""><i class="bi bi-trash-fill"></i></button>
                                </td>
                                <td hidden>'.$loct->locationid.'</td>
                            </tr>';

                $i+=1;
            }
            return $div;
        }
        else
        {
            $name="%".$request->lokasi."%";
            $lokasiData = DB::select('SELECT * from dbmlocation 
            ORDER BY locationcode');
            $div="";
            $i=1;
            foreach($lokasiData as $loct)
            {
                $div.='<tr class="text-center">
                                <td class="align-middle">'.$i.'</td>
                                <td class="align-middle">'.$loct->locationcode.'</td>
                                <td class="align-middle">'.$loct->locationname.'</td>
                                <td class="align-middle"> 
                                    <button type="button" onclick="openModalEdit(this)" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target=""><i class="bi bi-pencil-square"></i></button>
                                    <button type="button" onclick="openModalDelete(this)" class="btn btn-danger btn-sm" title="Hapus User" id="btnHapus" data-id=""><i class="bi bi-trash-fill"></i></button>
                                </td>
                                <td hidden>'.$loct->locationid.'</td>
                            </tr>';

                $i+=1;
            }
            return $div;
        }
    }
}
