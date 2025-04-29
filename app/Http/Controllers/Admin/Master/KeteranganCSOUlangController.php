<?php

namespace App\Http\Controllers\Admin\Master;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\KeteranganCSOUlang;
use Illuminate\Http\Request;

class KeteranganCSOUlangController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $keterangan = KeteranganCSOUlang::all();
        return view("admin.master.keterangan-cso-ulang",["keterangan"=> $keterangan]);
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
        $data = new KeteranganCSOUlang;
        $data->keterangan = $request->keterangan;        
        $data->save();
        return redirect()->route("keterangan-cso-ulang.index");
    }

    /**
     * Display the specified resource.
     */
    public function show(KeteranganCSOUlang $keteranganCSOUlang)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(KeteranganCSOUlang $keteranganCSOUlang)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {             
        $keteranganCSOUlang = KeteranganCSOUlang::findOrFail($request->id);
        $keteranganCSOUlang->keterangan = $request->keterangan;
        $keteranganCSOUlang->save();
        return redirect()->route("keterangan-cso-ulang.index")->with('status', 'Data keterangan cso ulang berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        try {
            KeteranganCSOUlang::findOrFail($request->id)->delete();
            return redirect()->route("keterangan-cso-ulang.index")->with('status', 'Data keterangan berhasil dihapus');
        } catch(\PDOException $e) {
            $msg = "Data gagal dihapus karena data ini merupakan data parent dari tabel lain";
            return redirect()->route("keterangan-cso-ulang.index")->with('error', $msg);
        }
    }
}
