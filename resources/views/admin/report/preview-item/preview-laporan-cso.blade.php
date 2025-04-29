@extends('layouts.master')

@section('title', 'Cek Stok')
@section('styles')
    <style>
        .title-info {
            padding-top: 25px;
        }

        .page-break {
            page-break-after: always;
        }

        th {
            text-align: center;

            border: 1px solid;
            padding-left: 2px;
            padding-right: 2px;
            vertical-align: middle;
        }

        .th-content-cso {
            border-color: rgb(65, 65, 65);
            font-size: 9pt;
        }

        .th-content-noncso {
            border-color: rgb(65, 65, 65);
            font-size: 9pt;
            height: 1cm;
        }

        .tr-head {
            background-color: #1c1c1c;
            color: white;
            border-color: rgb(65, 65, 65);
        }

        td {
            border: 1px solid;
            vertical-align: middle;
            height: 1cm;
        }

        .td-persetujuan {
            vertical-align: middle;
            text-align: center;
            font-size: 9.5pt;
            font-weight: bold;
            width: 12.5%
        }

        .td-content {
            border-color: rgb(192, 192, 192);
        }

        .td-selisih-minus {
            color: red;
            border-color: rgb(192, 192, 192);
        }

        .td-non-itemname {
            text-align: center;
        }

        .tr-body:nth-child(odd) {
            background-color: rgb(233, 233, 233)
        }

        .tr-body:nth-child(even) {
            background-color: rgb(247, 247, 247)
        }

        .tr-body-divider {
            background-color: #fcba03;
            font-weight: bold;
            padding-left: 2cm;
            font-size: 9pt;
            border-color: rgb(192, 192, 192);
        }

        .tr-selisih {
            font-size: 8pt;
            line-height: 0.5cm
        }

        .tr-rekapitulasi-global {
            text-align: center;
            align-items: center;
            font-size: 9pt;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
        }

        h2 {
            font-family: Arial, sans-serif;
            text-align: justify;
        }
/* 
        table {
  table-layout: fixed;
}

thead,
tr>th {
  position: sticky;
  background: #fff;
}

thead {
  top: 0;
  z-index: 2;
}
tr>th {
  left: 0;
  z-index: 1;
}
thead tr>th:first-child,tr>th:nth-child(2),tr>th:nth-child(3) {
  z-index: 3;
  position: relative;
} */
        thead th{
            top:0;
            position:sticky;
            border: solid red;
            
        }
        th.col-th2{
            position: sticky;
            top:32px;
        }
        th.col-th3{
            top:113.5px;
        }
        .col-id-no{
            left:0;
            position: sticky;
            z-index:2;
        }
        .col-first-name{
            left:40px;
            position: sticky;
            z-index:2;
        }
        th.col-id-no{
            left:0;
            position: sticky;
            z-index:20;
        }
        th.col-first-name{
            left:40px;
            position: sticky;
            z-index:20;
        }
    </style>
@endsection

@section('content')
    <div class="content-wrapper mt-3">
        <!-- Main content -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row">
                    <div class="">
                        <div class="card card-secondary">
                            <div class="card-header bg-secondary text-white">
                                <div class="row justify-content-between">
                                    <div class="col-md-8">
                                        <h3 class="card-title">GUDANG</h3>
                                    </div>
                                    {{-- @if ($dataCso->statusdoc == 'P') --}}
                                        <div class="col-md-2 text-end">
                                            <form method="POST" action="{{ route('exportExcel') }}">
                                                @csrf
                                            <input type="text" name="trsidlaporan" value="{{ $trsidlaporan }}" hidden>
                                            <input type="text" name="type" value="3" hidden>
                                            <button type="submit" class="btn btn-success text-white" id="button_export"><i
                                                    class="fas fa-print pe-2"></i>Export Excel</button>
                                            </form>
                                        </div>
                                        <div class="col-md-2 text-end">
                                            <form method="POST" action="{{ route('cek-stok.store') }}">
                                                @csrf
                                                <input type="text" name="trsidlaporan" value="{{ $trsidlaporan }}"
                                                    hidden>
                                                <input type="text" name="pdf" value="1" hidden>
                                                <input type="text" name="type" value="3" hidden>
                                                <button type="submit" class="btn btn-primary text-white"><i
                                                        class="fas fa-print pe-2"></i>Print Keseluruhan</button>
                                            </form>
                                        </div>
                                    {{-- @endif --}}
                                </div>
                            </div>
                            <div class="card-body" style="background-color: #f8f8f8;">
                                {{-- <h2>
                                    {{ substr($dataCso->doccsoid, 0, 3) }} {{ $dataCoy->coycode }} TANGGAL:
                                    {{ Str::upper(\Carbon\Carbon::parse($dataCso->startcsodate)->translatedFormat('j F Y')) }}
                                </h2>
                                <h2>
                                    MATERIAL: {{ Str::upper($dataCso->csomaterial) }}
                                </h2>
                                <h2>
                                    LOKASI: {{ $dataCoy->description }}
                                </h2> --}}

                                <div class='table-responsive-lg'
                                    style="margin-top: 20px;overflow-x: auto; overflow-y: auto;max-height: 550px;">
                                    <table class="table table-hover" style="border-collapse: collapse;min-width: 200%;" id='tableid'>
                                        <thead>
                                            <tr class="bg-gray-200 text-xs text-gray-700">
                                                <th class="border border-gray-300 px-2 py-1 align-middle col-id-no" rowspan="3">NO</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle col-first-name" rowspan="3">ITEM Code</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle" rowspan="3">Nama Barang</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle" rowspan="3">ANALISATOR</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle" rowspan="3">AREA</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle" rowspan="3">STANDART BERAT KEMASAN</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle" colspan="{{ 3 * $countLoc}}">MATERIAL TIDAK UTUH</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle" colspan="{{ 2 * $countLoc}}">MATERIAL UTUH</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle" rowspan="3">KG/DRUM</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle" rowspan="2">TOTAL REALITA STOK</th>
                                                {{-- QTY SAP == ONHAND --}}
                                                <th class="border border-gray-300 px-2 py-1 align-middle" rowspan="3">QTY SAP</th> 
                                                <th class="border border-gray-300 px-2 py-1 align-middle" colspan="3" rowspan="2">SELISIH</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle" colspan="2" rowspan="2">STANDART</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle" rowspan="3">TRUE OR FALSE</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle" rowspan="3">KESESUSAIAN DGN VS STANDAR</th>
                                            </tr>
                                            <tr class="bg-gray-200 text-xs text-gray-700">
                                                {{-- <th class="border border-gray-300 px-2 py-1" colspan="6"></th>?? --}}
                                                @foreach($location as $loc)
                                                    <th class="border border-gray-300 px-2 py-1 align-middle col-th2" colspan="3">{{$loc->locationname}}</th>
                                                @endforeach
                                                @foreach($location as $loc)
                                                    <th class="border border-gray-300 px-2 py-1 align-middle col-th2" colspan="2">{{$loc->locationname}}</th>
                                                @endforeach
                                                {{-- <th class="border border-gray-300 px-2 py-1" colspan="3">AREA 1</th>
                                                <th class="border border-gray-300 px-2 py-1" colspan="3">AREA 2</th>
                                                <th class="border border-gray-300 px-2 py-1" colspan="3">AREA 3</th> --}}
                                                {{-- <th class="border border-gray-300 px-2 py-1" colspan="2">AREA 1</th>
                                                <th class="border border-gray-300 px-2 py-1" colspan="2">AREA 2</th>
                                                <th class="border border-gray-300 px-2 py-1" colspan="2">AREA 3</th> --}}
                                            </tr>
                                            <tr class="bg-gray-200 text-xs text-gray-700">
                                                {{-- <th class="border border-gray-300 px-2 py-1" colspan="6"></th> --}}
                                                @for($i = 0; $i<$countLoc;$i++)
                                                    <th class="border border-gray-300 px-2 py-1 align-middle col-th3">BERAT KOTOR (KG)</th>
                                                    <th class="border border-gray-300 px-2 py-1 align-middle col-th3">BERAT KEMASAN (KG)</th>
                                                    <th class="border border-gray-300 px-2 py-1 align-middle col-th3">BERAT KERAN (KG)</th>    
                                                @endfor
                                                @for($i = 0; $i<$countLoc;$i++)
                                                    <th class="border border-gray-300 px-2 py-1 align-middle col-th3">QTY</th>
                                                    <th class="border border-gray-300 px-2 py-1 align-middle col-th3">BERAT (KG)</th>    
                                                @endfor
                                                
                                                {{-- <th class="border border-gray-300 px-2 py-1">BERAT KOTOR (KG)</th>
                                                <th class="border border-gray-300 px-2 py-1">BERAT KEMASAN (KG)</th>
                                                <th class="border border-gray-300 px-2 py-1">BERAT KERAN (KG)</th>
                                                <th class="border border-gray-300 px-2 py-1">BERAT KOTOR (KG)</th>
                                                <th class="border border-gray-300 px-2 py-1">BERAT KEMASAN (KG)</th>
                                                <th class="border border-gray-300 px-2 py-1">BERAT KERAN (KG)</th> --}}
                                                {{-- <th class="border border-gray-300 px-2 py-1">QTY</th>
                                                <th class="border border-gray-300 px-2 py-1">BERAT (KG)</th>
                                                <th class="border border-gray-300 px-2 py-1">QTY</th>
                                                <th class="border border-gray-300 px-2 py-1">BERAT (KG)</th>
                                                <th class="border border-gray-300 px-2 py-1">QTY</th>
                                                <th class="border border-gray-300 px-2 py-1">BERAT (KG)</th> --}}
                                                <th class="border border-gray-300 px-2 py-1 align-middle col-th3">TOTAL QTY (UTUH + TIDAK UTUH)</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle col-th3">QTY</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle col-th3">TOTAL PRODUKSI</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle col-th3">% MATERIAL LOSS</th>
                                                <th class="border border-gray-300 px-2 py-1 align-middle col-th3">STD LOSS MINUS</th>    
                                                <th class="border border-gray-300 px-2 py-1 align-middle col-th3">STD LOSS PLUS</th>    
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($dataLaporan as $i => $data)
                                                <tr>
                                                    @php
                                                        $qtySelisih = $data['totalRealita']-$data['onhand'];
                                                        $materialLossSelisih = 0;
                                                        if($data['totalProduksi']!=0)
                                                        {
                                                            $materialLossSelisih = $qtySelisih/$data['totalProduksi']*100;
                                                        }
                                                    @endphp
                                                    {{-- no --}}
                                                    <td class="td-content col-id-no">{{ $i+1 }}</td> 
                                                    {{-- itemcode --}}
                                                    <td class="td-content col-first-name"> {{$data['itemid']}} </td>
                                                    {{-- nama barang --}}
                                                    <td class="td-content"> {{$data['itemname']}} </td>
                                                    {{-- analisator --}}
                                                    <td class="td-content"> {{$data['analisatorName']}} </td>
                                                    {{-- area --}}
                                                    <td class="td-content"> {{$data['area']}} </td>
                                                    {{-- STD Berat Kemasan --}}
                                                    <td class="td-content"> {{$data['stdBeratKemasan']}} </td>
                                                        @foreach($location as $loc)
                                                            {{-- berat kotor --}}
                                                            <td class="td-content"> {{$data['loc'][$loc->locationname]}} </td>
                                                            {{-- berat kemasan --}}
                                                            <td class="td-content"> - </td>
                                                            {{-- berat keran --}}
                                                            <td class="td-content"> - </td>
                                                        @endforeach
                                                        @foreach($location as $loc)
                                                            {{-- qty --}}
                                                            <td class="td-content"> - </td>
                                                            {{-- Berat --}}
                                                            <td class="td-content"> - </td>
                                                        @endforeach
                                                    {{-- konversi --}}
                                                    <td class="td-content"> {{$data['konversi_1']}} </td>
                                                    {{-- tidak utuh + utuh --}}
                                                    <td class="td-content"> {{$data['totalRealita']}} </td>
                                                    {{-- onhand --}}
                                                    <td class="td-content"> {{$data['onhand']}} </td>
                                                    {{-- selisih qty --}}
                                                    <td class="td-content"> {{$qtySelisih}} </td>
                                                    {{-- Total produksi --}}
                                                    {{-- @if($data['totalProduksi']!=0) --}}
                                                    <td class="td-content"> {{$data['totalProduksi']}} </td>
                                                    {{-- @else --}}
                                                        {{-- <td class="td-content"> 0.000 </td> --}}
                                                    {{-- @endif --}}
                                                    {{-- % material loss --}}
                                                    @if($data['totalProduksi']!=0)
                                                        <td class="td-content"> {{number_format($materialLossSelisih,3,'.',',')}} </td>
                                                    @else
                                                        <td class="td-content"> - </td>
                                                    @endif
                                                    {{-- material loss minus --}}
                                                    <td class="td-content"> {{$data['materialLossM']}} </td>
                                                    {{-- material loss plus --}}
                                                    <td class="td-content"> {{$data['materialLossP']}} </td>

                                                    {{-- @if($data['totalProduksi'] == 0 || $data['materialLoss'] == null) --}}
                                                    @if($data['totalProduksi'] == 0)
                                                        {{-- True or false pake if --}}
                                                        @if($qtySelisih!=0)
                                                            <td class="td-content bg-danger"> FALSE </td>
                                                        @else
                                                            <td class="td-content bg-info"> TRUE </td>
                                                        @endif
                                                    @else
                                                        <td class="td-content"> - </td>
                                                    @endif
                                                    {{-- NOK or ok pake if --}}
                                                    {{-- @if($data['totalProduksi'] == 0 || $data['materialLoss'] == null) --}}
                                                    @if($data['totalProduksi'] == 0)
                                                        <td class="td-content"> - </td>
                                                    @else
                                                        {{-- True or false pake if --}}
                                                        @if($materialLossSelisih>$data['materialLossM'] && $materialLossSelisih<$data['materialLossP'] )
                                                            <td class="td-content bg-info"> OK </td>
                                                        @else
                                                            <td class="td-content bg-dangers"> NOK </td>
                                                        @endif
                                                    @endif
                                                </tr>
                                            @endforeach
                                        </tbody> 
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </div>
    <script>
        function html_table_to_excel(type) {


            // var data = document.getElementById('tableid');

            // var file = XLSX.utils.table_to_sheet(data, {sheet: "sheet1"});

            // XLSX.write(file, { bookType: type, bookSST: true, type: 'base64' });

            // XLSX.writeFile(file, 'file.' + type);


            const element = document.getElementById('tableid');

            // element.insertRow(0);
            // element.insertRow(0);
            // element.insertRow(0);
            // element.insertRow(0);

            const ws = XLSX.utils.table_to_sheet(element,{raw: true});
            // ws["A1"] = {
            //     font: {
            //         bold: true,
            //     }
            // };
        //     const myNewData = [
        //         [`{{ substr($dataCso->doccsoid, 0, 3) }} {{ $dataCoy->coycode }} TANGGAL:
        // {{ Str::upper(\Carbon\Carbon::parse($dataCso->startcsodate)->translatedFormat('j F Y')) }}`],
        //         [`MATERIAL: {{ Str::upper($dataCso->csomaterial) }}`],
        //         [`LOKASI: {{ $dataCoy->description }}`]
        //     ];

        //     XLSX.utils.sheet_add_aoa(ws, myNewData);

            // caunt = parseInt( $count );
            // console.log(caunt);

            // if (`{{ substr($dataCso->doccsoid, 0, 3) }}` == 'CSS') {
            //     ws["!merges"] = [{
            //             s: {
            //                 c: 0,
            //                 r: 0
            //             },
            //             e: {
            //                 c: 6,
            //                 r: 0
            //             }
            //         }, // A1
            //         {
            //             s: {
            //                 c: 0,
            //                 r: 1
            //             },
            //             e: {
            //                 c: 6,
            //                 r: 1
            //             }
            //         }, // A1:B2
            //         {
            //             s: {
            //                 c: 0,
            //                 r: 2
            //             },
            //             e: {
            //                 c: 6,
            //                 r: 2
            //             }
            //         },

            //         {
            //             s: {
            //                 c: 0,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 0,
            //                 r: 5
            //             }
            //         }, //a5:a6
            //         {
            //             s: {
            //                 c: 1,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 1,
            //                 r: 5
            //             }
            //         },
            //         {
            //             s: {
            //                 c: 2,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 2,
            //                 r: 5
            //             }
            //         },
            //         {
            //             s: {
            //                 c: 3,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 3,
            //                 r: 5
            //             }
            //         },
            //         {
            //             s: {
            //                 c: 4,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 4,
            //                 r: 5
            //             }
            //         },
            //         {
            //             s: {
            //                 c: 5,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 5,
            //                 r: 5
            //             }
            //         }
            //     ];

            //     for (let i = 0; i < caunt; i++) {
            //         ws["!merges"].push({
            //             s: {
            //                 c: 6 + i,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 6 + i,
            //                 r: 5
            //             }
            //         })
            //     }

            //     ws["!merges"].push({
            //             s: {
            //                 c: 6 + caunt,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 6 + caunt,
            //                 r: 5
            //             }
            //         }, {
            //             s: {
            //                 c: 6 + caunt + 1,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 6 + caunt + 4,
            //                 r: 4
            //             }
            //         }, //a5:l115
            //         {
            //             s: {
            //                 c: 6 + caunt + 5,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 6 + caunt + 8,
            //                 r: 4
            //             }
            //         }, {
            //             s: {
            //                 c: 6 + caunt + 9,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 6 + caunt + 11,
            //                 r: 4
            //             }
            //         }, {
            //             s: {
            //                 c: 6 + caunt + 13,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 6 + caunt + 15,
            //                 r: 4
            //             }
            //         }
            //     );

            // } else {
            //     ws["!merges"] = [{
            //             s: {
            //                 c: 0,
            //                 r: 0
            //             },
            //             e: {
            //                 c: 6,
            //                 r: 0
            //             }
            //         }, // A1
            //         {
            //             s: {
            //                 c: 0,
            //                 r: 1
            //             },
            //             e: {
            //                 c: 6,
            //                 r: 1
            //             }
            //         }, // A1:B2
            //         {
            //             s: {
            //                 c: 0,
            //                 r: 2
            //             },
            //             e: {
            //                 c: 6,
            //                 r: 2
            //             }
            //         },

            //         {
            //             s: {
            //                 c: 0,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 0,
            //                 r: 5
            //             }
            //         }, //a5:a6
            //         {
            //             s: {
            //                 c: 1,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 1,
            //                 r: 5
            //             }
            //         },
            //         {
            //             s: {
            //                 c: 2,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 2,
            //                 r: 5
            //             }
            //         },
            //         {
            //             s: {
            //                 c: 3,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 3,
            //                 r: 5
            //             }
            //         },
            //         {
            //             s: {
            //                 c: 4,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 4,
            //                 r: 5
            //             }
            //         },
            //     ];

            //     for (let i = 0; i < caunt; i++) {
            //         ws["!merges"].push({
            //             s: {
            //                 c: 5 + i,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 5 + i,
            //                 r: 5
            //             }
            //         })
            //     }

            //     ws["!merges"].push({
            //             s: {
            //                 c: 5 + caunt,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 5 + caunt,
            //                 r: 5
            //             }
            //         }, {
            //             s: {
            //                 c: 5 + caunt + 1,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 5 + caunt + 4,
            //                 r: 4
            //             }
            //         }, //a5:l115
            //         {
            //             s: {
            //                 c: 5 + caunt + 5,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 5 + caunt + 8,
            //                 r: 4
            //             }
            //         }, {
            //             s: {
            //                 c: 5 + caunt + 9,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 5 + caunt + 11,
            //                 r: 4
            //             }
            //         }, {
            //             s: {
            //                 c: 5 + caunt + 13,
            //                 r: 4
            //             },
            //             e: {
            //                 c: 5 + caunt + 15,
            //                 r: 4
            //             }
            //         }
            //     );
            // }

            const wb = XLSX.utils.book_new();

            XLSX.utils.book_append_sheet(wb, ws, 'sheet1');

            XLSX.write(wb, {
                bookType: type,
                bookSST: true,
                type: 'base64'
            })
            // XLSX.writeFile(wb,
            //     `{{ substr($dataCso->doccsoid, 0, 3) }} {{ $dataCoy->coycode }}-{{ Str::upper(\Carbon\Carbon::parse($dataCso->startcsodate)->translatedFormat('j F Y')) }}` +
            //     '.xlsx');
            XLSX.writeFile(wb,
                'test'+
                '.xlsx');
        }

        const export_button = document.getElementById('export_button');

        button_export.addEventListener('click', () => {
            html_table_to_excel('xlsx');
        });
    </script>
@endsection


{{-- <div class="overflow-x-auto">
    <table class="min-w-full bg-white border border-gray-300">
        <thead>
            <tr class="bg-gray-200 text-xs text-gray-700">
                <th class="border border-gray-300 px-2 py-1">NO</th>
                <th class="border border-gray-300 px-2 py-1">Nom Code</th>
                <th class="border border-gray-300 px-2 py-1">Nama Barang</th>
                <th class="border border-gray-300 px-2 py-1">ANALISA TDK</th>
                <th class="border border-gray-300 px-2 py-1">AREA</th>
                <th class="border border-gray-300 px-2 py-1">STANDART BERAT KEMASAN</th>
                <th class="border border-gray-300 px-2 py-1" colspan="6">MATERIAL TIDAK UTUH</th>
                <th class="border border-gray-300 px-2 py-1" colspan="6">MATERIAL UTUH</th>
                <th class="border border-gray-300 px-2 py-1" rowspan="2">TOTAL REALITA STOK</th>
                <th class="border border-gray-300 px-2 py-1" rowspan="2">QTY SAK</th>
                <th class="border border-gray-300 px-2 py-1" rowspan="2">QTY</th>
                <th class="border border-gray-300 px-2 py-1" rowspan="2">TOTAL PRODUKSI</th>
                <th class="border border-gray-300 px-2 py-1" rowspan="2">MATERIAL LOSS</th>
                <th class="border border-gray-300 px-2 py-1" rowspan="2">TRUE OR FALSE</th>
                <th class="border border-gray-300 px-2 py-1" rowspan="2">SESUSAI DGN VS STANDAR</th>
            </tr>
            <tr class="bg-gray-200 text-xs text-gray-700">
                <th class="border border-gray-300 px-2 py-1" colspan="6"></th>
                <th class="border border-gray-300 px-2 py-1">AREA 1</th>
                <th class="border border-gray-300 px-2 py-1">AREA 2</th>
                <th class="border border-gray-300 px-2 py-1">AREA 3</th>
                <th class="border border-gray-300 px-2 py-1">AREA 1</th>
                <th class="border border-gray-300 px-2 py-1">AREA 2</th>
                <th class="border border-gray-300 px-2 py-1">AREA 3</th>
            </tr>
            <tr class="bg-gray-200 text-xs text-gray-700">
                <th class="border border-gray-300 px-2 py-1" colspan="6"></th>
                <th class="border border-gray-300 px-2 py-1">BERAT KOTOR (B)</th>
                <th class="border border-gray-300 px-2 py-1">BERAT KEMASAN (B)</th>
                <th class="border border-gray-300 px-2 py-1">BERAT KERING (B)</th>
                <th class="border border-gray-300 px-2 py-1">BERAT KOTOR (B)</th>
                <th class="border border-gray-300 px-2 py-1">BERAT KEMASAN (B)</th>
                <th class="border border-gray-300 px-2 py-1">BERAT KERING (B)</th>
            </tr>
        </thead>
        <tbody>
            <!-- Add table rows here -->
        </tbody> --}}