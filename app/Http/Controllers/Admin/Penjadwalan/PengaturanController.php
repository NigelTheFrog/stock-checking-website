<?php

namespace App\Http\Controllers\Admin\Penjadwalan;

use App\Models\User as ModelsUser;
use App\Http\Controllers\Controller;
use App\Models\Admin\Penjadwalan\Pengaturan;
use Illuminate\Database\Query\JoinClause;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PengaturanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $param)
    {
        $jobtype = DB::table('dbxjob')
        ->leftJoin('dbmjobtype', 'dbxjob.jobtypeid', '=', 'dbmjobtype.jobtypeid')
        ->where('dbxjob.typecekstok',$param->val)->get();
        $category = DB::table('dbmcategory')->get();
        $typestokdup='';
        if($param->val=="CSS")
        {
            $typestokdup='CSO';
        }
        else if ($param->val=="CSO")
        {
            $typestokdup='CSS';
        }

        $job = DB::table("dbxjob")
            ->select("userid as useridjob", "typecekstok")->where('typecekstok','<>',$typestokdup);
        $user = DB::table('dbmuser')
            ->leftJoinSub($job, 'job', function (JoinClause $join) {
                $join->on('dbmuser.userid', '=', 'job.useridjob');
            })->whereNull('job.useridjob')->orWhere('job.typecekstok','<>',$param->val)->get();

        $fetchcsoitem = DB::table('dbxmaterial')->select('csomaterial','jenis')
        ->where('typecekstok',$param->val)->first();

        $fetchcsotype = DB::table('dbxcsotype')->select('csotype')
        ->where('csotype','=',$param->val)->limit(1)->get();

        if ($fetchcsoitem) {
            $csoitem = $fetchcsoitem->csomaterial;
            $jenis = $fetchcsoitem->jenis;
        } else {
            $csoitem = "";
            $jenis = "";
        }

        // if (count($fetchcsotype) > 0) {
        //     $csotype = $fetchcsotype[0]->csotype;
        // } else {
        //     $csotype = "";
        // }
        // dd( $csotype);
        return view("admin.penjadwalan.pengaturan", [
            "jobtype" => $jobtype,
            "category" => $category,
            "pelaku" => $user,
            "csotype" => $param->val,
            "csoitem" => $csoitem,
            "csojenis" => $jenis,
            
        ]);
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
        // DB::table('dbxcsotype')->truncate();
        $csotype1 = DB::table('dbxcsotype')->where('csotype','=',$request->typestock)->first();
        if(empty($csotype1) || is_null($csotype1))
        {
        DB::table('dbxcsotype')->insert(['csotype' => $request->typestock]);
        }

        if ($request->itemcso) {
            $checkIfExist = DB::table('dbxmaterial')->where('typecekstok',$request->typestock)->first();
            if($checkIfExist) DB::table('dbxmaterial')->where('typecekstok',$request->typestock)->update(['csomaterial' => $request->itemcso, ]);
            else DB::table('dbxmaterial')->insert(['typecekstok'=>$request->typestock, 'csomaterial' => $request->itemcso, ]);
        }

        if ($request->jenis) {
            $checkIfExist = DB::table('dbxmaterial')->where('typecekstok',$request->typestock)->first();
            if($checkIfExist) DB::table('dbxmaterial')->where('typecekstok',$request->typestock)->update(['jenis' => $request->jenis]);
            else DB::table('dbxmaterial')->insert(['typecekstok'=>$request->typestock, 'jenis' => $request->jenis]);
        }

        if ($request->pelaku) {
            $pelaku = explode(",", $request->pelaku);
            $datajob = DB::table('dbxjob')->pluck('userid');
            $datauser = ModelsUser::all();
            
            foreach ($pelaku as $p) {
                // if ($datajob->contains($p)) {
                //     dd('test');
                //     continue;
                // }
                
                $isDuplicatep = DB::table('dbxjob')->where('userid', $p)
                ->where('typecekstok',$request->typestock)->exists();
                
                if (!$isDuplicatep) {
                    $user = $datauser->firstWhere('userid', $p);

                    if ($user) {
                        DB::table('dbxjob')->insert([
                            'userid' => $p,
                            'username' => $user->username,
                            'name' => $user->name,
                            'typecekstok'=>$request->typestock,
                            'coyid' => 1,
                            'jobtypeid' => 1
                        ]);

                        DB::table('dbmuser')->where('userid', $p)->update(['level' => 4]);
                    }
                }
            }
        }

        if($request->analisator) {
            $analisator = explode(",", $request->analisator);
            $datajob = DB::table('dbxjob')->pluck('userid');
            $datauser = ModelsUser::all();
            foreach ($analisator as $a) {
                // if ($datajob->contains($a)) {
                //     continue;
                // }
                $isDuplicatep = DB::table('dbxjob')->where('userid', $a)
                ->where('typecekstok',$request->typestock)->exists();

                if (!$isDuplicatep) {
                    $user = $datauser->firstWhere('userid', $a);

                    if ($user) {
                        DB::table('dbxjob')->insert([
                            'userid' => $a,
                            'username' => $user->username,
                            'typecekstok'=>$request->typestock,
                            'name' => $user->name,
                            'coyid' => 1,
                            'jobtypeid' => 2
                        ]);

                        DB::table('dbmuser')->where('userid', $a)->update(['level' => 3]);
                    }
                }
            }
        }
        return redirect()->route("pengaturan.index",['val'=>$request->typestock])
        ->with('status', 'Berhasil mengubah data pengaturan '.$request->typestock);
    }

    /**
     * Display the specified resource.
     */
    public function show(Pengaturan $pengaturan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Pengaturan $pengaturan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Pengaturan $pengaturan)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Pengaturan $pengaturan,Request $request)
    {
        try {
            $pengaturan->delete();
            return redirect()->route("pengaturan.index",['val'=>$request->typecekstok])->with('status', 'Berhasil menghapus user dari pengaturan');
        } catch (\PDOException $e) {
            return redirect()->route("pengaturan.index",['val'=>$request->typecekstok])->with('error', "Gagal menghapus data");
        }
    }
}
