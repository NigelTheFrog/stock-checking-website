<?php

namespace App\Http\Controllers\Admin\Master;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\Departemen;
use Illuminate\Http\Request;

class DepartemenController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $dept = Departemen::all();
        return view("admin.master.departemen",["dept"=> $dept]);
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
        $data = new Departemen;
        $data->departemen = $request->namaDepartemen;
        $data->save();
        return redirect()->route("departemen.index");
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {
        $departemen = Departemen::findOrFail($request->id);
        $departemen->departemen = $request->namaDepartemen;
        $departemen->save();
        return redirect()->route("departemen.index")->with('status', 'Data departemen berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        try {
            Departemen::findOrFail($request->id)->delete();
            return redirect()->route("departemen.index")->with('status', 'Data departemen berhasil dihapus');
        } catch(\PDOException $e) {
            $msg = "Data gagal dihapus karena data ini merupakan data parent dari tabel lain";
            return redirect()->route("departemeng.index")->with('error', $msg);
        }
    }
}
