<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Resume Item</title>
    <style>
        @page {
            margin-top: 20px;
            margin-bottom: 10px;
        }

        .title-info {
            margin-top: 0px;
            text-align: center
        }

        th {
            text-align: center;
            border: 1px solid;
            padding-left: 1px;
            padding-right: 1px;
            line-height: 1.75;
            vertical-align: middle;
            border-color: black;
        }

        .th-persetujuan {
            font-size: 12pt;
            line-height: 0.75cm
        }

        .th-pic-cso {
            font-size: 12pt;
            border-color: black;
            /* border-color: rgb(65, 65, 65); */
        }

        .th-rekapitulasi-global {
            font-size: 12pt;
            border-color: black;
            /* border-color: rgb(65, 65, 65); */
        }

        .th-history {
            font-size: 12pt;
            border-color: black;
            /* border-color: rgb(65, 65, 65); */
        }

        .th-item-selisih {
            font-size: 12pt;
            border-color: black;
            /* border-color: rgb(65, 65, 65); */
        }

        .tr-head {
            /* background-color: #1c1c1c; */
            color: black;
            /* color: white; */
            font-size: 12pt;
            border-color: black;
            /* border-color: rgb(65, 65, 65); */
        }

        .tr-history {
            font-size: 11pt;
            text-align: center;
            line-height: 0.75cm
        }

        td {
            border: 1px solid;
            vertical-align: middle;
            height: 0.5cm;
            border-color: black;
        }

        .td-persetujuan {
            vertical-align: middle;
            text-align: center;
            font-size: 12pt;
            font-weight: bold;
            width: 12.5%;
            line-height: 0.75cm
        }

        .td-content {
            border-color: black;
            /* border-color: rgb(192, 192, 192); */
        }

        .td-selisih-minus {
            color: red;
            border-color: black;
            /* border-color: rgb(192, 192, 192); */
        }

        .td-non-itemname {
            text-align: center;
        }

        .tr-body:nth-child(odd) {
            font-size: 10pt;
            /* background-color: rgb(233, 233, 233) */
        }

        .tr-body:nth-child(even) {
            font-size: 10pt;
            /* background-color: rgb(247, 247, 247) */
        }

        .tr-body-calculator {
            /* background-color: #e1e1e1; */
            font-weight: bold;
            padding-left: 2cm;
            text-align: center;
            line-height: 1cm;
            border-color: black;
        }

        .tr-body-kerugian-total {
            /* background-color: #007efc90; */
            font-weight: bold;
            padding-left: 2cm;
            line-height: 1cm;
            text-align: center;
            border-color: rgb(192, 192, 192);
        }

        .tr-body-divider {
            /* background-color: #fcba03; */
            font-weight: bold;
            padding-left: 2cm;
            font-size: 11pt;
            line-height: 1cm;
            border-color: black;
            /* border-color: rgb(192, 192, 192); */
        }

        .tr-selisih {
            font-size: 10pt;
            line-height: 0.75cm
        }

        .tr-rekapitulasi-global {
            text-align: center;
            align-items: center;
            font-size: 10pt;
            line-height: 2;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
        }

        h2 {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        p,
        h4,
        h5 {
            line-height: 5px;
        }
    </style>
</head>

<body>
    <h2 class="title-info">
        LAPORAN HASIL PELAKSANAAN {{ substr($dataCso->doccsoid, 0, 3) }}
    </h2>

    <div>
        <h4>
            I. PELAKSANAAN {{ substr($dataCso->doccsoid, 0, 3) }}
        </h4>
        <p>Nama perusahaan : {{ $dataCoy }}</p>
        <p>Tanggal pelaksanaan {{ substr($dataCso->doccsoid, 0, 3) }} :
            {{ \Carbon\Carbon::parse($dataCso->startcsodate)->translatedFormat('j F Y') }}
        </p>
        <p>Lokasi/kelompok produk yang di {{ substr($dataCso->doccsoid, 0, 3) }} : {{ $dataCso->csomaterial }} </p>
    </div>
    <div>
        <h4>
            II. SUSUNAN TIM @if (substr($dataCso->doccsoid, 0, 3) == 'CSO')
                CEK STOK OPNAME
            @else
                CEK STOK SAMPLING
            @endif
        </h4>
        <p>PIC {{ substr($dataCso->doccsoid, 0, 3) }}: </p>
        <h5>Analistor</h5>
        <table>
            <thead>
                <tr class="tr-head">
                    <th class="th-pic-cso" style="width: 5%;">No</th>
                    <th class="th-pic-cso" style="width: 20%;">Nama Analisator</th>
                    <th class="th-pic-cso" style="width: 15%;">Departemen</th>
                    <th class="th-pic-cso" style="width: 60%;">Catatan tentang Analisator</th>
                </tr>
            </thead>
            <tbody>
                @if (count($dataAnalisator) > 0)
                    @foreach ($dataAnalisator as $analisator)
                        <tr class="tr-body">
                            <td class="td-content" style="padding: 8px; font-size: 11pt">{{ $loop->iteration }}</td>
                            <td class="td-content" style="padding: 8px; font-size: 11pt">{{ $analisator->name }}</td>
                            <td class="td-content" style="padding: 8px; font-size: 11pt">{{ $analisator->departemen }}
                            </td>
                            <td class="td-content" style="padding: 8px; font-size: 11pt">{{ $analisator->note }}</td>
                        </tr>
                    @endforeach
                @else
                    <tr class="tr-body">
                        <th class="td-content"></th>
                        <td class="td-content" style="padding: 8px"></td>
                        <td class="td-content" style="padding: 8px"></td>
                        <td class="td-content" style="padding: 8px"></td>
                    </tr>
                @endif

            </tbody>
        </table>
        <h5>Pelaku</h5>
        <table>
            <thead>
                <tr class="tr-head">
                    <th class="th-pic-cso" style="width: 5%">No</th>
                    <th class="th-pic-cso" style="width: 20%">Nama Pelaku</th>
                    <th class="th-pic-cso" style="width: 15%">Departemen</th>
                    <th class="th-pic-cso" style="width: 60%">Catatan tentang Pelaku</th>
                </tr>
            </thead>
            <tbody>
                @if (count($dataPelaku) > 0)
                    @foreach ($dataPelaku as $pelaku)
                        <tr class="tr-body">
                            <td class="td-content" style="padding: 8px; font-size: 11pt">{{ $loop->iteration }}</td>
                            <td class="td-content" style="padding: 8px; font-size: 11pt">{{ $pelaku->name }}</td>
                            <td class="td-content" style="padding: 8px; font-size: 11pt">{{ $pelaku->departemen }}</td>
                            <td class="td-content" style="padding: 8px; font-size: 11pt">{{ $pelaku->note }}</td>
                        </tr>
                    @endforeach
                @else
                    <tr class="tr-body">
                        <th class="td-content"></th>
                        <td class="td-content" style="padding: 8px"></td>
                        <td class="td-content" style="padding: 8px"></td>
                        <td class="td-content" style="padding: 8px"></td>
                    </tr>
                @endif
            </tbody>
        </table>
    </div>
    <div style="margin-top: 15px">
        <h4>
            III. REKAPITULASI HASIL {{ substr($dataCso->doccsoid, 0, 3) }} GLOBAL
        </h4>
        <table style=" border-collapse: collapse;width: 100%;page-break-inside: avoid;" class="table">
            <thead>
                <tr class="tr-head">
                    @if (substr($dataCso->doccsoid, 0, 3) == 'CSS')
                        <th class="th-content" rowspan="2" style="width: 2.5cm">Tanggal Import
                        </th>
                    @endif
                    <th class="th-content" rowspan="2" style="width: 1cm">Total Item </th>
                    {{-- <th class="th-content" rowspan="2" style="width: 2.5cm">Item yang tidak ada
                        fisik
                    </th> --}}
                    <th class="th-content" rowspan="2" style="width: 2.75cm">Area / Kelompok
                        produk
                    </th>
                    <th class="th-content" rowspan="2" style="width: 2.75cm">Item yang sudah dicek
                        stok ada </th>
                    <th class="th-content" colspan="2" style="width: 1.5cm">Hasil
                        {{ substr($dataCso->doccsoid, 0, 3) }}</th>
                    <th class="th-content" rowspan="2" style="width: 2.5cm ">% Keakuratan Stok
                    </th>
                    <th class="th-content" colspan="4" style="">% Item Selisih</th>
                    <th class="th-content" rowspan="2"style="width: 2cm">% Selisih</th>
                </tr>
                <tr class="tr-head">
                    <th class="th-content">Item OK </th>
                    <th class="th-content">Item Selisih </th>
                    <th class="th-content" style="width: 2cm">(+)</th>
                    <th class="th-content" style="width: 2cm">(-)</th>
                    <th class="th-content" style="width: 2cm">Beda Batch</th>
                    <th class="th-content" style="width: 2cm">Tertukar</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $totalItemOk = 0;
                    $itemTidakHitung = 0;
                    $totalItemSelisih = 0;
                    $totalItemAda = 0;
                @endphp
                @foreach ($dataRekapitulasi as $dataPerhitungan)
                    @php
                        $faktorAdminSelisih += $dataPerhitungan->kesalahan_admin_selisih;
                        $itemAda += $dataPerhitungan->item_ada;
                        $totalItemAda += $dataPerhitungan->item_ada;
                        $item_ok = $dataPerhitungan->item_ok + $dataPerhitungan->tidak_hitung + $dataPerhitungan->kesalahan_admin_selisih;
                        $totalItemSelisih += $dataPerhitungan->item_selisih;
                        $totalItemOk += $item_ok;
                        $itemTidakHitung += $dataPerhitungan->tidak_hitung;

                    @endphp
                    <tr class="tr-rekapitulasi-global">
                        @if (substr($dataCso->doccsoid, 0, 3) == 'CSS')
                            <td class="td-content">
                                {{ \Carbon\Carbon::parse($dataPerhitungan->tanggal_import)->Format('d-m-Y') }}
                            </td>
                        @endif
                        <td class="td-content">{{ $dataPerhitungan->total_item }}</td>
                        @if ($loop->iteration == 1)
                            <td class="td-content" rowspan="{{ count($dataRekapitulasi) }}">
                                {{ $dataCso->csomaterial }}</td>
                        @endif

                        <td class="td-content" @if (substr($dataCso->doccsoid, 0, 3) == 'CSO')  @endif>
                            {{ $dataPerhitungan->item_ada }}</td>
                        <td class="td-content">{{ $item_ok }}</td>
                        <td class="td-content">{{ $dataPerhitungan->item_selisih }}</td>
                        <td class="td-content">
                            {{ round(($item_ok / $dataPerhitungan->total_item) * 100, 2) }}%
                        </td>
                        <td class="td-content">{{ $dataPerhitungan->item_selisih_plus }}</td>
                        <td class="td-content">{{ $dataPerhitungan->item_selisih_minus }}</td>
                        <td class="td-content">{{ $dataPerhitungan->beda_batch }}</td>
                        <td class="td-content">{{ $dataPerhitungan->tertukar }}</td>
                        <td class="td-content">
                            {{ round(($dataPerhitungan->item_selisih / $dataPerhitungan->total_item) * 100, 2) }}%
                        </td>
                    </tr>
                @endforeach
                <tr class="tr-rekapitulasi-global">
                    <td class="td-content"
                        @if (substr($dataCso->doccsoid, 0, 3) == 'CSS') colspan="3"
                    @else
                    colspan="2" @endif
                        style="font-weight: bold">Selisih
                        Karena Admin</td>
                        <td class="td-content">
                            {{ $totalItemOk }}</td>
                    <td class="td-content">{{ $totalItemOk - $faktorAdminSelisih }}</td>
                    <td class="td-content">{{ $faktorAdminSelisih }}</td>
                    <td class="td-content">
                        @if ($totalItemOk != 0)
                            {{ round((($totalItemOk - $faktorAdminSelisih) / $totalItemOk) * 100, 2) }}%
                        @else
                            0
                        @endif
                    </td>
                    <td class="td-content" colspan="4" {{-- style="background-color: rgb(165, 165, 165)" --}}></td>
                    <td class="td-content">
                        @if ($totalItemOk != 0)
                            {{ round(($faktorAdminSelisih / $totalItemOk) * 100, 2) }}%
                        @else
                            0
                        @endif
                    </td>
                </tr>
                @if (substr($dataCso->doccsoid, 0, 3) == 'CSS')
                    <tr class="tr-rekapitulasi-global" style="font-weight: bolder">
                        <td class="td-content" colspan="3"style="font-weight: bold">TOTAL</td>
                        <td class="td-content">{{ $totalItemAda }}</td>
                        <td class="td-content">{{ $totalItemOk }}</td>
                        <td class="td-content">{{ $totalItemSelisih }}</td>
                        <td class="td-content">
                            @if ($totalItemOk != 0)
                                {{ round(($totalItemOk / $totalItemAda) * 100, 2) }}%
                            @else
                                0
                            @endif
                        </td>
                        <td class="td-content" colspan="4"></td>
                        <td class="td-content">
                            @if ($totalItemOk != 0)
                                {{ round(($totalItemSelisih / $totalItemAda) * 100, 2) }}%
                            @else
                                0
                            @endif
                        </td>
                    </tr>
                @endif
            </tbody>
        </table>
    </div>
    <div style="margin-top: 15px">
        @php
            $totalSlsLbrKesalahanAdmin = 0;
            $totalRealitaLbrKesalahanAdmin = 0;
            $totalBarangSelisihPlusKesalahanAdmin = 0;
            $totalBarangSelisihMinusKesalahanAdmin = 0;
            $totalHppKesalahanAdmin = 0;
            $totalNominalSelisihPlusKesalahanAdmin = 0;
            $totalNominalSelisihMinusKesalahanAdmin = 0;
            $totalNominalPembebananKesalahanAdmin = 0;

            $totalSlsLbrTertukar = 0;
            $totalRealitaLbrTertukar = 0;
            $totalBarangSelisihPlusTertukar = 0;
            $totalBarangSelisihMinusTertukar = 0;
            $totalHppTertukar = 0;
            $totalNominalSelisihPlusTertukar = 0;
            $totalNominalSelisihMinusTertukar = 0;
            $totalNominalPembebananTertukar = 0;

            $totalSlsLbrGudangTertukar = 0;
            $totalRealitaLbrGudangTertukar = 0;
            $totalBarangSelisihPlusGudangTertukar = 0;
            $totalBarangSelisihMinusGudangTertukar = 0;
            $totalHppGudangTertukar = 0;
            $totalNominalSelisihPlusGudangTertukar = 0;
            $totalNominalSelisihMinusGudangTertukar = 0;
            $totalNominalPembebananGudangTertukar = 0;
            $nameGudangTertukar="";
            $showGudangTertukar=true;

            $totalSlsLbrSelisih = 0;
            $totalRealitaLbrSelisih = 0;
            $totalBarangSelisihPlusSelisih = 0;
            $totalBarangSelisihMinusSelisih = 0;
            $totalHppSelisih = 0;
            $totalNominalSelisihPlusSelisih = 0;
            $totalNominalSelisihMinusSelisih = 0;
            $totalNominalPembebananSelisih = 0;
        @endphp

        <h4>
            IV. LIST ITEM BARANG YANG SELISIH
        </h4>

        <table style=" border-collapse: collapse;width: 100%;">
            <tbody>
                <tr class="tr-head" style="page-break-after: avoid;">
                    <th class="th-item-selisih" rowspan="2" style="width: 0.5cm">No</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 1.5cm">Nama Item</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 0.75cm">Keputusan</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 0.75cm">SLS <br> LBR</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 0.75cm">Realita <br> LBR</th>
                    <th class="th-item-selisih" colspan="2" style="width: 1.75cm">Barang Selisih</th>
                    @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                        <th class="th-item-selisih" rowspan="2" style="width: 2cm">HPP</th>
                        <th class="th-item-selisih" colspan="2" style="page-break-inside: avoid;">Nominal</th>
                    @endif
                    <th class="th-item-selisih" rowspan="2" style="width: 2cm">Nominal <br>
                        Pembebanan</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 1cm">No. Adjust <br>
                        (GI/SJ & GR)</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 1.75cm">Keterangan</th>
                </tr>
                <tr class="tr-head" style="page-break-after: avoid;">
                    <th class="th-item-selisih" style="width:0.5cm">Plus</th>
                    <th class="th-item-selisih" style="width:0.5cm">Minus</th>
                    @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                        <th class="th-item-selisih" style="width: 1.25cm">Selisih Plus</th>
                        <th class="th-item-selisih" style="width: 1.25cm">Selisih Minus</th>
                    @endif
                </tr>
                <tr>
                    <td @if (Auth::user()->level == 6 || Auth::user()->level == 12) colspan="10" @else colspan="13" @endif
                        class="tr-body-divider">
                        Kesalahan Admin
                    </td>
                </tr>
                @foreach ($dataItemKesalahanAdmin as $itemKesalahanAdmin)
                    @php
                        $barangSelisihPlusKesalahanAdmin = '';
                        $barangSelisihMinusKesalahanAdmin = '';
                        $nominalSelisihPlusKesalahanAdmin = '';
                        $nominalSelisihMinusKesalahanAdmin = '';
                        $getHppKesalahanAdmin = 0;

                        if ($itemKesalahanAdmin->hpp_manual == 0) {
                            $getHppKesalahanAdmin = $itemKesalahanAdmin->hpp;
                        } else {
                            $getHppKesalahanAdmin = $itemKesalahanAdmin->hpp_manual;
                        }

                        $barangSelisihKesalahanAdmin =
                            $itemKesalahanAdmin->hasilcso -
                                ($itemKesalahanAdmin->onhand -
                                    $itemKesalahanAdmin->koreksi -
                            $itemKesalahanAdmin->deviasi);
                        // $nominalSelisihKesalahanAdmin =
                        //     ($itemKesalahanAdmin->hasilcso -
                        //         ($itemKesalahanAdmin->onhand -
                        //             $itemKesalahanAdmin->koreksi -
                        //             $itemKesalahanAdmin->deviasi)) *
                        //     $getHppKesalahanAdmin;
                        $nominalSelisihKesalahanAdmin =
                            $barangSelisihKesalahanAdmin *
                            $getHppKesalahanAdmin;

                        if ( $itemKesalahanAdmin->onhand <
                                $itemKesalahanAdmin->hasilcso +
                                $itemKesalahanAdmin->koreksi +
                                $itemKesalahanAdmin->deviasi ) 
                        {
                            $barangSelisihPlusKesalahanAdmin = number_format(
                                $barangSelisihKesalahanAdmin,
                                2,
                                ',',
                                '.',
                            );
                            $nominalSelisihPlusKesalahanAdmin =
                            'Rp. ' .
                            number_format($nominalSelisihKesalahanAdmin, 2, ',', '.');
                            $totalBarangSelisihPlusKesalahanAdmin += $barangSelisihKesalahanAdmin;
                            $totalNominalSelisihPlusKesalahanAdmin += $nominalSelisihKesalahanAdmin;
                        } 
                        else {
                            $barangSelisihMinusKesalahanAdmin = number_format(
                                $barangSelisihKesalahanAdmin,
                                2,
                                ',',
                                '.',
                            );
                            $nominalSelisihMinusKesalahanAdmin =
                                                        'Rp. ' .
                                                        number_format($nominalSelisihKesalahanAdmin, 2, ',', '.');
                            $totalBarangSelisihMinusKesalahanAdmin += $barangSelisihKesalahanAdmin;
                            $totalNominalSelisihMinusKesalahanAdmin += $nominalSelisihKesalahanAdmin;
                        }

                        $slsLbrKesalahanAdmin = $itemKesalahanAdmin->onhand ;
                        $realitaLbrKesalahanAdmin = $itemKesalahanAdmin->hasilcso+
                            $itemKesalahanAdmin->koreksi +
                            $itemKesalahanAdmin->deviasi;

                        $totalSlsLbrKesalahanAdmin += $slsLbrKesalahanAdmin;
                        $totalRealitaLbrKesalahanAdmin += $realitaLbrKesalahanAdmin;
                        $totalHppKesalahanAdmin += $getHppKesalahanAdmin;
                        $totalNominalPembebananKesalahanAdmin +=
                            $itemKesalahanAdmin->pembebanan;
                    @endphp
                    <tr class="tr-selisih">
                        <td class="td-content" style="text-align: center">{{ $loop->iteration }}</td>
                        <td class="td-content" style="padding-left: 5px">
                            {{ $itemKesalahanAdmin->itemname }}</td>
                        <td class="td-content" style="text-align: center">
                            @if ($itemKesalahanAdmin->keputusan != 0)
                                {{ $itemKesalahanAdmin->keputusandesc }}
                            @else
                                -
                            @endif
                        </td>
                        <td class="td-content" style="text-align: center">
                            {{ number_format($slsLbrKesalahanAdmin, 2, ',', '.') }}
                        </td>
                        <td class="td-content" style="text-align: center">
                            {{ number_format($realitaLbrKesalahanAdmin, 2, ',', '.') }}
                        </td>
                        <td class="td-content" style="text-align: center">
                            {{ $barangSelisihPlusKesalahanAdmin }}
                        </td>
                        <td style="text-align: center" class="td-selisih-minus">
                            {{ $barangSelisihMinusKesalahanAdmin }}
                        </td>
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            <td class="td-content" style="text-align: center">Rp.
                                {{ number_format($getHppKesalahanAdmin, 2, ',', '.') }}
                            </td>
                            <td class="td-content" style="text-align: center">
                                {{ $nominalSelisihPlusKesalahanAdmin }}
                            </td>
                            <td style="text-align: center" class="td-selisih-minus">
                                {{ $nominalSelisihMinusKesalahanAdmin }}
                            </td>
                        @endif
                        <td class="td-content" style="text-align: center; color: red"> 
                            @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                                Rp. {{ number_format($itemKesalahanAdmin->pembebanan, 2, ',', '.') }}
                            @else
                            @endif
                        </td>
                        <td class="td-content" style="text-align: center">
                            {{ $itemKesalahanAdmin->nodoc }}</td>
                        <td class="td-content" style="text-align: center">
                            {{ $itemKesalahanAdmin->keterangan }}</td>
                    </tr>
                @endforeach
                </tr>
                @if (count($dataItemKesalahanAdmin) > 0)
                    <tr class="tr-body-calculator" style="font-size: 11pt">
                        <td class="td-content" colspan="3">Total</td>
                        <td class="td-content">
                            {{ number_format($totalSlsLbrKesalahanAdmin, 2, ',', '.') }}</td>
                        <td class="td-content">
                            {{ number_format($totalRealitaLbrKesalahanAdmin, 2, ',', '.') }}
                        </td>
                        <td class="td-content">
                            {{ number_format($totalBarangSelisihPlusKesalahanAdmin, 2, ',', '.') }}
                        </td>
                        <td class="td-content" style="color: red">
                            {{ number_format($totalBarangSelisihMinusKesalahanAdmin, 2, ',', '.') }}
                        </td>
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            <td class="td-content">Rp.
                                {{ number_format($totalHppKesalahanAdmin, 2, ',', '.') }}
                            </td>
                            <td class="td-content">Rp.
                                {{ number_format($totalNominalSelisihPlusKesalahanAdmin, 2, ',', '.') }}
                            </td>
                            <td class="td-content" style="color: red">Rp.
                                {{ number_format($totalNominalSelisihMinusKesalahanAdmin, 2, ',', '.') }}
                            </td>
                        @endif
                        <td class="td-content" style="color: red">Rp.
                            {{ number_format($totalNominalPembebananKesalahanAdmin, 2, ',', '.') }}
                        </td>
                        <td class="td-content" colspan="2" {{-- style="background-color: rgb(165, 165, 165)" --}}></td>
                    </tr>
                @endif
                <tr class="tr-head" style="page-break-after: avoid;">
                    <th class="th-item-selisih" rowspan="2" style="width: 0.5cm">No</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 1.5cm">Nama Item</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 0.75cm">Keputusan</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 0.75cm">SLS <br> LBR</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 0.75cm">Realita <br> LBR</th>
                    <th class="th-item-selisih" colspan="2" style="width: 1.75cm">Barang Selisih</th>
                    @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                        <th class="th-item-selisih" rowspan="2" style="width: 2cm">HPP</th>
                        <th class="th-item-selisih" colspan="2">Nominal</th>
                    @endif
                    <th class="th-item-selisih" rowspan="2" style="width: 2cm">Nominal <br>
                        Pembebanan</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 1cm">No. Adjust <br>
                        (GI/SJ & GR)</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 1.75cm">Keterangan</th>
                </tr>
                <tr class="tr-head" style="page-break-after: avoid;">
                    <th class="th-item-selisih" style="width:0.5cm">Plus</th>
                    <th class="th-item-selisih" style="width:0.5cm">Minus</th>
                    @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                        <th class="th-item-selisih" style="width: 1.25cm">Selisih Plus</th>
                        <th class="th-item-selisih" style="width: 1.25cm">Selisih Minus</th>
                    @endif
                </tr>
                <tr>
                    <td @if (Auth::user()->level == 6 || Auth::user()->level == 12) colspan="10" @else colspan="13" @endif
                        class="tr-body-divider">
                        Item Tertukar
                    </td>
                </tr>
                @foreach ($dataItemTertukar as $itemTertukar)
                    @php
                        $barangSelisihPlusTertukar = '';
                        $barangSelisihMinusTertukar = '';
                        $nominalSelisihPlusTertukar = '';
                        $nominalSelisihMinusTertukar = '';
                        $getHppTertukar = 0;
                        $groupValue = $itemTertukar->group_value;
                        $groupValuePembebanan = true;

                        if ($itemTertukar->hpp_manual == 0) {
                            $getHppTertukar = $itemTertukar->hpp;
                        } else {
                            $getHppTertukar = $itemTertukar->hpp_manual;
                        }

                        $slsLbrTertukar = $itemTertukar->onhand ;
                        $realitaLbrTertukar = $itemTertukar->hasilcso+
                                $itemTertukar->koreksi +
                                $itemTertukar->deviasi;

                        if ($groupValue == 0) 
                        {
                            $barangSelisihTertukar =
                                $itemTertukar->hasilcso -
                                ($itemTertukar->onhand -
                                    $itemTertukar->koreksi -
                                    $itemTertukar->deviasi);
                            // $nominalSelisihTertukar =
                            //     ($itemTertukar->hasilcso -
                            //         ($itemTertukar->onhand -
                            //             $itemTertukar->koreksi -
                            //             $itemTertukar->deviasi)) *
                            //     $getHppTertukar;
                            $nominalSelisihTertukar =
                            $barangSelisihTertukar *
                                $getHppTertukar;
                        } 
                        else {
                            
                            $barangSelisihTertukar = $groupValue;
                            $nominalSelisihTertukar = $groupValue * $getHppTertukar;

                            // $slsLbrTertukar = $groupValue;
                            // $realitaLbrTertukar = $groupValue;
                        }

                        if ( $itemTertukar->onhand <
                            $itemTertukar->hasilcso +
                                $itemTertukar->koreksi +
                                $itemTertukar->deviasi && $groupValue == 0 ) 
                        {
                            $barangSelisihPlusTertukar = number_format(
                                $barangSelisihTertukar,
                                2,
                                ',',
                                '.',
                            );
                            $nominalSelisihPlusTertukar =
                                'Rp. ' . number_format($nominalSelisihTertukar, 2, ',', '.');
                            $totalBarangSelisihPlusTertukar += $barangSelisihTertukar;
                            $totalNominalSelisihPlusTertukar += $nominalSelisihTertukar;
                            $totalNominalPembebananTertukar += $itemTertukar->pembebanan;
                        } 
                        else if( $itemTertukar->onhand >
                                $itemTertukar->hasilcso +
                                $itemTertukar->koreksi +
                                $itemTertukar->deviasi && $groupValue == 0 ) 
                        {
                            $barangSelisihMinusTertukar = number_format(
                                $barangSelisihTertukar,
                                2,
                                ',',
                                '.',
                            );
                            $nominalSelisihMinusTertukar =
                                'Rp. ' . number_format($nominalSelisihTertukar, 2, ',', '.');
                            $totalBarangSelisihMinusTertukar += $barangSelisihTertukar;
                            $totalNominalSelisihMinusTertukar += $nominalSelisihTertukar;
                            $totalNominalPembebananTertukar += $itemTertukar->pembebanan;
                        }
                        else if($groupValue < 0)
                        {
                            $barangSelisihMinusTertukar = number_format(
                                $barangSelisihTertukar,
                                2,
                                ',',
                                '.',
                            );
                            $nominalSelisihMinusTertukar =
                                'Rp. ' . number_format($nominalSelisihTertukar, 2, ',', '.');
                            $totalBarangSelisihMinusTertukar += $barangSelisihTertukar;
                            $totalNominalSelisihMinusTertukar += $nominalSelisihTertukar;
                            if( abs($itemTertukar->hasilcso - 
                                ($itemTertukar->onhand - 
                                $itemTertukar->koreksi -
                                $itemTertukar->deviasi)) == abs($groupValue) )
                            {
                                $totalNominalPembebananTertukar += $itemTertukar->pembebanan;
                            }
                            else {
                                $totalNominalPembebananTertukar += 0;
                                $groupValuePembebanan = false;
                            }
                                                    
                        } 
                        else if($groupValue > 0)
                        {
                            $barangSelisihPlusTertukar = number_format(
                                $barangSelisihTertukar,
                                2,
                                ',',
                                '.',
                            );
                            $nominalSelisihPlusTertukar =
                                'Rp. ' . number_format($nominalSelisihTertukar, 2, ',', '.');
                            $totalBarangSelisihPlusTertukar += $barangSelisihTertukar;
                            $totalNominalSelisihPlusTertukar += $nominalSelisihTertukar;
                                if( abs($itemTertukar->hasilcso - 
                                    ($itemTertukar->onhand - 
                                    $itemTertukar->koreksi -
                                    $itemTertukar->deviasi)) == abs($groupValue) )
                                {
                                    $totalNominalPembebananTertukar += $itemTertukar->pembebanan;
                                }
                                else {
                                    $totalNominalPembebananTertukar += 0;
                                    $groupValuePembebanan = false;
                                }
                        }

                        $totalSlsLbrTertukar += $slsLbrTertukar;
                        $totalRealitaLbrTertukar += $realitaLbrTertukar;
                        $totalHppTertukar += $getHppTertukar;
                        // $totalNominalPembebananTertukar += $itemTertukar->pembebanan;
                    @endphp
                    <tr class="tr-selisih">
                        <td class="td-content" style="text-align: center">{{ $loop->iteration }}</td>
                        <td class="td-content" style="padding-left: 5px">{{ $itemTertukar->itemname }}
                        </td>
                        <td class="td-content" style="text-align: center">
                            @if ($itemTertukar->keputusan != 0)
                                {{ $itemTertukar->keputusandesc }}
                            @else
                                -
                            @endif
                        </td>
                        <td class="td-content" style="text-align: center">
                            {{ number_format($slsLbrTertukar, 2, ',', '.') }}
                        </td>
                        <td class="td-content" style="text-align: center">
                            {{ number_format($realitaLbrTertukar, 2, ',', '.') }}
                        </td>
                        <td class="td-content" style="text-align: center">
                            {{ $barangSelisihPlusTertukar }}
                        </td>
                        <td style="text-align: center" class="td-selisih-minus">
                            {{ $barangSelisihMinusTertukar }}
                        </td>
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            <td class="td-content" style="text-align: center">Rp.
                                {{ number_format($getHppTertukar, 2, ',', '.') }}
                            </td>
                            <td class="td-content" style="text-align: center">
                                {{ $nominalSelisihPlusTertukar }}
                            </td>
                            <td style="text-align: center" class="td-selisih-minus">
                                {{ $nominalSelisihMinusTertukar }}
                            </td>
                        @endif
                        <td class="td-content" style="text-align: center; color: red"> 
                            @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                                @if ($groupValuePembebanan)
                                    Rp. {{ number_format($itemTertukar->pembebanan, 2, ',', '.') }}
                                @else Rp. 0,00
                                @endif
                            @else
                            @endif
                        </td>
                        <td class="td-content" style="text-align: center">{{ $itemTertukar->nodoc }}</td>
                        <td class="td-content" style="text-align: center">{{ $itemTertukar->keterangan }}
                        </td>
                    </tr>
                @endforeach
                </tr>
                @if (count($dataItemTertukar) > 0)
                    <tr class="tr-body-calculator" style="font-size: 11pt">
                        <td class="td-content" colspan="3">Total</td>
                        <td class="td-content">{{ number_format($totalSlsLbrTertukar, 2, ',', '.') }}
                        </td>
                        <td class="td-content">
                            {{ number_format($totalRealitaLbrTertukar, 2, ',', '.') }}
                        </td>
                        <td class="td-content">
                            {{ number_format($totalBarangSelisihPlusTertukar, 2, ',', '.') }}</td>
                        <td class="td-content" style="color: red">
                            {{ number_format($totalBarangSelisihMinusTertukar, 2, ',', '.') }}</td>
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            <td class="td-content">Rp. 
                                {{ number_format($totalHppTertukar, 2, ',', '.') }}
                            </td>
                            <td class="td-content">Rp.
                                {{ number_format($totalNominalSelisihPlusTertukar, 2, ',', '.') }}</td>
                            <td class="td-content" style="color: red">Rp.
                                {{ number_format($totalNominalSelisihMinusTertukar, 2, ',', '.') }}
                            </td>
                        @endif
                        <td class="td-content" style="color: red">Rp.
                            {{ number_format($totalNominalPembebananTertukar, 2, ',', '.') }}</td>
                        <td class="td-content" colspan="2" {{-- style="background-color: rgb(165, 165, 165)" --}}></td>
                    </tr>
                @endif

                {{-- gudang tertukar --}}

                @if(count($gudangTertukar)>0 && $useWrhGrp!=0)
                    <tr class="tr-head">
                        <th class="th-content" rowspan="2" style="width: 0.5cm">No</th>
                        <th class="th-content" rowspan="2" style="width: 3cm">Nama Item</th>
                        {{-- <th class="th-content" rowspan="2" style="width: 1cm">Keputusan</th> --}}
                        <th class="th-content" rowspan="2" style="width: 1cm">Gudang</th>
                        <th class="th-content" rowspan="2" style="width: 1cm">SLS <br> LBR</th>
                        <th class="th-content" rowspan="2" style="width: 1cm">Realita <br> LBR</th>
                        <th class="th-content" colspan="2" style="width: 1.75cm">Barang Selisih</th>
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            <th class="th-content" rowspan="2" style="width: 3cm">HPP</th>
                            <th class="th-content" colspan="2">Nominal</th>
                        @endif
                        <th class="th-content" rowspan="2" style="width: 2.25cm">Nominal <br>
                            Pembebanan</th>
                        <th class="th-content" rowspan="2" style="width: 2.25cm">No. Adjust <br>
                            (GI/SJ & GR)</th>
                        <th class="th-content" rowspan="2" style="width: 2.5cm">Keterangan</th>
                    </tr>
                    <tr class="tr-head">
                        <th class="th-content" style="width:0.5cm">Plus</th>
                        <th class="th-content" style="width:0.5cm">Minus</th>
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            <th class="th-content" style="width: 2cm">Selisih Plus</th>
                            <th class="th-content" style="width: 2.25cm">Selisih Minus</th>
                        @endif
                    </tr>
                    <tr>
                        <td @if (Auth::user()->level == 6 || Auth::user()->level == 12) colspan="10" @else colspan="13" @endif
                            class="tr-body-divider">
                            Grade Tertukar
                        </td>
                    </tr>
                        @foreach ($gudangTertukar as $itemTertukar)
                            @php
                                $barangSelisihPlusTertukar = '';
                                $barangSelisihMinusTertukar = '';
                                $nominalSelisihPlusTertukar = '';
                                $nominalSelisihMinusTertukar = '';
                                $getHppTertukar = 0;
                                if( $nameGudangTertukar=="" || $nameGudangTertukar!=$itemTertukar->trsdetid)
                                {
                                    $nameGudangTertukar=$itemTertukar->trsdetid;
                                    $showGudangTertukar=true;
                                }
                                elseif ($nameGudangTertukar==$itemTertukar->trsdetid)
                                    {$showGudangTertukar=false;
                                }
                                // $groupValue = $itemTertukar->group_value;
                                // $groupValuePembebanan = true;

                                // if ($itemTertukar->cogs_manual == 0) {
                                //     $getHppTertukar = $itemTertukar->cogs;
                                // } else {
                                //     $getHppTertukar = $itemTertukar->hpp_manual;
                                // }

                                // $slsLbrTertukar = $itemTertukar->onhand ;
                                // $realitaLbrTertukar = $itemTertukar->hasilcso+
                                //         $itemTertukar->koreksi +
                                //         $itemTertukar->deviasi;

                                // if ($groupValue == 0)
                                // {
                                //     $barangSelisihTertukar =
                                //         $itemTertukar->hasilcso -
                                //         ($itemTertukar->onhand -
                                //             $itemTertukar->koreksi -
                                //             $itemTertukar->deviasi);
                                //     // $nominalSelisihTertukar =
                                //     //     ($itemTertukar->hasilcso -
                                //     //         ($itemTertukar->onhand -
                                //     //             $itemTertukar->koreksi -
                                //     //             $itemTertukar->deviasi)) *
                                //     //     $getHppTertukar;
                                //     $nominalSelisihTertukar =
                                //         $barangSelisihTertukar *
                                //         $getHppTertukar;
                                // }
                                // else {
                                    
                                //     $barangSelisihTertukar = $groupValue;
                                //     $nominalSelisihTertukar = $groupValue * $getHppTertukar;

                                //     // $slsLbrTertukar = $groupValue;
                                //     // $realitaLbrTertukar = $groupValue;
                                // }

                                // if ( $itemTertukar->onhand <
                                //     $itemTertukar->hasilcso +
                                //         $itemTertukar->koreksi +
                                //         $itemTertukar->deviasi && $groupValue == 0 ) 
                                // {
                                //     $barangSelisihPlusTertukar = number_format(
                                //         $barangSelisihTertukar,
                                //         2,
                                //         ',',
                                //         '.',
                                //     );
                                //     $nominalSelisihPlusTertukar =
                                //         'Rp. ' . number_format($nominalSelisihTertukar, 2, ',', '.');
                                //     $totalBarangSelisihPlusTertukar += $barangSelisihTertukar;
                                //     $totalNominalSelisihPlusTertukar += $nominalSelisihTertukar;
                                //     $totalNominalPembebananTertukar += $itemTertukar->pembebanan;
                                // } 
                                // else if( $itemTertukar->onhand >
                                //     $itemTertukar->hasilcso +
                                //         $itemTertukar->koreksi +
                                //         $itemTertukar->deviasi && $groupValue == 0 ) 
                                // {
                                //     $barangSelisihMinusTertukar = number_format(
                                //         $barangSelisihTertukar,
                                //         2,
                                //         ',',
                                //         '.',
                                //     );
                                //     $nominalSelisihMinusTertukar =
                                //         'Rp. ' . number_format($nominalSelisihTertukar, 2, ',', '.');
                                //     $totalBarangSelisihMinusTertukar += $barangSelisihTertukar;
                                //     $totalNominalSelisihMinusTertukar += $nominalSelisihTertukar;
                                //     $totalNominalPembebananTertukar += $itemTertukar->pembebanan;
                                // }
                                // else if($groupValue < 0)
                                // {
                                //     $barangSelisihMinusTertukar = number_format(
                                //         $barangSelisihTertukar,
                                //         2,
                                //         ',',
                                //         '.',
                                //     );
                                //     $nominalSelisihMinusTertukar =
                                //         'Rp. ' . number_format($nominalSelisihTertukar, 2, ',', '.');
                                //     $totalBarangSelisihMinusTertukar += $barangSelisihTertukar;
                                //     $totalNominalSelisihMinusTertukar += $nominalSelisihTertukar;
                                //     if( abs($itemTertukar->hasilcso - 
                                //         ($itemTertukar->onhand - 
                                //         $itemTertukar->koreksi -
                                //         $itemTertukar->deviasi)) == abs($groupValue) )
                                //     {
                                //         $totalNominalPembebananTertukar += $itemTertukar->pembebanan;
                                //     }
                                //     else {
                                //         $totalNominalPembebananTertukar += 0;
                                //         $groupValuePembebanan = false;
                                //     }
                                    
                                // }
                                // else if($groupValue > 0)
                                // {
                                //     $barangSelisihPlusTertukar = number_format(
                                //         $barangSelisihTertukar,
                                //         2,
                                //         ',',
                                //         '.',
                                //     );
                                //     $nominalSelisihPlusTertukar =
                                //         'Rp. ' . number_format($nominalSelisihTertukar, 2, ',', '.');
                                //     $totalBarangSelisihPlusGudangTertukar += $barangSelisihTertukar;
                                //     $totalNominalSelisihPlusGudangTertukar += $nominalSelisihTertukar;
                                //     if( abs($itemTertukar->hasilcso - 
                                //         ($itemTertukar->onhand - 
                                //         $itemTertukar->koreksi -
                                //         $itemTertukar->deviasi)) == abs($groupValue) )
                                //     {
                                //         $totalNominalPembebananTertukar += $itemTertukar->pembebanan;
                                //     }
                                //     else {
                                //         $totalNominalPembebananTertukar += 0;
                                //         $groupValuePembebanan = false;
                                //     }
                                // }

                                if ($itemTertukar->cogs_manual == 0) {
                                    $getHppTertukar = $itemTertukar->cogs;
                                } else {
                                    $getHppTertukar = $itemTertukar->cogs_manual;
                                }

                                $slsLbrTertukar = $itemTertukar->qty ;
                                $realitaLbrTertukar = $itemTertukar->totalcso;
                                    
                                // $barangSelisihTertukar = $itemTertukar->qty-$itemTertukar->totalcso;
                                $barangSelisihTertukar = $itemTertukar->totalcso-$itemTertukar->qty;
                                $nominalSelisihTertukar = $barangSelisihTertukar * $getHppTertukar;
                                
                                if($barangSelisihTertukar>0)
                                {
                                    $barangSelisihPlusTertukar = number_format(
                                        $barangSelisihTertukar,
                                        2,
                                        ',',
                                        '.',
                                    );
                                    $nominalSelisihPlusTertukar =
                                        'Rp. ' . number_format($nominalSelisihTertukar, 2, ',', '.');
                                    $totalBarangSelisihPlusGudangTertukar += $barangSelisihTertukar;
                                    $totalNominalSelisihPlusGudangTertukar += $nominalSelisihTertukar;
                                }
                                else {
                                    $barangSelisihMinusTertukar = number_format(
                                        $barangSelisihTertukar,
                                        2,
                                        ',',
                                        '.',
                                    );
                                    $nominalSelisihMinusTertukar =
                                        'Rp. ' . number_format($nominalSelisihTertukar, 2, ',', '.');
                                    $totalBarangSelisihMinusGudangTertukar += $barangSelisihTertukar;
                                    $totalNominalSelisihMinusGudangTertukar += $nominalSelisihTertukar;
                                }

                                if($showGudangTertukar)
                                {
                                    $totalNominalPembebananGudangTertukar += $itemTertukar->pembebanan;
                                }

                                $totalSlsLbrGudangTertukar += $slsLbrTertukar;
                                $totalRealitaLbrGudangTertukar += $realitaLbrTertukar;
                                $totalHppGudangTertukar += $getHppTertukar;
                                // $totalNomina
                            @endphp
                    <tr class="tr-selisih">
                        <td class="td-content" style="text-align: center">{{ $loop->iteration }}</td>
                        <td class="td-content" style="padding-left: 5px">{{ $itemTertukar->itemname }}
                        </td>
                        {{-- <td class="td-content" style="text-align: center">
                            @if ($itemTertukar->keputusan != 0)
                                {{ $itemTertukar->keputusandesc }}
                            @else
                                -
                            @endif
                        </td> --}}
                        <td class="td-content" style="text-align: center">
                            @if ($itemTertukar->wrh != "")
                                {{ $itemTertukar->wrh }}
                            @else
                                -
                            @endif
                        </td>
                        <td class="td-content" style="text-align: center">
                            {{ number_format($slsLbrTertukar, 2, ',', '.') }}
                        </td>
                        <td class="td-content" style="text-align: center">
                            {{ number_format($realitaLbrTertukar, 2, ',', '.') }}
                        </td>
                        <td class="td-content" style="text-align: center">
                            {{ $barangSelisihPlusTertukar }}
                        </td>
                        <td style="text-align: center" class="td-selisih-minus">
                            {{ $barangSelisihMinusTertukar }}
                        </td>
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            <td class="td-content" style="text-align: center">Rp.
                                {{ number_format($getHppTertukar, 2, ',', '.') }}
                            </td>
                            <td class="td-content" style="text-align: center">
                                {{ $nominalSelisihPlusTertukar }}
                            </td>
                            <td style="text-align: center" class="td-selisih-minus">
                                {{ $nominalSelisihMinusTertukar }}
                            </td>
                        @endif
                        <td class="td-content" style="text-align: center; color: red"> 
                            @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                                @if ($showGudangTertukar)
                                    Rp. {{ number_format($itemTertukar->pembebanan, 2, ',', '.') }}
                                @else Rp. 0,00
                                @endif
                            @else
                            @endif
                        </td>
                        <td class="td-content" style="text-align: center">{{ $itemTertukar->nodoc }}</td>
                        <td class="td-content" style="text-align: center">{{ $itemTertukar->keterangan }}
                        </td>
                        {{-- <td class="td-content" style="text-align: center">
                            {{ number_format($itemTertukar->qty, 2, ',', '.') }}
                        </td>
                        <td class="td-content" style="text-align: center">
                            {{ number_format($itemTertukar->totalcso, 2, ',', '.') }}
                        </td>
                        <td class="td-content" style="text-align: center">
                            {{ $itemTertukar->selisihplus }}
                        </td>
                        <td style="text-align: center" class="td-selisih-minus">
                            {{ $itemTertukar->selisihminus }}
                        </td>
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            <td class="td-content" style="text-align: center">Rp.
                                @if($itemTertukar->cogs_manual!=null)
                                {{ number_format($itemTertukar->cogs_manual, 2, ',', '.') }}
                                @else
                                {{ number_format($itemTertukar->cogs, 2, ',', '.') }}
                                @endif
                            </td>
                            <td class="td-content" style="text-align: center">
                                @if ($itemTertukar->cogs_manual != 0)
                                Rp.{{ number_format(($itemTertukar->cogs_manual * $itemTertukar->selisihplus), 2, '.', ',') }}
                            @else
                                Rp.{{ number_format($itemTertukar->cogs * $itemTertukar->selisihplus, 2, '.', ',') }}
                            @endif
                        
                            </td>
                            <td style="text-align: center" class="td-selisih-minus">
                            
                                @if ($itemTertukar->cogs_manual != 0)
                                Rp.{{ number_format(($itemTertukar->cogs_manual * $itemTertukar->selisihminus), 2, '.', ',') }}
                            @else
                                Rp.{{ number_format($itemTertukar->cogs * $itemTertukar->selisihminus, 2, '.', ',') }}
                            @endif
                            </td>
                        @endif
                        <td class="td-content" style="text-align: center; color: red"> 
                            @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                                
                                    Rp. {{ number_format($itemTertukar->pembebanan, 2, ',', '.') }}
                            
                            @else
                            @endif
                        </td>
                        <td class="td-content" style="text-align: center">{{ $itemTertukar->nodoc }}</td>
                        <td class="td-content" style="text-align: center">{{ $itemTertukar->keterangan }}
                        </td> --}}
                    </tr>
                    @endforeach
                    @if (count($gudangTertukar) > 0)
                        <tr class="tr-body-calculator" style="font-size: 9pt">
                            <td class="td-content" colspan="3">Total</td>
                            <td class="td-content">{{ number_format($totalSlsLbrGudangTertukar, 2, ',', '.') }}
                            </td>
                            <td class="td-content">
                                {{ number_format($totalRealitaLbrGudangTertukar, 2, ',', '.') }}
                            </td>
                            <td class="td-content">
                                {{ number_format($totalBarangSelisihPlusGudangTertukar, 2, ',', '.') }}</td>
                            <td class="td-content" style="color: red">
                                {{ number_format($totalBarangSelisihMinusGudangTertukar, 2, ',', '.') }}</td>
                            @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                                <td class="td-content">Rp.
                                    {{ number_format($totalHppGudangTertukar, 2, ',', '.') }}
                                </td>
                                <td class="td-content">Rp.
                                    {{ number_format($totalNominalSelisihPlusGudangTertukar, 2, ',', '.') }}</td>
                                <td class="td-content" style="color: red">Rp.
                                    {{ number_format($totalNominalSelisihMinusGudangTertukar, 2, ',', '.') }}
                                </td>
                            @endif
                            <td class="td-content" style="color: red">Rp.
                                {{ number_format($totalNominalPembebananGudangTertukar, 2, ',', '.') }}</td>
                            <td class="td-content" colspan="2"
                                style="background-color: rgb(165, 165, 165)"></td>
                        </tr>
                    @endif
                @endif
            
                {{-- gudang tertukar --}}

                <tr class="tr-head" style="page-break-after: avoid;">
                    <th class="th-item-selisih" rowspan="2" style="width: 0.5cm">No</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 1.5cm">Nama Item</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 0.75cm">Keputusan</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 0.75cm">SLS <br> LBR</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 0.75cm">Realita <br> LBR</th>
                    <th class="th-item-selisih" colspan="2" style="width: 1.75cm">Barang Selisih</th>
                    @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                        <th class="th-item-selisih" rowspan="2" style="width: 2cm">HPP</th>
                        <th class="th-item-selisih" colspan="2">Nominal</th>
                    @endif
                    <th class="th-item-selisih" rowspan="2" style="width: 2cm">Nominal <br>
                        Pembebanan</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 1cm">No. Adjust <br>
                        (GI/SJ & GR)</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 1.75cm">Keterangan</th>
                </tr>
                <tr class="tr-head" style="page-break-after: avoid;">
                    <th class="th-item-selisih" style="width:0.5cm">Plus</th>
                    <th class="th-item-selisih" style="width:0.5cm">Minus</th>
                    @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                        <th class="th-item-selisih" style="width: 1.25cm">Selisih Plus</th>
                        <th class="th-item-selisih" style="width: 1.25cm">Selisih Minus</th>
                    @endif
                </tr>
                <tr>
                    <td @if (Auth::user()->level == 6 || Auth::user()->level == 12) colspan="10" @else colspan="13" @endif
                        class="tr-body-divider">
                        Item Selisih Plus Minus
                    </td>
                </tr>
                @foreach ($dataItemSelisih as $itemSelisih)
                    @if (abs($itemSelisih->hasilcso - ($itemSelisih->onhand - $itemSelisih->koreksi - $itemSelisih->deviasi)) !=
                            abs($itemSelisih->group_value))
                        @php
                            $barangSelisihPlusSelisih = '';
                            $barangSelisihMinusSelisih = '';
                            $nominalSelisihPlusSelisih = '';
                            $nominalSelisihMinusSelisih = '';
                            $getHppSelisih = 0;

                            if ($itemSelisih->hpp_manual == 0) {
                                $getHppSelisih = $itemSelisih->hpp;
                            } else {
                                $getHppSelisih = $itemSelisih->hpp_manual;
                            }

                            if($itemSelisih->group_value == 0)
                            {
                                $barangSelisih =
                                    $itemSelisih->hasilcso -
                                    ($itemSelisih->onhand - 
                                    $itemSelisih->koreksi - 
                                    $itemSelisih->deviasi);
                                    // $nominalSelisih =
                                    //     ($itemSelisih->hasilcso -
                                    //         ($itemSelisih->onhand -
                                    //             $itemSelisih->koreksi -
                                    //             $itemSelisih->deviasi)) *
                                    //     $getHppSelisih;
                                $nominalSelisih = $barangSelisih *
                                    $getHppSelisih;
                            }
                            else {
                                if( $itemSelisih->hasilcso -
                                    ($itemSelisih->onhand - 
                                        $itemSelisih->koreksi - 
                                        $itemSelisih->deviasi)>0 )
                                {
                                    $barangSelisih =
                                        ($itemSelisih->hasilcso -
                                        ($itemSelisih->onhand - 
                                        $itemSelisih->koreksi - 
                                        $itemSelisih->deviasi))-
                                        abs($itemSelisih->group_value);
                                    // $nominalSelisih =
                                    //     ($itemSelisih->hasilcso -
                                    //         ($itemSelisih->onhand -
                                    //             $itemSelisih->koreksi -
                                    //             $itemSelisih->deviasi)-abs($itemSelisih->group_value)) *
                                    //     $getHppSelisih;

                                    $nominalSelisih = $barangSelisih * $getHppSelisih;
                                }
                                else {
                                    $barangSelisih =
                                        ($itemSelisih->hasilcso -
                                        ($itemSelisih->onhand - 
                                        $itemSelisih->koreksi - 
                                        $itemSelisih->deviasi))-
                                        $itemSelisih->group_value;
                                    // $nominalSelisih =
                                    //     ($itemSelisih->hasilcso -
                                    //         ($itemSelisih->onhand -
                                    //             $itemSelisih->koreksi -
                                    //             $itemSelisih->deviasi)+$itemSelisih->group_value) *
                                    //     $getHppSelisih;
                                    $nominalSelisih = $barangSelisih * $getHppSelisih;
                                }
                            }
                            if ( $itemSelisih->onhand <
                                $itemSelisih->hasilcso + 
                                $itemSelisih->koreksi + 
                                $itemSelisih->deviasi ) 
                            {
                                $barangSelisihPlusSelisih = number_format($barangSelisih, 2, ',', '.');
                                $nominalSelisihPlusSelisih =
                                    'Rp. ' . number_format($nominalSelisih, 2, ',', '.');
                                $totalBarangSelisihPlusSelisih += $barangSelisih;
                                $totalNominalSelisihPlusSelisih += $nominalSelisih;
                            } 
                            else {
                                $barangSelisihMinusSelisih = number_format($barangSelisih, 2, ',', '.');
                                $nominalSelisihMinusSelisih =
                                    'Rp. ' . number_format($nominalSelisih, 2, ',', '.');
                                $totalBarangSelisihMinusSelisih += $barangSelisih;
                                $totalNominalSelisihMinusSelisih += $nominalSelisih;
                            }

                            $slsLbrSelisih = $itemSelisih->onhand;
                            $realitaLbrSelisih = $itemSelisih->hasilcso + $itemSelisih->koreksi + $itemSelisih->deviasi;

                            $totalSlsLbrSelisih += $slsLbrSelisih;
                            $totalRealitaLbrSelisih += $realitaLbrSelisih;
                            $totalHppSelisih += $getHppSelisih;
                            $totalNominalPembebananSelisih += $itemSelisih->pembebanan;
                        @endphp
                        <tr class="tr-selisih">
                            <td class="td-content" style="text-align: center">{{ $loop->iteration }}</td>
                            <td class="td-content" style="padding-left: 5px">{{ $itemSelisih->itemname }}
                            </td>
                            <td class="td-content" style="text-align: center">
                                @if ($itemSelisih->keputusan != 0)
                                    {{ $itemSelisih->keputusandesc }}
                                @else
                                    -
                                @endif
                            </td>
                            <td class="td-content" style="text-align: center">
                                {{ number_format($slsLbrSelisih, 2, ',', '.') }}
                            </td>
                            <td class="td-content" style="text-align: center">
                                {{ number_format($realitaLbrSelisih, 2, ',', '.') }}
                            </td>
                            <td class="td-content" style="text-align: center">
                                {{ $barangSelisihPlusSelisih }}
                            </td>
                            <td style="text-align: center" class="td-selisih-minus">
                                {{ $barangSelisihMinusSelisih }}
                            </td>
                            @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                                <td class="td-content" style="text-align: center">Rp.
                                    {{ number_format($getHppSelisih, 2, ',', '.') }}
                                </td>
                                <td class="td-content" style="text-align: center">
                                    {{ $nominalSelisihPlusSelisih }}
                                </td>
                                <td style="text-align: center" class="td-selisih-minus">
                                    {{ $nominalSelisihMinusSelisih }}
                                </td>
                            @endif
                            <td class="td-content" style="text-align: center; color: red"> 
                                @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                                    Rp.{{ number_format($itemSelisih->pembebanan, 2, ',', '.') }}
                                @else
                                @endif
                            </td>
                            <td class="td-content" style="text-align: center">{{ $itemSelisih->nodoc }}
                            </td>
                            <td class="td-content" style="text-align: center">
                                {{ $itemSelisih->keterangan }}</td>
                        </tr>
                    @endif
                @endforeach
                @if (count($dataItemSelisih) > 0)
                    <tr class="tr-body-calculator" style="font-size: 11pt">
                        <td class="td-content" colspan="3">Total</td>
                        <td class="td-content">{{ number_format($totalSlsLbrSelisih, 2, ',', '.') }}
                        </td>
                        <td class="td-content">
                            {{ number_format($totalRealitaLbrSelisih, 2, ',', '.') }}
                        </td>
                        <td class="td-content">
                            {{ number_format($totalBarangSelisihPlusSelisih, 2, ',', '.') }}</td>
                        <td class="td-content" style="color: red">
                            {{ number_format($totalBarangSelisihMinusSelisih, 2, ',', '.') }}</td>
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            <td class="td-content">Rp.
                                {{ number_format($totalHppSelisih, 2, ',', '.') }}
                            </td>
                            <td class="td-content">Rp.
                                {{ number_format($totalNominalSelisihPlusSelisih, 2, ',', '.') }}</td>
                            <td class="td-content" style="color: red">Rp.
                                {{ number_format($totalNominalSelisihMinusSelisih, 2, ',', '.') }}</td>
                        @endif
                        <td class="td-content" style="color: red">Rp.
                            {{ number_format($totalNominalPembebananSelisih, 2, ',', '.') }}</td>
                        <td class="td-content" colspan="2" {{-- style="background-color: rgb(165, 165, 165)" --}}></td>
                    </tr>
                @endif
                <tr class="tr-body-kerugian-total" style="font-size: 11pt">
                    <td class="td-content" colspan="8">TOTAL KERUGIAN</td>
                    @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                        <td class="td-content">Rp.
                            {{ number_format($totalNominalSelisihPlusKesalahanAdmin + $totalNominalSelisihPlusTertukar + $totalNominalSelisihPlusSelisih, 2, ',', '.') }}
                        </td>
                        <td class="td-content" style="color: red">Rp.
                            {{ number_format($totalNominalSelisihMinusKesalahanAdmin + $totalNominalSelisihMinusTertukar + $totalNominalSelisihMinusSelisih, 2, ',', '.') }}
                        </td>
                    @endif
                    <td class="td-content" style="color: red">Rp.
                        {{ number_format($totalNominalPembebananKesalahanAdmin + $totalNominalPembebananTertukar + $totalNominalPembebananSelisih, 2, ',', '.') }}
                    </td>
                    <td class="td-content" colspan="2" {{-- style="background-color: rgb(165, 165, 165)" --}}></td>
                </tr>
            </tbody>
        </table>

        <br>
        @php
            $totalSlsLbrTidakHitung = 0;
            $totalRealitaLbrTidakHitung = 0;
            $totalBarangSelisihPlusTidakHitung = 0;
            $totalBarangSelisihMinusTidakHitung = 0;
            $totalHppTidakHitung = 0;
            $totalNominalSelisihPlusTidakHitung = 0;
            $totalNominalSelisihMinusTidakHitung = 0;
            $totalNominalPembebananTidakHitung = 0;
        @endphp
        <table class="mt-5" style=" border-collapse: collapse;width: 100%;"
            @if (count($dataItemTidakHitung) == 0) hidden @endif>

            <body>
                <tr class="tr-head" style="page-break-after: avoid;">
                    <th class="th-item-selisih" rowspan="2" style="width: 0.5cm">No</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 1.5cm">Nama Item</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 0.75cm">Keputusan</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 0.75cm">SLS <br> LBR</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 0.75cm">Realita <br> LBR</th>
                    <th class="th-item-selisih" colspan="2" style="width: 1.75cm">Barang Selisih</th>
                    @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                        <th class="th-item-selisih" rowspan="2" style="width: 2cm">HPP</th>
                        <th class="th-item-selisih" colspan="2">Nominal</th>
                    @endif
                    <th class="th-item-selisih" rowspan="2" style="width: 2cm">Nominal <br>
                        Pembebanan</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 1cm">No. Adjust <br>
                        (GI/SJ & GR)</th>
                    <th class="th-item-selisih" rowspan="2" style="width: 1.75cm">Keterangan</th>
                </tr>
                <tr class="tr-head" style="page-break-after: avoid;">
                    <th class="th-item-selisih" style="width:0.5cm">Plus</th>
                    <th class="th-item-selisih" style="width:0.5cm">Minus</th>
                    @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                        <th class="th-item-selisih" style="width: 1.25cm">Selisih Plus</th>
                        <th class="th-item-selisih" style="width: 1.25cm">Selisih Minus</th>
                    @endif
                </tr>
                <tr>
                    <td @if (Auth::user()->level == 6 || Auth::user()->level == 12) colspan="10" @else colspan="13" @endif
                        class="tr-body-divider">
                        Item Tidak Hitung
                    </td>
                </tr>
                @foreach ($dataItemTidakHitung as $itemTidakHitung)
                    @php
                        $barangSelisihPlusTidakHitung = '';
                        $barangSelisihMinusTidakHitung = '';
                        $nominalSelisihPlusTidakHitung = '';
                        $nominalSelisihMinusTidakHitung = '';
                        $getHppTidakHitung = 0;

                        if ($itemTidakHitung->hpp_manual == 0) {
                            $getHppTidakHitung = $itemTidakHitung->hpp;
                        } else {
                            $getHppTidakHitung = $itemTidakHitung->hpp_manual;
                        }

                        $barangSelisihTidakHitung =
                            $itemTidakHitung->hasilcso -
                            ($itemTidakHitung->onhand -
                                $itemTidakHitung->koreksi -
                                $itemTidakHitung->deviasi);

                        $nominalSelisihTidakHitung =
                            $barangSelisihTidakHitung *
                            $getHppTidakHitung;

                        if ( $itemTidakHitung->hasilcso >
                            $itemTidakHitung->onhand -
                                $itemTidakHitung->koreksi -
                                $itemTidakHitung->deviasi ) 
                        {
                            $barangSelisihPlusTidakHitung = number_format(
                                $barangSelisihTidakHitung,
                                2,
                                ',',
                                '.',
                            );
                            $nominalSelisihPlusTidakHitung =
                                'Rp. ' . number_format($nominalSelisihTidakHitung, 2, ',', '.');
                            $totalBarangSelisihPlusTidakHitung += $barangSelisihTidakHitung;
                            $totalNominalSelisihPlusTidakHitung += $nominalSelisihTidakHitung;
                        } 
                        else {
                            $barangSelisihMinusTidakHitung = number_format(
                                $barangSelisihTidakHitung,
                                2,
                                ',',
                                '.',
                            );
                            $nominalSelisihMinusTidakHitung =
                                'Rp. ' . number_format($nominalSelisihTidakHitung, 2, ',', '.');
                            $totalBarangSelisihMinusTidakHitung += $barangSelisihTidakHitung;
                            $totalNominalSelisihMinusTidakHitung += $nominalSelisihTidakHitung;
                        }

                        $slsLbrTidakHitung =
                            $itemTidakHitung->onhand -
                            $itemTidakHitung->koreksi -
                            $itemTidakHitung->deviasi;
                        $realitaLbrTidakHitung = $itemTidakHitung->hasilcso;

                        $totalSlsLbrTidakHitung += $slsLbrTidakHitung;
                        $totalRealitaLbrTidakHitung += $realitaLbrTidakHitung;
                        $totalHppTidakHitung += $getHppTidakHitung;
                        $totalNominalPembebananTidakHitung += $itemTidakHitung->pembebanan;
                    @endphp
                    <tr class="tr-selisih">
                        <td class="td-content" style="text-align: center">{{ $loop->iteration }}</td>
                        <td class="td-content" style="padding-left: 5px">{{ $itemTidakHitung->itemname }}
                        </td>
                        <td class="td-content" style="text-align: center">
                            @if ($itemTidakHitung->keputusan != 0)
                                {{ $itemTidakHitung->keputusandesc }}
                            @else
                                -
                            @endif
                        </td>
                        <td class="td-content" style="text-align: center">
                            {{ number_format($slsLbrTidakHitung, 2, ',', '.') }}
                        </td>
                        <td class="td-content" style="text-align: center">
                            {{ number_format($realitaLbrTidakHitung, 2, ',', '.') }}
                        </td>
                        <td class="td-content" style="text-align: center">
                            {{ $barangSelisihPlusTidakHitung }}
                        </td>
                        <td style="text-align: center" class="td-selisih-minus">
                            {{ $barangSelisihMinusTidakHitung }}
                        </td>
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            <td class="td-content" style="text-align: center">Rp.
                                {{ number_format($getHppTidakHitung, 2, ',', '.') }}
                            </td>
                            <td class="td-content" style="text-align: center">
                                {{ $nominalSelisihPlusTidakHitung }}
                            </td>
                            <td style="text-align: center" class="td-selisih-minus">
                                {{ $nominalSelisihMinusTidakHitung }}
                            </td>
                        @endif
                        <td class="td-content" style="text-align: center; color: red">
                            @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                                Rp. {{ number_format($itemTidakHitung->pembebanan, 2, ',', '.') }}
                            @else
                            @endif
                        </td>
                        <td class="td-content" style="text-align: center">{{ $itemTidakHitung->nodoc }}</td>
                        <td class="td-content" style="text-align: center">{{ $itemTidakHitung->keterangan }}
                        </td>
                    </tr>
                @endforeach
                </tr>
                @if (count($dataItemTidakHitung) > 0)
                    <tr class="tr-body-calculator" style="font-size: 9pt">
                        <td class="td-content" colspan="3">Total</td>
                        <td class="td-content">{{ number_format($totalSlsLbrTidakHitung, 2, ',', '.') }}
                        </td>
                        <td class="td-content">
                            {{ number_format($totalRealitaLbrTidakHitung, 2, ',', '.') }}
                        </td>
                        <td class="td-content">
                            {{ number_format($totalBarangSelisihPlusTidakHitung, 2, ',', '.') }}</td>
                        <td class="td-content" style="color: red">
                            {{ number_format($totalBarangSelisihMinusTidakHitung, 2, ',', '.') }}</td>
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            <td class="td-content">Rp. {{ number_format($totalHppTidakHitung, 2, ',', '.') }}
                            </td>
                            <td class="td-content">Rp.
                                {{ number_format($totalNominalSelisihPlusTidakHitung, 2, ',', '.') }}</td>
                            <td class="td-content" style="color: red">Rp.
                                {{ number_format($totalNominalSelisihMinusTidakHitung, 2, ',', '.') }}</td>
                        @endif
                        <td class="td-content" style="color: red">Rp.
                            {{ number_format($totalNominalPembebananTidakHitung, 2, ',', '.') }}</td>
                        <td class="td-content" colspan="2" {{-- style="background-color: rgb(165, 165, 165)" --}}></td>
                    </tr>
                @endif
            </body>
        </table>
    </div>

    <div style="margin-top: 15px">
        <h4>
            V. History CSO 3 bulan terakhir
        </h4>
        <table>
            <thead>
                <tr class="tr-head">
                    <th class="th-history" style="width: 2.5cm">Bulan</th>
                    <th class="th-history" style="width: 3.5cm">Item</th>
                    <th class="th-history" style="width: 1.5cm">Jumlah Item <br> yang di CSO</th>
                    <th class="th-history" style="width: 1.5cm">Jumlah Item <br> sesuai</th>
                    <th class="th-history" style="width: 1cm">Persentase</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $totalItem3Bulan = 0;
                    $totalItemSesuai3Bulan = 0;
                @endphp
                @foreach ($data3BulanTerakhir as $data)
                    @php
                        $totalItem3Bulan += $data->item_ada;
                        $totalItemSesuai3Bulan += $data->item_ok;
                    @endphp
                    <tr class="tr-history">
                        <td class="td-content">
                            @switch($data->monthstart)
                                @case(1)
                                    Januari
                                @break

                                @case(2)
                                    Februari
                                @break

                                @case(3)
                                    Maret
                                @break

                                @case(4)
                                    April
                                @break

                                @case(5)
                                    Mei
                                @break

                                @case(6)
                                    Juni
                                @break

                                @case(7)
                                    Juli
                                @break

                                @case(8)
                                    Agustus
                                @break

                                @case(9)
                                    September
                                @break

                                @case(10)
                                    Oktober
                                @break

                                @case(11)
                                    November
                                @break

                                @case(12)
                                    Desember
                                @break
                            @endswitch
                        </td>
                        <td class="td-content">
                            {{ $data->csomaterial }}
                        </td>
                        <td class="td-content">{{ $data->item_ada }}</td>
                        <td class="td-content">{{ $data->item_ok }}</td>
                        <td class="td-content">{{ round(($data->item_ok / $data->item_ada) * 100, 2) }}%</td>
                    </tr>
                @endforeach
                @if (count($data3BulanTerakhir) > 0)
                    <tr class="tr-body-calculator" style="font-size: 12pt">
                        <td class="td-content" colspan="2">TOTAL</td>
                        <td class="td-content">{{ $totalItem3Bulan }}</td>
                        <td class="td-content">{{ $totalItemSesuai3Bulan }}</td>
                        <td class="td-content">{{ round(($totalItemSesuai3Bulan / $totalItem3Bulan) * 100, 2) }}%
                        </td>
                    </tr>
                @endif
            </tbody>
        </table>
    </div>
    <div style="margin-top: 1.5cm">
        <table>
            <thead>
                <tr>
                    @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                        <th class="th-persetujuan">Dibuat Oleh</th>
                        <th colspan="2" class="th-persetujuan">Diperiksa Oleh</th>
                        <th colspan="2" class="th-persetujuan">Disetujui Oleh</th>
                        <th class="th-persetujuan">Diketahui Oleh</th>
                    @else
                        <th class="th-persetujuan">Dibuat Oleh</th>
                        <th class="th-persetujuan"></th>
                        <th style="width: 2cm" class="th-persetujuan">Diperiksa Oleh</th>
                    @endif
                </tr>
            </thead>
            <tbody>
                @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                    <tr>
                        <td style="height: 1.5cm"></td>
                        <td style="height: 1.5cm"></td>
                        <td style="height: 1.5cm; text-align: center"></td>
                        <td style="height: 1.5cm; text-align: center"></td>
                        <td style="height: 1.5cm; text-align: center"></td>
                        <td style="height: 1.5cm; text-align: center"></td>
                    </tr>
                    <tr>
                        <td class="td-persetujuan">Staff Stock Control</td>
                        <td class="td-persetujuan">Ka Fac</td>
                        <td class="td-persetujuan">Ka Purch</td>
                        <td class="td-persetujuan">Ka Ops</td>
                        <td class="td-persetujuan">Reg. Man.</td>
                        <td class="td-persetujuan">BOD</td>
                    </tr>
                @else
                    <tr>
                        <td style="line-height: 2cm"></td>
                        <td style="height: 2cm"></td>
                        <td style="height: 2cm"></td>
                    </tr>
                    <tr>
                        <td class="td-persetujuan">Staff Stock Control</td>
                        <td class="td-persetujuan">PIC Warehouse</td>
                        <td class="td-persetujuan">Ka Warehouse</td>
                    </tr>
                @endif


            </tbody>
        </table>
    </div>

</body>

</html>
