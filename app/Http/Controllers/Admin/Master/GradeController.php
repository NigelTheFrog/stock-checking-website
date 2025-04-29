<?php

namespace App\Http\Controllers\Admin\Master;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\Grade;
use Illuminate\Http\Request;
use App\Models\Admin\Master\Company;


class GradeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $gradeData = Grade::all();
        $company = Company::all();
        return view("admin.master.grade",["grade"=> $gradeData,"useWrhGrp" => $company[0]->usewrhgrp]);
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
        $data = new Grade;
        $data->gradecode = $request->code;   
        $data->description = $request->deskripsi;           
        $data->group = $request->groupGudang;           
        $data->save();
        return redirect()->route("grade.index");
    }

    /**
     * Display the specified resource.
     */
    public function show(Grade $grade)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Grade $grade)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Grade $grade)
    {
        $grade->description = $request->deskripsi;
        $grade->group = $request->groupGudang;
        $grade->save();
        return redirect()->route("grade.index")->with('status', 'Data grade berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Grade $grade)
    {
        try {
            $grade->delete();
            return redirect()->route("grade.index")->with('status', 'Data grade berhasil dihapus');
        } catch(\PDOException $e) {
            $msg = "Data gagal dihapus karena data ini merupakan data parent dari tabel lain";
            return redirect()->route("grade.index")->with('error', $msg);
        }
    }
}
