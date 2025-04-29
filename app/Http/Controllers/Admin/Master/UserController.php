<?php

namespace App\Http\Controllers\Admin\Master;

use App\Http\Controllers\Controller;
use App\Models\Admin\Master\Level;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Http;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $user = DB::table('dbmuser')->leftJoin('dbmlevel', 'dbmuser.level', '=', 'dbmlevel.levelid')->get();
        $level = Level::all();
        // dd($level);
        $companyID = config('values.companyId');

        $token = Http::get('http://allapi.local.sutindo.net/getToken');
        $userImport = Http::post('http://allapi.local.sutindo.net/sos/getUser', [
            "token" => $token['token'],
            "companyId" => $companyID,
        ]);

        return view("admin.master.user", ["userDatabase" => $user, "importedUser" => $userImport['data'], "level" => $level]);
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
        DB::beginTransaction();

        if ($request->type == 1) {
            $user = new User;   
            $randomNumber = rand(100, 999); // Generate a random 3-digit number
            $generatedUserId = "99" . $randomNumber;         
            $user->userid = $generatedUserId;
            $user->name = $request->nama;
            $user->nik = $request->nik;
            $user->username = $request->username;
            $user->password = bcrypt($request->password);
            $user->level = $request->level;
            $user->created_by = Auth::user()->username;
            $user->coyid = 1;

            $user->save();

            DB::commit();
            return redirect()->route("user.index")->with('status', 'Berhasil menambahkan pengguna baru');
        } else {
            $noexist = 0;

            foreach ($request->checkboxImport as $checkbox_value) {
                
                $checkExistingUser = DB::table('dbmuser')->select('userid')->where('userid', '=', $checkbox_value)->get();
                if (count($checkExistingUser) > 0) {
                    $noexist++;
                    break;
                } else {
                    error_reporting(E_ALL ^ E_WARNING ^ E_NOTICE ^ E_DEPRECATED);
                    $companyID = config('values.companyId');
                    $token = Http::get('http://allapi.local.sutindo.net/getToken');
                    $userImport = Http::post('http://allapi.local.sutindo.net/sos/getUser', [
                        "token" => $token['token'],
                        "companyId" => $companyID,
                    ]);
                    
                    foreach($userImport['data'] as $dataUser) {
                        $password = 'sos123';

                        if($dataUser['UserID'] == $checkbox_value) {
                            $user = new User;
                            $user->userid = $checkbox_value;
                            $user->name = $dataUser['FullName'];
                            $user->nik = $dataUser['NIK'];
                            $user->username = $dataUser['username'];
                            $user->password = bcrypt($password);
                            $user->created_by = Auth::user()->username;
                            $user->level = 4;
                            $user->coyid = 1;
                
                            $user->save();
                        }
                    }
                }
            }

            if($noexist == 0) {
                DB::commit();
                return redirect()->route("user.index")->with('status', 'Penambahan data pengguna berhasil');
            } else {
                DB::rollBack();
                return redirect()->route("user.index")->with('error', 'Data yang dipilih sudah pernah diinput ke database');
            }
        }
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
    public function update(Request $request, User $user)
    {
        $user->name = $request->nama;
        $user->nik = $request->nik;
        $user->username = $request->username;
        if($request->level != null || $request->level != "") {
            $user->level = $request->level;
        }        
        $user->updated_by = Auth::user()->username;
        $user->save();
        return redirect()->route("user.index")->with('status', "Data pengguna $request->nama berhasil diubah");
    }
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(User $user)
    {
        try {
            $user->delete();
            return redirect()->route("user.index")->with('status', 'Data user berhasil dihapus');
        } catch(\PDOException $e) {
            $msg = "Data gagal dihapus karena data ini merupakan data parent dari tabel lain";
            return redirect()->route("user.index")->with('error', $msg);
        }
    }


    public function userSearch(Request $request)
    {

        // dd($request);
        if($request->user!=""){
            $name="%".$request->user."%";
            $userData = DB::select('SELECT * from dbmuser 
            LEFT JOIN dbmlevel ON dbmuser.level = dbmlevel.levelid
            WHERE username LIKE "'.$name.'"');
            $div="";
            $i=1;
            foreach($userData as $user)
            {
                $div.="<tr class='text-center'>
                        <td class='align-middle'>".$i."</td>
                        <td class='align-middle'>".$user->name."</td>
                        <td class='align-middle'>".$user->nik."</td>
                        <td class='align-middle'>".$user->username."</td>
                        <td class='align-middle'>".$user->levelname."</td>
                        <td class='align-middle'>
                            <div class='row'>
                                <div class='col-2 ms-2'>
                                    <button onclick='openModalEdit(this)'
                                        class='btn btn-sm btn-primary edit' id='btnEditUser'><i
                                            class='bi bi-pencil-square', style='color: white'></i></button>
                                </div>
                                <div class='col-2 ms-2'>
                                    <button onclick='openModalDelete(this)' class='btn btn-danger btn-sm'
                                        title='Hapus User' id='btnHapus' data-id=''><i
                                            class='bi bi-trash-fill'></i></button>
                                </div>
                            </div>

                        </td>
                        <td class='align-middle' hidden>".$user->level."</td>
                        <td class='align-middle' hidden>".$user->id."</td>
                    </tr>";

                $i+=1;
            }
            return $div;
        }
        else
        {
            $userData = DB::select('SELECT * from dbmuser 
            LEFT JOIN dbmlevel ON dbmuser.level = dbmlevel.levelid');
            $div="";
            $i=1;
            foreach($userData as $user)
            {
                $div.="<tr class='text-center'>
                        <td class='align-middle'>".$i."</td>
                        <td class='align-middle'>".$user->name."</td>
                        <td class='align-middle'>".$user->nik."</td>
                        <td class='align-middle'>".$user->username."</td>
                        <td class='align-middle'>".$user->levelname."</td>
                        <td class='align-middle'>
                            <div class='row'>
                                <div class='col-2 ms-2'>
                                    <button onclick='openModalEdit(this)'
                                        class='btn btn-sm btn-primary edit' id='btnEditUser'><i
                                            class='bi bi-pencil-square', style='color: white'></i></button>
                                </div>
                                <div class='col-2 ms-2'>
                                    <button onclick='openModalDelete(this)' class='btn btn-danger btn-sm'
                                        title='Hapus User' id='btnHapus' data-id=''><i
                                            class='bi bi-trash-fill'></i></button>
                                </div>
                            </div>

                        </td>
                        <td class='align-middle' hidden>".$user->level."</td>
                        <td class='align-middle' hidden>".$user->id."</td>
                    </tr>";

                $i+=1;
            }
            return $div;
        }
    }
}


// <tr class="text-center">
//                                         <td class="align-middle">{{ $loop->iteration }}</td>
//                                         <td class="align-middle">{{ $user->name }}</td>
//                                         <td class="align-middle">{{ $user->nik }}</td>
//                                         <td class="align-middle">{{ $user->username }}</td>
//                                         <td class="align-middle">{{ $user->levelname }}</td>
//                                         <td class="align-middle">
//                                             <div class="row">
//                                                 <div class="col-2 ms-2">
//                                                     <button onclick="openModalEdit(this)"
//                                                         class="btn btn-sm btn-primary edit" id="btnEditUser"><i
//                                                             class="bi bi-pencil-square", style="color: white"></i></button>
//                                                 </div>
//                                                 <div class="col-2 ms-2">
//                                                     <button onclick="openModalDelete(this)" class="btn btn-danger btn-sm"
//                                                         title="Hapus User" id="btnHapus" data-id=""><i
//                                                             class="bi bi-trash-fill"></i></button>
//                                                 </div>
//                                             </div>

//                                         </td>
//                                         <td class="align-middle" hidden>{{ $user->level }}</td>
//                                         <td class="align-middle" hidden>{{ $user->id }}</td>
//                                     </tr>

