<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Resume Item</title>
    <style>
        /* @page {
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
            font-size: 9pt;
        }

        .th-pic-cso {
            font-size: 9pt;
            border-color: black;
            
        }

        .th-rekapitulasi-global {
            font-size: 6pt;
            border-color: black;

        }

        .th-history {
            font-size: 9pt;
            border-color: black;
            
        }

        .th-item-selisih {
            font-size: 6pt;
            border-color: black;
            
        }

        .tr-head {
            
            color: black;
            font-size: 8pt;
            border-color: black;
            
        }
        
        tr{

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
            font-size: 9.5pt;
            font-weight: bold;
            width: 12.5%
        }

        .td-content {
            border-color: black;
    
        }

        .td-selisih-minus {
            color: red;
            border-color: black;
            
        }

        .td-non-itemname {
            text-align: center;
        }

        .tr-body:nth-child(odd) {
            font-size: 10pt;
            
        }

        .tr-body:nth-child(even) {
            font-size: 10pt;
            
        }

        .tr-body-calculator {
            
            font-weight: bold;
            padding-left: 2cm;
            text-align: center;
            border-color: black;
        }

        .tr-body-kerugian-total {
            
            font-weight: bold;
            padding-left: 2cm;
            text-align: center;
            border-color: rgb(192, 192, 192);
        }

        .tr-body-divider {
            
            font-weight: bold;
            padding-left: 2cm;
            font-size: 9pt;
            border-color: black;
    
        }

        .tr-selisih {
            font-size: 8pt;
            line-height: 0.5cm
        }

        .tr-rekapitulasi-global {
            text-align: center;
            align-items: center;
            font-size: 8pt;
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
        } */

        /* .td-selisih-minus {
            color: red;
            border-color: black;
            
        }

        td {
            text-align: center;
            vertical-align: middle;
        }

        th {
            color: red;
        } */

        .test {
            font-size: 17pt;
            font-weight: bold;
            color: red;
        }
        
    </style>
</head>

<body>
    <table>
        <thead>
            <tr style="border: solid">
                <th style='font-size: 17pt;font-weight: bold; border-top:solid;'> LAPORAN HASIL PELAKSANAAN {{ substr($dataCso->doccsoid, 0, 3) }}</th>
            </tr>
            <tr>
                <th></th>
            </tr>
            <tr>
                <th style='font-size: 15pt;font-weight: bold;vertical-align: middle'>
                    I. PELAKSANAAN {{ substr($dataCso->doccsoid, 0, 3) }}</th>
            </tr>
            <tr>
                <th></th>
            </tr>
            <tr>
                <th style='font-weight:bold'>Nama perusahaan : {{ $dataCoy }}</th>
            </tr>
            <tr>
                <th style='font-weight:bold'>Tanggal pelaksanaan {{ substr($dataCso->doccsoid, 0, 3) }} : {{ \Carbon\Carbon::parse($dataCso->startcsodate)->translatedFormat('j F Y') }}</th>
            </tr>
            <tr>
                <th style='font-weight:bold'>Lokasi/kelompok produk yang di {{ substr($dataCso->doccsoid, 0, 3) }} : {{ $dataCso->csomaterial }}</th>
            </tr>
            <tr>
                <th></th>
            </tr>
            <tr>
                <th style='font-size: 15pt;font-weight: bold;vertical-align: middle'>II. SUSUNAN TIM @if (substr($dataCso->doccsoid, 0, 3) == 'CSO')
                    CEK STOK OPNAME
                @else
                    CEK STOK SAMPLING
                @endif</th>
            </tr>
            <tr>
                <th style='font-size: 12pt;font-weight: bold;text-align:center;vertical-align: middle'>PIC {{ substr($dataCso->doccsoid, 0, 3) }}: </th>
            </tr>
        </thead>
    </table>
       
    <table>
        <thead>
            <tr>
                <th colspan='4' style='font-size: 12pt;font-weight: bold;text-align:center;vertical-align: middle'>Analistor</th>
            </tr>
            <tr>
                <th style='font-weight: bold;'>No</th>
                <th style='font-weight: bold;'>Nama Analisator</th>
                <th style='font-weight: bold;'>Departemen</th>
                <th style='font-weight: bold;'>Catatan tentang Analisator</th>
            </tr>
        </thead>
        <tbody>
            @if (count($dataAnalisator) > 0)
                @foreach ($dataAnalisator as $analisator)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $analisator->name }}</td>
                        <td>{{ $analisator->departemen }}
                        </td>
                        <td>{{ $analisator->note }}</td>
                    </tr>
                @endforeach
            @else
                <tr>
                    <th></th>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            @endif

        </tbody>
    </table>
        
    <table>
        <thead>
            <tr>
                <th colspan='4' style='font-size: 12pt;font-weight: bold;text-align:center;vertical-align: middle'>Pencatat</th>
            </tr>
            <tr>
                <th style='font-weight: bold;'>No</th>
                <th style='font-weight: bold;'>Nama Pencatat</th>
                <th style='font-weight: bold;'>Departemen</th>
                <th style='font-weight: bold;'>Lokasi</th>
                <th style='font-weight: bold;'>Catatan tentang Pencatat</th>
            </tr>
        </thead>
        <tbody>
            @if (count($dataPelaku) > 0)
                @foreach ($dataPelaku as $pelaku)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $pelaku->name }}</td>
                        <td>{{ $pelaku->departemen }}</td>
                        <td>{{ $pelaku->locationname }}</td>
                        <td>{{ $pelaku->note }}</td>
                    </tr>
                @endforeach
            @else
                <tr>
                    <th></th>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            @endif
        </tbody>
    </table>
 
    <table>
        <thead>
            <tr>
                <th style='font-size: 15pt;font-weight: bold;vertical-align: middle'>III. REKAPITULASI HASIL {{ substr($dataCso->doccsoid, 0, 3) }} GLOBAL</th>
            </tr>
            <tr>
                <th></th>
            </tr>
            <tr>
                @if (substr($dataCso->doccsoid, 0, 3) == 'CSS')
                    <th rowspan="2" style='font-weight: bold;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Tanggal Import
                    </th>
                @endif
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Total Item </th>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Area / Kelompok
                    produk
                </th>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Item yang sudah dicek
                    stok ada </th>
                <th colspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'>Hasil
                    {{ substr($dataCso->doccsoid, 0, 3) }}</th>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>% Keakuratan Stok</th>
                <th colspan="4" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>% Item Selisih</th>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>% Selisih</th>
            </tr>
            <tr class="tr-head">
                <th style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'> Item OK </th>
                <th style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'> Item Selisih </th>
                <th style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'> (+)</th>
                <th style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'> (-)</th>
                <th style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'> Beda Batch</th>
                <th style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'> Tertukar</th>
            </tr>
        </thead>
        <tbody>
            @php
                $totalItemOk = 0;
                $itemTidakHitung =0;
                $totalItemSelisih = 0;
                $totalItemAda = 0;
            @endphp
            @foreach ($dataRekapitulasi as $dataPerhitungan)
            @php
                $faktorAdminSelisih += $dataPerhitungan->kesalahan_admin_selisih;
                $itemAda += $dataPerhitungan->item_ada;
                $totalItemAda += $dataPerhitungan->item_ada;
                $item_ok = $dataPerhitungan->item_ok+$dataPerhitungan->tidak_hitung+$dataPerhitungan->kesalahan_admin_selisih ;
                $totalItemOk += $item_ok;
                $totalItemSelisih += $dataPerhitungan->item_selisih;
                $itemTidakHitung +=$dataPerhitungan->tidak_hitung;
            @endphp
            <tr style="text-align: center">
                @if (substr($dataCso->doccsoid, 0, 3) == 'CSS')
                    <td style='text-align:center;vertical-align: middle'>
                        {{ \Carbon\Carbon::parse($dataPerhitungan->tanggal_import)->Format('d-m-Y') }}
                    </td>
                @endif
                <td style='text-align:center;vertical-align: middle'>{{ $dataPerhitungan->total_item }}</td>
                @if ($loop->iteration == 1)
                    <td style='text-align:center;vertical-align: middle;' rowspan="{{ count($dataRekapitulasi) }}">
                        {{ $dataCso->csomaterial }}</td>
                @endif

                <td @if (substr($dataCso->doccsoid, 0, 3) == 'CSO')  @endif style='text-align:center;vertical-align: middle'>
                    {{ $dataPerhitungan->item_ada }}</td>
                <td style='text-align:center;vertical-align: middle'>{{ $item_ok}}</td>
                <td style='text-align:center;vertical-align: middle'>{{ $dataPerhitungan->item_selisih }}</td>
                <td style='text-align:center;vertical-align: middle'>
                    {{ round(($item_ok / $dataPerhitungan->total_item) * 100, 2) }}%
                </td>
                <td style='text-align:center;vertical-align: middle'>{{ $dataPerhitungan->item_selisih_plus }}</td>
                <td style='text-align:center;vertical-align: middle'>{{ $dataPerhitungan->item_selisih_minus }}</td>
                <td style='text-align:center;vertical-align: middle'>{{ $dataPerhitungan->beda_batch }}</td>
                <td style='text-align:center;vertical-align: middle'>{{ $dataPerhitungan->tertukar }}</td>
                <td style='text-align:center;vertical-align: middle'>
                    {{ round(($dataPerhitungan->item_selisih / $dataPerhitungan->total_item) * 100, 2) }}%
                </td>
            </tr>
        @endforeach
            <tr>
                <td
                    @if (substr($dataCso->doccsoid, 0, 3) == 'CSS') colspan="3"
                @else
                colspan="2" @endif
                    style="font-weight: bold; text-align:center;vertical-align: middle">Selisih
                    Karena Admin</td>
                @if (substr($dataCso->doccsoid, 0, 3) == 'CSS')
                    <td style='text-align:center;vertical-align: middle'>
                        {{ $totalItemOk }}</td>
                @else
                    <td style='text-align:center;vertical-align: middle'>
                        {{ $totalItemOk }}</td>
                @endif
                <td style='text-align:center;vertical-align: middle'>{{ $totalItemOk - $faktorAdminSelisih }}</td>
                <td style='text-align:center;vertical-align: middle'>{{ $faktorAdminSelisih }}</td>
                <td style='text-align:center;vertical-align: middle'>
                    @if ($totalItemOk!=0)
                    {{ round((($totalItemOk - $faktorAdminSelisih) / $totalItemOk) * 100, 2) }}%
                    @else
                    0
                    @endif
                </td>
                <td colspan="4"
                    ></td>
                <td style='text-align:center;vertical-align: middle'>
                    @if ($totalItemOk!=0)
                    {{ round(($faktorAdminSelisih / $totalItemOk) * 100, 2) }}%
                    @else
                    0
                    @endif
                </td>
            </tr>
            @if (substr($dataCso->doccsoid, 0, 3) == 'CSS')
            <tr style="background-color: #007efc90; font-weight: bolder;">
                <td style='text-align:center;vertical-align: middle;font-weight: bold;background-color: #007efc90;' colspan="3">TOTAL</td>
                <td style='text-align:center;vertical-align: middle;font-weight: bold;background-color: #007efc90;'>{{ $totalItemAda  }}</td>
                <td style='text-align:center;vertical-align: middle;font-weight: bold;background-color: #007efc90;'>{{ $totalItemOk }}</td>
                <td style='text-align:center;vertical-align: middle;font-weight: bold;background-color: #007efc90;'>{{ $totalItemSelisih }}</td>
                <td style='text-align:center;vertical-align: middle;font-weight: bold;background-color: #007efc90;'>
                    @if ($totalItemOk!=0)
                    {{ round(($totalItemOk / $totalItemAda) * 100, 2) }}%
                    @else
                    0
                    @endif
                </td>
                <td style='background-color: rgb(165, 165, 165)' colspan="4"
                    ></td>
                <td style='text-align:center;vertical-align: middle;font-weight: bold;background-color: #007efc90;'>
                    @if ($totalItemOk!=0)
                    {{ round(($totalItemSelisih / $totalItemAda) * 100, 2) }}%
                    @else
                    0
                    @endif
                </td>
            </tr>
            @endif
        </tbody>
    </table>

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

        $totalSlsLbrSelisih = 0;
        $totalRealitaLbrSelisih = 0;
        $totalBarangSelisihPlusSelisih = 0;
        $totalBarangSelisihMinusSelisih = 0;
        $totalHppSelisih = 0;
        $totalNominalSelisihPlusSelisih = 0;
        $totalNominalSelisihMinusSelisih = 0;
        $totalNominalPembebananSelisih = 0;
    @endphp
    <table>
        <thead><tr><th></th></tr></thead>
        <tbody>
            <tr><td></td></tr>
            <tr><td style='font-size: 15pt;font-weight: bold;vertical-align: middle'>
                IV. LIST ITEM BARANG YANG SELISIH</td></tr>
            <tr><td></td></tr>
            <tr>
                <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>No</td>
                <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Nama Item</td>
                <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Keputusan</td>
                <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>SLS LBR</td>
                <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Realita LBR</td>
                <td colspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Barang Selisih</td>
                @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                    <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'>HPP</th>
                    <th colspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'>Nominal</th>
                @endif
                <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3' >Nominal
                    Pembebanan</td>
                <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>No. Adjust
                    (GI/SJ &amp; GR)</td>
                <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3' >Keterangan</td>
            </tr>
            <tr>
                <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'>Plus</td>
                <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'>Minus</td>
                @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Selisih Plus</td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Selisih Minus</td>
                @endif
            </tr>
            <tr>
                <td style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#FBA518' 
                @if (Auth::user()->level == 6 || Auth::user()->level == 12) colspan="10" @else colspan="13" @endif>
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

                    $slsLbrKesalahanAdmin = $itemKesalahanAdmin->onhand;
                    $realitaLbrKesalahanAdmin = 
                        $itemKesalahanAdmin->hasilcso +
                        $itemKesalahanAdmin->koreksi +
                        $itemKesalahanAdmin->deviasi;

                    $totalSlsLbrKesalahanAdmin += $slsLbrKesalahanAdmin;
                    $totalRealitaLbrKesalahanAdmin += $realitaLbrKesalahanAdmin;
                    $totalHppKesalahanAdmin += $getHppKesalahanAdmin;
                    $totalNominalPembebananKesalahanAdmin +=
                        $itemKesalahanAdmin->pembebanan;
                @endphp
                <tr>
                    <td style="text-align: center;vertical-align: middle">{{ $loop->iteration }}</td>
                    <td style="text-align: center;vertical-align: middle;word-wrap: break-word;">
                        {{ $itemKesalahanAdmin->itemname }}</td>
                    <td style="text-align: center;vertical-align: middle">
                        @if ($itemKesalahanAdmin->keputusan != 0)
                            {{ $itemKesalahanAdmin->keputusandesc }}
                        @else
                            -
                        @endif
                    </td>
                    <td style="text-align: center;vertical-align: middle">
                        {{ number_format($slsLbrKesalahanAdmin, 2, ',', '.') }}
                    </td>
                    <td style="text-align: center;vertical-align: middle">
                        {{ number_format($realitaLbrKesalahanAdmin, 2, ',', '.') }}
                    </td>
                    <td style="text-align: center;vertical-align: middle">
                        {{ $barangSelisihPlusKesalahanAdmin }}
                    </td>
                    <td style="text-align: center;vertical-align: middle;color: red" >
                        {{ $barangSelisihMinusKesalahanAdmin }}
                    </td>
                    @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                        <td style="text-align: center;vertical-align: middle;" >Rp.
                            {{ number_format($getHppKesalahanAdmin, 2, ',', '.') }}
                        </td>
                        <td style="text-align: center;vertical-align: middle">
                            {{ $nominalSelisihPlusKesalahanAdmin }}
                        </td>
                        <td style="text-align: center;color: red;vertical-align: middle">
                            {{ $nominalSelisihMinusKesalahanAdmin }}
                        </td>
                    @endif
                    <td style="text-align: center; color: red;vertical-align: middle">
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            Rp. {{ number_format($itemKesalahanAdmin->pembebanan, 2, ',', '.') }}
                        @else
                        @endif
                    </td>
                    <td style="text-align: center;vertical-align: middle">
                        {{ $itemKesalahanAdmin->nodoc }}</td>
                    <td style="text-align: center;vertical-align: middle;word-wrap: break-word;">
                        {{ $itemKesalahanAdmin->keterangan }}</td>
                </tr>
            @endforeach
            @if (count($dataItemKesalahanAdmin) > 0)
                <tr style="font-size: 10pt">
                    <td colspan="3" style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>Total</td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>
                        {{ number_format($totalSlsLbrKesalahanAdmin, 2, ',', '.') }}</td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>
                        {{ number_format($totalRealitaLbrKesalahanAdmin, 2, ',', '.') }}
                    </td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>
                        {{ number_format($totalBarangSelisihPlusKesalahanAdmin, 2, ',', '.') }}
                    </td>
                    <td style="color: red;font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD">
                        {{ number_format($totalBarangSelisihMinusKesalahanAdmin, 2, ',', '.') }}
                    </td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>Rp.
                        {{ number_format($totalHppKesalahanAdmin, 2, ',', '.') }}
                    </td>
                        <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>Rp.
                        {{ number_format($totalNominalSelisihPlusKesalahanAdmin, 2, ',', '.') }}
                    </td>
                        <td style="color: red;font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD">Rp.
                            {{ number_format($totalNominalSelisihMinusKesalahanAdmin, 2, ',', '.') }}
                    </td>
                    <td style="color: red;font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD">Rp.
                        {{ number_format($totalNominalPembebananKesalahanAdmin, 2, ',', '.') }}
                    </td>
                    <td colspan="2"></td>
                </tr>
            @endif
            <tr><td></td></tr>
            <tr>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>No</th>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Nama Item</th>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Keputusan</th>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>SLS LBR</th>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Realita LBR</th>
                <th colspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Barang Selisih</th>
                @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                    <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'>HPP</th>
                    <th colspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'>Nominal</th>
                @endif
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Nominal
                    Pembebanan</th>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>No. Adjust
                    (GI/SJ &amp; GR)</th>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Keterangan</th>
            </tr>
            <tr>
                <th style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'>Plus</th>
                <th style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'>Minus</th>
                @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                    <th style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Selisih Plus</th>
                    <th style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Selisih Minus</th>
                @endif
            </tr>
            <tr>
                <td style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#FBA518' 
                @if (Auth::user()->level == 6 || Auth::user()->level == 12) colspan="10" @else colspan="13" @endif>
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
                        $nominalSelisihTertukar =
                            $barangSelisihTertukar *
                            $getHppTertukar;
                    }
                    else {
                        
                        $barangSelisihTertukar = $groupValue;
                        $nominalSelisihTertukar = $groupValue *
                            $getHppTertukar;
                            
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
                <tr>
                    <td style="text-align: center;vertical-align: middle">{{ $loop->iteration }}</td>
                    <td style="text-align: center;vertical-align: middle;word-wrap: break-word;">{{ $itemTertukar->itemname }}
                    </td>
                    <td  style="text-align: center;vertical-align: middle">
                        @if ($itemTertukar->keputusan != 0)
                            {{ $itemTertukar->keputusandesc }}
                        @else
                            -
                        @endif
                    </td>
                    <td style="text-align: center;vertical-align: middle">
                        {{ number_format($slsLbrTertukar, 2, ',', '.') }}
                    </td>
                    <td style="text-align: center;vertical-align: middle">
                        {{ number_format($realitaLbrTertukar, 2, ',', '.') }}
                    </td>
                    <td style="text-align: center;vertical-align: middle">
                        {{ $barangSelisihPlusTertukar }}
                    </td>
                    <td style="text-align: center;vertical-align: middle;color: red">
                        {{ $barangSelisihMinusTertukar }}
                    </td>
                    @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                        <td style="text-align: center;vertical-align: middle">Rp.
                            {{ number_format($getHppTertukar, 2, ',', '.') }}
                        </td>
                        <td style="text-align: center;vertical-align: middle">
                            {{ $nominalSelisihPlusTertukar }}
                        </td>
                        <td style="text-align: center;color: red;vertical-align: middle">
                            {{ $nominalSelisihMinusTertukar }}
                        </td>
                    @endif
                    <td style="text-align: center; color: red">
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            @if ($groupValuePembebanan)
                                Rp. {{ number_format($itemTertukar->pembebanan, 2, ',', '.') }}
                            @else Rp. 0,00
                            @endif
                        @else
                        @endif
                    </td>
                    <td style="text-align: center;vertical-align: middle">{{ $itemTertukar->nodoc }}</td>
                    <td style="text-align: center;vertical-align: middle;word-wrap: break-word;">
                        {{ $itemTertukar->keterangan }}
                    </td>
                </tr>
            @endforeach
            @if (count($dataItemTertukar) > 0)
                <tr style="font-size: 10pt">
                    <td colspan="3" style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>Total</td>
                    <td  style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>{{ number_format($totalSlsLbrTertukar, 2, ',', '.') }}
                    </td>
                    <td  style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>
                        {{ number_format($totalRealitaLbrTertukar, 2, ',', '.') }}
                    </td>
                    <td  style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>
                        {{ number_format($totalBarangSelisihPlusTertukar, 2, ',', '.') }}</td>
                    <td style="color: red;font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD">
                        {{ number_format($totalBarangSelisihMinusTertukar, 2, ',', '.') }}</td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>Rp. {{ number_format($totalHppTertukar, 2, ',', '.') }}
                    </td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>Rp.
                        {{ number_format($totalNominalSelisihPlusTertukar, 2, ',', '.') }}</td>
                    <td style="color: red;font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD">Rp.
                        {{ number_format($totalNominalSelisihMinusTertukar, 2, ',', '.') }}</td>
                    <td style="color: red;font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD">Rp.
                        {{ number_format($totalNominalPembebananTertukar, 2, ',', '.') }}</td>
                    <td colspan="2"></td>
                </tr>
            @endif
            <tr><td></td></tr>
            <tr>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>No</th>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Nama Item</th>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Keputusan</th>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>SLS LBR</th>
                <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Realita LBR</th>
                <th colspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Barang Selisih</th>
                @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                    <th rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'>HPP</th>
                    <th colspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'>Nominal</th>
                @endif
                <th rowspan="2"  style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Nominal
                    Pembebanan</th>
                <th rowspan="2"  style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>No. Adjust
                    (GI/SJ &amp; GR)</th>
                <th rowspan="2"  style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Keterangan</th>
            </tr>
            <tr>
                <th style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'>Plus</th>
                <th style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#C7B7A3'>Minus</th>
                @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                    <th style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Selisih Plus</th>
                    <th style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Selisih Minus</th>
                @endif
            </tr>
            <tr>
                <td style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#FBA518' 
                @if (Auth::user()->level == 6 || Auth::user()->level == 12) colspan="10" @else colspan="13" @endif>
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

                                $nominalSelisih = $barangSelisih * $getHppSelisih;
                            }
                            else {
                                $barangSelisih =
                                    ($itemSelisih->hasilcso -
                                    ($itemSelisih->onhand -
                                    $itemSelisih->koreksi -
                                    $itemSelisih->deviasi))-
                                    $itemSelisih->group_value;
                                    
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
                        $realitaLbrSelisih = 
                            $itemSelisih->hasilcso + 
                            $itemSelisih->koreksi + 
                            $itemSelisih->deviasi;

                        $totalSlsLbrSelisih += $slsLbrSelisih;
                        $totalRealitaLbrSelisih += $realitaLbrSelisih;
                        $totalHppSelisih += $getHppSelisih;
                        $totalNominalPembebananSelisih += $itemSelisih->pembebanan;
                    @endphp
                    <tr >
                        <td style="text-align: center;vertical-align: middle">{{ $loop->iteration }}</td>
                        <td style="text-align: center;vertical-align: middle;word-wrap: break-word;">{{ $itemSelisih->itemname }}
                        </td>
                        <td style="text-align: center;vertical-align: middle">
                            @if ($itemSelisih->keputusan != 0)
                                {{ $itemSelisih->keputusandesc }}
                            @else
                                -
                            @endif
                        </td>
                        <td style="text-align: center;vertical-align: middle">
                            {{ number_format($slsLbrSelisih, 2, ',', '.') }}
                        </td>
                        <td style="text-align: center;vertical-align: middle">
                            {{ number_format($realitaLbrSelisih, 2, ',', '.') }}
                        </td>
                        <td style="text-align: center;vertical-align: middle">
                            {{ $barangSelisihPlusSelisih }}
                        </td>
                        <td style="text-align: center;vertical-align: middle;color: red">
                            {{ $barangSelisihMinusSelisih }}
                        </td>
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            <td style="text-align: center;vertical-align: middle">Rp.
                                {{ number_format($getHppSelisih, 2, ',', '.') }}
                            </td>
                            <td style="text-align: center;vertical-align: middle">
                                {{ $nominalSelisihPlusSelisih }}
                            </td>
                            <td style="text-align: center;color: red;vertical-align: middle">
                                {{ $nominalSelisihMinusSelisih }}
                            </td>
                        @endif
                            <td  style="text-align: center; color: red;vertical-align: middle"> 
                                @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                                    Rp.{{ number_format($itemSelisih->pembebanan, 2, ',', '.') }}
                                @else
                                @endif
                        </td>
                        <td style="text-align: center;vertical-align: middle">{{ $itemSelisih->nodoc }}
                        </td>
                        <td style="text-align: center;vertical-align: middle;word-wrap: break-word;">
                            {{ $itemSelisih->keterangan }}</td>
                    </tr>
                @endif
            @endforeach
            @if (count($dataItemSelisih) > 0)
                <tr style="font-size: 10pt">
                    <td colspan="3" style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>Total</td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>{{ number_format($totalSlsLbrSelisih, 2, ',', '.') }}
                    </td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>
                        {{ number_format($totalRealitaLbrSelisih, 2, ',', '.') }}
                    </td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>
                        {{ number_format($totalBarangSelisihPlusSelisih, 2, ',', '.') }}</td>
                    <td style="color: red;font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD">
                        {{ number_format($totalBarangSelisihMinusSelisih, 2, ',', '.') }}</td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>Rp.
                        {{ number_format($totalHppSelisih, 2, ',', '.') }}
                    </td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>Rp.
                        {{ number_format($totalNominalSelisihPlusSelisih, 2, ',', '.') }}</td>
                    <td style="color: red;font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD">Rp.
                        {{ number_format($totalNominalSelisihMinusSelisih, 2, ',', '.') }}</td>
                    <td style='color: red;font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>Rp.
                        {{ number_format($totalNominalPembebananSelisih, 2, ',', '.') }}</td>
                    <td colspan="2"></td>
                </tr>
            @endif
            <tr style="font-size: 10pt">
                <td colspan="8" style='font-weight: bold;text-align:center;vertical-align: middle;font-size:11pt;background-color:#D7D3BF'>TOTAL KERUGIAN</td>
                @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;font-size:11pt;background-color:#D7D3BF'>Rp.
                        {{ number_format($totalNominalSelisihPlusKesalahanAdmin + $totalNominalSelisihPlusTertukar + $totalNominalSelisihPlusSelisih, 2, ',', '.') }}
                    </td>
                    <td style="color: red;font-weight: bold;text-align:center;vertical-align: middle;font-size:11pt;background-color:#D7D3BF">Rp.
                        {{ number_format($totalNominalSelisihMinusKesalahanAdmin + $totalNominalSelisihMinusTertukar + $totalNominalSelisihMinusSelisih, 2, ',', '.') }}
                    </td>
                @endif
                <td style="color: red;font-weight: bold;text-align:center;vertical-align: middle;font-size:11pt;background-color:#D7D3BF">Rp.
                    {{ number_format($totalNominalPembebananKesalahanAdmin + $totalNominalPembebananTertukar + $totalNominalPembebananSelisih, 2, ',', '.') }}
                </td>
                <td colspan="2"></td>
            </tr>
        </tbody>
    </table>

    
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
    <table @if(count($dataItemTidakHitung)==0) hidden @endif>
            <thead><tr><th></th></tr></thead>
            <tbody>
                <tr>
                    <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>No</td>
                    <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Nama Item</td>
                    <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Keputusan</td>
                    <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>SLS LBR</td>
                    <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Realita LBR</td>
                    <td colspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Barang Selisih</td>
                    @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                        <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>HPP</td>
                        <td colspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Nominal</td>
                    @endif
                    <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Nominal Pembebanan</td>
                    <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>No. Adjust (GI/SJ &amp; GR)</td>
                    <td rowspan="2" style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Keterangan</td>
                </tr>
                <tr>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Plus</td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Minus</td>
                    @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                        <td style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Selisih Plus</td>
                        <td style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#C7B7A3'>Selisih Minus</td>
                    @endif
                </tr>
                <tr>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;background-color:#FBA518'
                    @if (Auth::user()->level == 6 || Auth::user()->level == 12) colspan="10" @else colspan="13" @endif>
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
                    <tr >
                        <td style="text-align: center;vertical-align: middle">{{ $loop->iteration }}</td>
                        <td style="text-align: center;vertical-align: middle;word-wrap: break-word;">{{ $itemTidakHitung->itemname }}
                        </td>
                        <td style="text-align: center;vertical-align: middle">
                            @if ($itemTidakHitung->keputusan != 0)
                                {{ $itemTidakHitung->keputusandesc }}
                            @else
                                -
                            @endif
                        </td>
                        <td style="text-align: center;vertical-align: middle">
                            {{ number_format($slsLbrTidakHitung, 2, ',', '.') }}
                        </td>
                        <td style="text-align: center;vertical-align: middle">
                            {{ number_format($realitaLbrTidakHitung, 2, ',', '.') }}
                        </td>
                        <td style="text-align: center;vertical-align: middle">
                            {{ $barangSelisihPlusTidakHitung }}
                        </td>
                        <td style="text-align: center;vertical-align: middle;color: red">
                            {{ $barangSelisihMinusTidakHitung }}
                        </td>
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            <td style="text-align: center;vertical-align: middle;">Rp.
                                {{ number_format($getHppTidakHitung, 2, ',', '.') }}
                            </td>
                            <td style="text-align: center;vertical-align: middle;">
                                {{ $nominalSelisihPlusTidakHitung }}
                            </td>
                            <td style="text-align: center;color: red;vertical-align: middle">
                                {{ $nominalSelisihMinusTidakHitung }}
                            </td>
                        @endif
                        <td style="text-align: center; color: red;vertical-align: middle">  
                            @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                                Rp. {{ number_format($itemTidakHitung->pembebanan, 2, ',', '.') }}
                            @else
                            @endif
                        </td>
                        <td style="text-align: center;vertical-align: middle">{{ $itemTidakHitung->nodoc }}</td>
                        <td style="text-align: center;vertical-align: middle;word-wrap: break-word;">{{ $itemTidakHitung->keterangan }}
                        </td>
                    </tr>
                @endforeach
                @if (count($dataItemTidakHitung) > 0)
                    <tr style="font-size: 10pt">
                        <td colspan="3" style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>Total</td>
                        <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>{{ number_format($totalSlsLbrTidakHitung, 2, ',', '.') }}
                        </td>
                        <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>
                            {{ number_format($totalRealitaLbrTidakHitung, 2, ',', '.') }}
                        </td>
                        <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>
                            {{ number_format($totalBarangSelisihPlusTidakHitung, 2, ',', '.') }}</td>
                        <td style="color: red;font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD">
                            {{ number_format($totalBarangSelisihMinusTidakHitung, 2, ',', '.') }}</td>
                        @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                            <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>Rp. {{ number_format($totalHppTidakHitung, 2, ',', '.') }}
                            </td>
                            <td style='font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD'>Rp.
                                {{ number_format($totalNominalSelisihPlusTidakHitung, 2, ',', '.') }}</td>
                            <td style="color: red;font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD">Rp.
                                {{ number_format($totalNominalSelisihMinusTidakHitung, 2, ',', '.') }}</td>
                        @endif
                        <td style="color: red;font-weight: bold;text-align:center;vertical-align: middle;background-color:#D9EAFD">Rp.
                            {{ number_format($totalNominalPembebananTidakHitung, 2, ',', '.') }}</td>
                        <td colspan="2"></td>
                    </tr>
                @endif
            </tbody>
    </table>

    <table>
        <thead>
            <tr><th></th></tr>
            <tr><th style='font-size: 15pt;font-weight: bold;vertical-align: middle'>V. History CSO 3 bulan terakhir</th></tr>
            <tr><th></th></tr>

            <tr >
                <th style='font-weight: bold;vertical-align: middle;word-wrap: break-word;'>Bulan</th>
                <th style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;'>Item</th>
                <th style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;'>Jumlah Item yang di CSO</th>
                <th style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;'>Jumlah Item sesuai</th>
                <th style='font-weight: bold;text-align:center;vertical-align: middle;word-wrap: break-word;'>Persentase</th>
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
                <tr style='text-align:center;vertical-align: middle'>
                    <td>
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
                    <td style='text-align:center;vertical-align: middle'>
                        {{ $data->csomaterial }}
                    </td>
                    <td style='text-align:center;vertical-align: middle'>{{ $data->item_ada }}</td>
                    <td style='text-align:center;vertical-align: middle'>{{ $data->item_ok }}</td>
                    <td style='text-align:center;vertical-align: middle'>{{ round(($data->item_ok / $data->item_ada) * 100, 2) }}%</td>
                </tr>
            @endforeach
            @if (count($data3BulanTerakhir) > 0)
                <tr style="font-size: 10pt">
                    <td colspan="2"  style='font-weight: bold;text-align:center;vertical-align: middle;font-size:11pt;background-color:#D7D3BF'>TOTAL</td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;font-size:11pt;background-color:#D7D3BF'>{{ $totalItem3Bulan }}</td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;font-size:11pt;background-color:#D7D3BF'>{{ $totalItemSesuai3Bulan }}</td>
                    <td style='font-weight: bold;text-align:center;vertical-align: middle;font-size:11pt;background-color:#D7D3BF'>{{ round(($totalItemSesuai3Bulan / $totalItem3Bulan) * 100, 2) }}%
                    </td>
                </tr>
            @endif
        </tbody>
    </table>

    {{-- <table>
        <thead>
            <tr><th></th></tr>
            <tr><th></th></tr>
            <tr><th></th></tr>
            <tr><th></th></tr>

            <tr  >
                @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                    <th>Dibuat Oleh</th>
                    <th  colspan="2">Diperiksa Oleh</th>
                    <th colspan="2">Disetujui Oleh</th>
                    <th>Diketahui Oleh</th>
                @else
                    <th>Dibuat Oleh</th>
                    <th></th>
                    <th >Diperiksa Oleh</th>
                @endif
            </tr>
        </thead>
        <tbody>
            @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                <tr>
                    <td rowspan="3" ></td>
                    <td rowspan="3" ></td>
                    <td rowspan="3" style="text-align: center"></td>
                    <td rowspan="3" style="text-align: center"></td>
                    <td rowspan="3" style="text-align: center"></td>
                    <td rowspan="3" style="text-align: center"></td>
                </tr>
                <tr>
                    <td ></td>
                    <td ></td>
                    <td ></td>
                    <td ></td>
                    <td ></td>
                    <td ></td>
                </tr>
                <tr>
                    <td ></td>
                    <td ></td>
                    <td ></td>
                    <td ></td>
                    <td ></td>
                    <td ></td>
                </tr>
                <tr>
                    <td >Staff Stock Control</td>
                    <td >Ka Fac</td>
                    <td >Ka Purch</td>
                    <td >Ka Ops</td>
                    <td >Reg. Man.</td>
                    <td >BOD</td>
                </tr>
            @else
                <tr>
                    <td rowspan="3"></td>
                    <td rowspan="3"></td>
                    <td rowspan="3"></td>
                </tr>
                <tr>
                    <td>Staff Stock Control</td>
                    <td>PIC Warehouse</td>
                    <td>Ka Warehouse</td>
                </tr>
            @endif
        </tbody>
    </table> --}}

</body>

</html>
