<?php

namespace App\Http\Controllers\Admin\Penjadwalan;

use App\Models\User as ModelsUser;
use App\Http\Controllers\Controller;
use App\Models\Admin\Penjadwalan\Pengaturan;
use Illuminate\Database\Query\JoinClause;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class PengaturanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $param)
    {
        $typecekstok = substr($param->val,0,3); 
        $statuscekstok = substr($param->val,3);
        
        // log::info("TYPE". $typecekstok);
        // log::info("STAT". $typecekstok);


        $jobtype = DB::table('dbxjob')
            ->leftJoin('dbmjobtype', 'dbxjob.jobtypeid', '=', 'dbmjobtype.jobtypeid')
            ->where('dbxjob.typecekstok',$typecekstok)
            ->where('dbxjob.statuscekstok',$statuscekstok)->get();

        $category = DB::table('dbmcategory')->get();


        $job = DB::table("dbxjob")
            ->select("userid as useridjob", "typecekstok","statuscekstok")
            ->where("typecekstok","=",$typecekstok)
            ->where("statuscekstok",$statuscekstok);

        $user = DB::table('dbmuser')
            ->leftJoinSub($job, 'job', function (JoinClause $join) {
                $join->on('dbmuser.userid', '=', 'job.useridjob');
            })->whereNull('job.useridjob')
            ->orWhereRaw('job.typecekstok <>"'.$typecekstok.'" AND statuscekstok <> "'.$statuscekstok.'"')->get();

        $fetchcsoitem = DB::table('dbxmaterial')->select('csomaterial')
            ->where('typecekstok',$typecekstok)->where('statuscekstok',$statuscekstok)->limit(1)->get();

        $fetchcsotype = DB::table('dbxcsotype')->select('csotype')
            ->where('csotype','=',$typecekstok)->where('statuscekstok',$statuscekstok)->limit(1)->get();


        if (count($fetchcsoitem) > 0) {
            $csoitem = $fetchcsoitem[0]->csomaterial;
        } else {
            $csoitem = "";
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
            "csotype" => $typecekstok,
            "csoitem" => $csoitem,
            "statuscekstok" => $statuscekstok
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
        $typecekstok = substr($request->typestock,0,3); 
        $statuscekstok = substr($request->typestock,3);

        $csotype1 = DB::table('dbxcsotype')
        ->where('csotype','=',$typecekstok)
        ->where('statuscekstok',$statuscekstok)
        ->first();

        if(empty($csotype1) || is_null($csotype1))
        {
            DB::table('dbxcsotype')->insert([
                                    'csotype' => $typecekstok,
                                    'statuscekstok' => $statuscekstok
                                    ]);
        }

        if ($request->itemcso) {
            // DB::table('dbxmaterial')->truncate();
            DB::table('dbxmaterial')
            ->where('typecekstok',$typecekstok)
            ->where('statuscekstok',$statuscekstok)
            ->delete();

            DB::table('dbxmaterial')
            ->insert(['csomaterial' => $request->itemcso,
                        'typecekstok'=>$typecekstok,
                        'statuscekstok'=>$statuscekstok]);
        }

        if ($request->pelaku) {
            $pelaku = explode(",", $request->pelaku);
            $datajob = DB::table('dbxjob')->pluck('userid');
            $datauser = ModelsUser::all();
            
            foreach ($pelaku as $p) {
                $isDuplicatep = DB::table('dbxjob')->where('userid', $p)
                ->where('typecekstok',$typecekstok)
                ->where('statuscekstok',$statuscekstok)
                ->exists();
                
                if (!$isDuplicatep) {
                    $user = $datauser->firstWhere('userid', $p);

                    if ($user) {
                        DB::table('dbxjob')->insert([
                            'userid' => $p,
                            'username' => $user->username,
                            'name' => $user->name,
                            'typecekstok' => $typecekstok,
                            'statuscekstok' => $statuscekstok,
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
                ->where('typecekstok',$typecekstok)
                ->where('statuscekstok',$statuscekstok)
                ->exists();

                if (!$isDuplicatep) {
                    $user = $datauser->firstWhere('userid', $a);

                    if ($user) {
                        DB::table('dbxjob')->insert([
                            'userid' => $a,
                            'username' => $user->username,
                            'name' => $user->name,
                            'typecekstok' => $typecekstok,
                            'statuscekstok' => $statuscekstok,
                            'coyid' => 1,
                            'jobtypeid' => 2
                        ]);

                        DB::table('dbmuser')->where('userid', $a)->update(['level' => 3]);
                    }
                }
            }
        }
        $message="";
        if($statuscekstok == "A") $message = $typecekstok." BATCH";
        else $message = $typecekstok; 
        return redirect()->route("pengaturan.index",['val'=>$request->typestock])
        ->with('status', 'Berhasil mengubah data pengaturan '.$message);
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
