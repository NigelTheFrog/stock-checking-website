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

    public function grade(Request $request) {
        if($request->statusitem == 'TR' || $request->statusitem == 'TA') $grade = Grade::all()->sortBy('gradecode');
        // else $grade = DB::table('dbmgrade')
        //     ->join('dbttrsdet2','dbmgrade.gradecode','=','dbttrsdet2.wrh')
        //     ->where('dbttrsdet2.trsdetid','=',$request->trsdetid)
        //     ->orderBy('gradecode')
        //     ->get();
        // else $grade = DB::table('dbttrsdet2')->select(DB::raw('wrh as gradecode'),DB::raw('coalesce(db)'))
        //         ->join('dbmgrade','dbmgrade.gradecode','=','dbttrsdet2.wrh')
        //         ->where('trsdetid','=',$request->trsdetid)->get();

        //<gradecode> <description>
        else
        {
            $dbttrsdet2 = db::table('dbttrsdet2')->select('wrh')
            ->where('trsdetid','=',$request->trsdetid)
            ->get();
            $tableGrade = DB::table('dbmgrade')->get();
            $grade = [];
            $check = [];
            
            foreach($dbttrsdet2 as $wrh)
            {
                foreach($tableGrade as $gdg)
                {
                    if($gdg->gradecode == $wrh->wrh)
                    {
                        array_push($grade,['description' => $gdg->description, 'gradecode' => $gdg->gradecode]);
                    }
                    elseif ($gdg->group == $wrh->wrh)
                    {
                        if(in_array($gdg->group,$check)) continue;
                        array_push($grade,['description' => $gdg->group, 'gradecode' => $gdg->group]);
                        array_push($check,$gdg->group);
                    }
                }
            }
            
            
            // array_push($grade,['description' => 'test1', 'gradecode' => 'test1']);
        }
        // return response()->json(((object)$grade)); 
        // return response()->json(['data'=>$dbttrsdet2]); 
        return response()->json(['data'=>$grade]); 
    }
}
