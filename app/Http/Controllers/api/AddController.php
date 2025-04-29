<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\AreaLokasi;
use App\Models\Admin\Master\Grade;
use App\Models\Admin\Master\Warna;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AddController extends Controller
{
    public function item(Request $request) {
        $item = DB::table('dbttrsdet')
        // ->join('dbttrshed', 'dbttrshed.trsid', '=', 'dbttrsdet.trsid')
        // ->where('dbttrshed.statusdoc', '=', 'A')
        ->where('trsid','=',$request->trsid)
        ->get();
        return response()->json(['data'=>$item]); 
    }

    public function avalan(Request $request) {
        $avalan= DB::table('dbttrsdeta')
        // ->join('dbttrsheda', 'dbttrsheda.trsid', '=', 'dbttrsdeta.trsid')
        // ->where('dbttrsheda.statusdoc', '=', 'A')
        ->where('trsid','=',$request->trsid)
        ->get();
        return response()->json(['data'=>$avalan]); 
    }  

    public function lokasi() {
        $lokasi = AreaLokasi::orderBy('locationcode')->get();
        return response()->json(['data'=>$lokasi]); 
    }

    public function warna() {
        $warna = Warna::all()->sortBy('colordesc');
        return response()->json(['data'=>$warna]); 
    }

    public function grade() {
        $grade = Grade::all()->sortBy('gradecode');
        return response()->json(['data'=>$grade]); 
    }   
}
