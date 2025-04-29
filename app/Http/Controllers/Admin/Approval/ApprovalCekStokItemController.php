<?php

namespace App\Http\Controllers\Admin\Approval;

use App\Http\Controllers\Controller;
use App\Models\Admin\Resume\SusunanCso;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ApprovalCekStokItemController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $getDbtTrsHed = DB::table('dbttrshed')->orderByDesc('createddate')->whereNot('statusdoc', '=', 'A')->get();
        $dataApproval = User::select('id', 'name')
            ->where('level', '2')
            ->orWhere('level', '5')
            ->orWhere('level', '6')
            ->orWhere('level', '7')
            ->orWhere('level', '8')
            ->orWhere('level', '9')
            ->orWhere('level', '10')
            ->get();
        return view('admin.approval.cek-stok', ['listNodoc' => $getDbtTrsHed, "dataApproval" => $dataApproval]);
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
        $message = match (true) {
            $request->wrhapproval => 'Kepala Warehouse',
            $request->facapproval => 'Kepala FAC',
            $request->purapproval => 'Kepala Purchasing',
            $request->kaopsapproval => 'Kepala Operasional',
            $request->regmenapproval => 'Regional Manager',
            $request->staffstokapproval => 'Staff Stok',
            $request->picwrhapproval => 'PIC Warehouse',
            default => null
        };
        if ($request->wrhapproval)
            DB::table('dbttrshed')
                ->where('trsid', $request->trsidresume)
                ->update([
                    'wrhapproval' => $request->wrhapproval,
                    'wrhapproved_by' => Auth::user()->id,
                    'wrhapproved_at' => Carbon::now()
                ]);
        elseif ($request->facapproval)
            DB::table('dbttrshed')
                ->where('trsid', $request->trsidresume)
                ->update([
                    'facapproval' => $request->facapproval,
                    'facapproved_by' => Auth::user()->id,
                    'facapproved_at' => Carbon::now()
                ]);
        elseif ($request->purapproval)
            DB::table('dbttrshed')
                ->where('trsid', $request->trsidresume)
                ->update([
                    'purapproval' => $request->purapproval,
                    'purapproved_by' => Auth::user()->id,
                    'purapproved_at' => Carbon::now()
                ]);
        elseif ($request->kaopsapproval)
            DB::table('dbttrshed')
                ->where('trsid', $request->trsidresume)
                ->update([
                    'kaopsapproval' => $request->kaopsapproval,
                    'kaopsapproved_by' => Auth::user()->id,
                    'kaopsapproved_at' => Carbon::now()
                ]);
        elseif ($request->regmenapproval)
            DB::table('dbttrshed')
                ->where('trsid', $request->trsidresume)
                ->update([
                    'regmenapproval' => $request->regmenapproval,
                    'regmenapproved_by' => Auth::user()->id,
                    'regmenapproved_at' => Carbon::now()
                ]);
        elseif ($request->staffstokapproval)
            DB::table('dbttrshed')
                ->where('trsid', $request->trsidresume)
                ->update([
                    'staffstokapproval' => $request->staffstokapproval,
                    'staffstokapproved_by' => Auth::user()->id,
                    'staffstokapproved_at' => Carbon::now()
                ]);
        elseif ($request->picwrhapproval)
            DB::table('dbttrshed')
                ->where('trsid', $request->trsidresume)
                ->update([
                    'picwrhapproval' => $request->picwrhapproval,
                    'picwrhapproved_by' => Auth::user()->id,
                    'picwrhapproved_at' => Carbon::now()
                ]);

        return redirect()->route("approval-stok.index")->with('status', "$message berhasil melakukan approval");
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
    public function update(Request $request, string $id) {}

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
