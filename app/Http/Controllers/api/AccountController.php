<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\Company;
use App\Models\api\CsoHed;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AccountController extends Controller
{
    public function login(Request $request) {
        $loginCredentials = $request->only("username","password");
        if(Auth::attempt($loginCredentials)) {
            $getCSOIDItemUser = DB::table('dbtcsohed')
            ->join('dbmuser','dbtcsohed.pelakuid', '=', 'dbmuser.userid')
            ->join('dbttrshed','dbttrshed.trsid','=','dbtcsohed.trsid')
            ->select('dbtcsohed.trsid','csoid')
            ->where('dbtcsohed.pelakuid','=',Auth::user()->userid)
            ->where('dbtcsohed.status','=','A')            
            ->where('dbtcsohed.tipecso','=','R')
            ->where('dbttrshed.typecekstok','=','CSO')
            ->orderByDesc('csoid')
            ->first();

            $getCSOIDAvalanUser = DB::table('dbtcsohed')
            ->join('dbmuser','dbtcsohed.pelakuid', '=', 'dbmuser.userid')
            ->join('dbttrsheda','dbttrsheda.trsid','=','dbtcsohed.trsid')
            ->select('dbtcsohed.trsid','csoid')
            ->select('dbtcsohed.trsid','csoid')
            ->where('dbtcsohed.pelakuid','=',Auth::user()->userid)
            ->where('dbtcsohed.status','=','A')
            ->where('dbtcsohed.tipecso','=','A')
            ->where('dbttrsheda.typecekstok','=','CSO')
            ->orderByDesc('csoid')
            ->first();

            $getCSSIDItemUser = DB::table('dbtcsohed')
            ->join('dbmuser','dbtcsohed.pelakuid', '=', 'dbmuser.userid')
            ->join('dbttrshed','dbttrshed.trsid','=','dbtcsohed.trsid')
            ->select('dbtcsohed.trsid','csoid')
            ->where('dbtcsohed.pelakuid','=',Auth::user()->userid)
            ->where('dbtcsohed.status','=','A')
            ->where('dbtcsohed.tipecso','=','R')
            ->where('dbttrshed.typecekstok','=','CSS')
            ->orderByDesc('csoid')
            ->first();

            $getCSSIDAvalanUser = DB::table('dbtcsohed')
            ->join('dbmuser','dbtcsohed.pelakuid', '=', 'dbmuser.userid')
            ->join('dbttrsheda','dbttrsheda.trsid','=','dbtcsohed.trsid')
            ->select('dbtcsohed.trsid','csoid')
            ->select('dbtcsohed.trsid','csoid')
            ->where('dbtcsohed.pelakuid','=',Auth::user()->userid)
            ->where('dbtcsohed.status','=','A')
            ->where('dbtcsohed.tipecso','=','A')
            ->where('dbttrsheda.typecekstok','=','CSS')
            ->orderByDesc('csoid')
            ->first();

            $csoIdItem = "";
            $csoIdAvalan = "";
            $trsIdItem = "";
            $trsIdAvalan = "";
            $cssIdItem = "";
            $cssIdAvalan = "";
            $trsCssIdItem = "";
            $trsCssIdAvalan = "";

            if($getCSOIDItemUser) {
                $csoIdItem = $getCSOIDItemUser->csoid;
                $trsIdItem = $getCSOIDItemUser->trsid;
            } 

            if($getCSOIDAvalanUser) {
                $csoIdAvalan = $getCSOIDAvalanUser->csoid;
                $trsIdAvalan = $getCSOIDAvalanUser->trsid;
            }   
            
            if($getCSSIDItemUser) {
                $cssIdItem = $getCSSIDItemUser->csoid;
                $trsCssIdItem = $getCSSIDItemUser->trsid;
            } 

            if($getCSSIDAvalanUser) {
                $cssIdAvalan = $getCSSIDAvalanUser->csoid;
                $trsCssIdAvalan = $getCSSIDAvalanUser->trsid;
            }    
            
            $user = $request->user();
            $tokenResult = $user->createToken('Personal Access Token');
            $token = $tokenResult->plainTextToken;

            $coycode = Company::select('coycode')->first();

            return response()->json([
                'result'=>1, 'message'=>'login sucess', 'userid' => Auth::user()->userid,
                'username'=>Auth::user()->username, 'name'=>Auth::user()->name, 'level'=>Auth::user()->level, 
                'csoiditem' => $csoIdItem, 'trsiditem' => $trsIdItem, 'cssiditem' => $cssIdItem, 'trscssiditem' => $trsCssIdItem, 
                'csoidavalan' => $csoIdAvalan,  'trsidavalan' => $trsIdAvalan, 'cssidavalan' => $cssIdAvalan,  'trscssidavalan' => $trsCssIdAvalan,
                "coy" => strtoupper(substr($coycode->coycode, 0, 3)), "token" => $token, "type" => "Bearer"]);
        } else {
            return response()->json(['result'=>0,'message'=>'Username / Password salah']);
        }
    }

    public function ubahPassword(Request $request) {
        DB::beginTransaction();
        $account = DB::table('dbmuser')->where('username', '=', $request->username)->select('username', 'password')->get();
        if(Hash::check($request->passwordlama, $account[0]->password)) {
            $updatePassowrd = DB::table('dbmuser')->where('username', '=', $request->username)->update(['password'=>bcrypt($request->passwordbaru)]);
            if($updatePassowrd == true) {
                DB::commit();
                return response()->json(['result'=>1]); 
            } else {
                DB::rollBack();
                return response()->json(['result'=>2]); 
            }            
        } else {
            DB::rollBack();
            return response()->json(['result'=>0]);
        }
    }

    public function mulaiCSOItem(Request $request) {
        DB::beginTransaction();
        $getUserData = DB::table('dbmuser')
        ->leftJoin('dbmcoy','dbmuser.coyid', '=', 'dbmcoy.coyid')
        ->select(["dbmcoy.coycode AS coycode","dbmuser.userid AS userid","dbmuser.coyid AS coyid"])
        ->where('username','=',$request->username)
        ->first();


        $generateNewCSOID=DB::table('dbtcsohed')
        ->selectRaw('csoID + 1 AS nextCsoId')
        ->orderByDesc('csoid')
        ->first();


        $getNewCSOID = $generateNewCSOID ?  $generateNewCSOID->nextCsoId : 1;

        $getTrsID = DB::table('dbttrshed')
        ->select('trsid','typecekstok')
        ->where('statusdoc','=','A')
        ->where('typecekstok', $request->csotype)
        ->whereNull('endcsodate')
        ->orderByDesc('trsid')
        ->first();

        $docRefId="$getTrsID->typecekstok$getUserData->coycode-$request->username". '-' . Carbon::now()->format('Ym') . '-' . str_pad($getNewCSOID,2,'0', STR_PAD_LEFT);

        $insertHed = DB::table('dbtcsohed')->insert([
            'csoid' => $getNewCSOID,
            'trsid' => $getTrsID->trsid,
            'typecekstok' => $getTrsID->typecekstok,
            'docrefid' => $docRefId,
            'pelakuid' => $getUserData->userid,
            'pelakuuname' => $request->username,
            'coyid' => $getUserData->coyid,
            'status' => 'A',
            'tipecso'=> 'R'
        ]);

        if($insertHed == true) {
            DB::commit();
            return response()->json(['result' => 1, 'csoid' => $getNewCSOID, 'trsid' => $getTrsID->trsid]);
        } else {
            DB::rollBack();
            return response()->json(['result' => 0, 'message' => 'Start CSO Gagal']);
        }
    }

    public function mulaiCSOAvalan(Request $request) {
        DB::beginTransaction();
        $getUserData = DB::table('dbmuser')
        ->leftJoin('dbmcoy','dbmuser.coyid', '=', 'dbmcoy.coyid')
        ->select(["dbmcoy.coycode AS coycode","dbmuser.userid AS userid","dbmuser.coyid AS coyid"])
        ->where('username','=',$request->username)->get();

        $generateNewCSOID=DB::table('dbtcsohed')
        ->select(DB::raw('csoID + 1 AS nextCsoId'))
        ->orderBy('csoid', 'desc')
        ->limit(1)
        ->get();

        $getNewCSOID=$generateNewCSOID??1;
        $docRefId="CS{$getUserData[0]->coycode}-$request->username". '-' . Carbon::now()->format('Ym') . '-' . str_pad($getNewCSOID,2,'0', STR_PAD_LEFT);

        $getTrsID = DB::table('dbttrsheda')
        ->select('trsid')
        ->where('statusdoc','=','A')
        ->whereNull('endcsodate')
        ->orderByDesc('trsid')
        ->limit(1)
        ->get();

        $insertValues = [
            'csoid' => $getNewCSOID[0]->nextCsoId,
            'trsid' => $getTrsID[0]->trsid,
            'docrefid' => $docRefId,
            'pelakuid' => $getUserData[0]->userid,
            'pelakuuname' => $request->username,
            'coyid' => $getUserData[0]->coyid,
            'status' => 'A',
            'tipecso'=> 'A'
        ];        

        $insertHed = DB::table('dbtcsohed')->insert($insertValues);

        if($insertHed == true) {
            DB::commit();
            return response()->json(['result' => 1, 'csoid' => $getNewCSOID[0]->nextCsoId, 'trsid' => $getTrsID[0]->trsid]);
        } else {
            DB::rollBack();
            return response()->json(['result' => 0, 'message' => 'Start CSO Gagal']);
        }
    }
}
