<?php

namespace App\Exports;
use Generator;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\FromGenerator;
use Maatwebsite\Excel\Concerns\FromView;
use Illuminate\Contracts\View\View;
// use Illuminate\Support\Facades\View;
use Carbon\Carbon;

// class coba implements FromQuery, FromGenerator
// class ExportExcel implements FromGenerator
class ExportExcel implements FromView
{
    // /**
    // * @return \Illuminate\Support\Collection
    // */
    // public function collection()
    // {
    //     return DB::table('dbmcoy')->get();
    // }
    use Exportable;

    public function __construct(Array $pick)
    {
        $this->pick = $pick;

    }

    public function view(): View
    {
        // dd($this->pick);
        return view("admin.report.stok-item.excel-resume",$this->pick);
    }
}

