@extends('layouts.master')

@section('title', 'Preview Cek Stok')
@section('styles')

    <style>
        .title-info {
            padding-top: 25px;
        }

        th {
            text-align: center;
            font-size: 9.5pt;
            border: 1px solid;
            padding-left: 2px;
            padding-right: 2px;
            line-height: 1.75;
            vertical-align: middle;
        }

        .th-content {
            border-color: rgb(65, 65, 65);
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

        .tr-body-calculator {
            background-color: #e1e1e1;
            font-weight: bold;
            padding-left: 2cm;
            text-align: center;
            border-color: rgb(192, 192, 192);
        }

        .tr-body-kerugian-total {
            background-color: #007efc90;
            font-weight: bold;
            padding-left: 2cm;
            text-align: center;
            border-color: rgb(192, 192, 192);
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
    </style>

@endsection

@section('content')

    <div class="content-wrapper mt-3">
        <!-- Main content -->
        <section class="content-header">
            <div class="container-fluid">
                <form action="{{ route('cek-stok.update','type')}}" method="POST" class="needs-validation" novalidate>
                    @csrf
                    @method('PUT')
                        <div class="card card-secondary">
                            <div class="card-header bg-secondary text-white">
                                <div class="row justify-content-between">
                                    <div class="col-md-8">
                                        <h3 class="card-title">{{ $title }}</h3>
                                    </div>
                                    @if ($dataCso->statusdoc == 'P')
                                        <div class="col-md-4 text-end">
                                        
                                            <div class="d-flex flex-row-reverse">
                                                <div class='ml-2'>
                                                    <input type="text" name="trsidresume"
                                                            value="{{ $trsidresume }}" hidden>
                                                    <input type="text" name="typecekstok" 
                                                            value="{{$typecekstok}}" hidden>
                                                    <button class="btn btn-success text-white" type="submit">
                                                        <i class="bi bi-floppy pe-2"></i>Save
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                </div>
                            </div>
                            <div class="card-body" style="background-color: #f8f8f8; max-height: 1330px; overflow: auto;">
                                <h2 style="text-align: center">
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
                                    <p>Lokasi/kelompok produk yang di {{ substr($dataCso->doccsoid, 0, 3) }} :
                                        {{ $dataCso->csomaterial }} </p>
                                </div>

                                <div style="margin-top: 0.5cm">
                                    <h4 style="text-align: center; color:red">
                                        <strong>Item tertukar yang terhitung item selisih ubah salah 1</strong>
                                    </h4>
                                </div>

                                <div style="margin-top: 0.5cm">
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
                                    <h4>
                                        II. LIST ITEM BARANG YANG SELISIH
                                    </h4>

                                    <table style=" border-collapse: collapse;width: 100%;">
                                        <tbody>
                                            <tr class="tr-head">
                                                <th class="th-content" rowspan="2" style="width: 0.5cm">No</th>
                                                <th class="th-content" rowspan="2" style="width: 3cm">Nama Item</th>
                                                <th class="th-content" rowspan="2" style="width: 1cm">Keputusan</th>
                                                <th class="th-content" rowspan="2" style="width: 1cm">SLS <br> LBR</th>
                                                <th class="th-content" rowspan="2" style="width: 1cm">Realita <br> LBR</th>
                                                <th class="th-content" colspan="2" style="width: 1.75cm">Barang Selisih</th>
                                                @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                                                    <th class="th-content" rowspan="2" style="width: 3cm">HPP</th>
                                                    <th class="th-content" rowspan="2" style="width: 2.55cm">Adjust HPP</th>
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
                                                    <tr class="tr-selisih">
                                                        <td hidden><input type="text" name="trsdetidKesalahanAdmin[]"
                                                            value="{{ $itemKesalahanAdmin->trsdetid }}"></td>
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
                                                            <td class="td-content text-center" style="text-align: center">
                                                                <input type="number" class="form-control form-control-sm"  step="0.01" 
                                                                name="hppKesalahanAdmin[]" value="{{ $getHppKesalahanAdmin}}" >
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
                                        
                                            <tr class="tr-head">
                                                <th class="th-content" rowspan="2" style="width: 0.5cm">No</th>
                                                <th class="th-content" rowspan="2" style="width: 3cm">Nama Item</th>
                                                <th class="th-content" rowspan="2" style="width: 1cm">Keputusan</th>
                                                <th class="th-content" rowspan="2" style="width: 1cm">SLS <br> LBR</th>
                                                <th class="th-content" rowspan="2" style="width: 1cm">Realita <br> LBR</th>
                                                <th class="th-content" colspan="2" style="width: 1.75cm">Barang Selisih</th>
                                                @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                                                    <th class="th-content" rowspan="2" style="width: 3cm">HPP</th>
                                                    <th class="th-content" rowspan="2" style="width: 2.55cm">Adjust HPP</th>
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
                                                            
                                                            $nominalSelisihTertukar =
                                                                $barangSelisihTertukar *
                                                                $getHppTertukar;
                                                        }
                                                        else {
                                                            
                                                            $barangSelisihTertukar = $groupValue;
                                                            $nominalSelisihTertukar = $groupValue * $getHppTertukar;
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
                                                    @endphp
                                                    <tr class="tr-selisih">
                                                        <td hidden><input type="text" name="trsdetidTertukar[]"
                                                            value="{{ $itemTertukar->trsdetid }}"></td>
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
                                                            <td class="td-content" style="text-align: center">
                                                                Rp.
                                                                {{ number_format($getHppTertukar, 2, ',', '.') }}
                                                            </td>
                                                            <td class="td-content text-center" style="text-align: center">
                                                                <input type="number" class="form-control form-control-sm"  step="0.01" 
                                                                name="hppTertukar[]" value="{{ $getHppTertukar}}" >
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
                                           
                                            <tr class="tr-head">
                                                <th class="th-content" rowspan="2" style="width: 0.5cm">No</th>
                                                <th class="th-content" rowspan="2" style="width: 3cm">Nama Item</th>
                                                <th class="th-content" rowspan="2" style="width: 1cm">Keputusan</th>
                                                <th class="th-content" rowspan="2" style="width: 1cm">SLS <br> LBR</th>
                                                <th class="th-content" rowspan="2" style="width: 1cm">Realita <br> LBR</th>
                                                <th class="th-content" colspan="2" style="width: 1.75cm">Barang Selisih</th>
                                                @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                                                    <th class="th-content" rowspan="2" style="width: 3cm">HPP</th>
                                                    <th class="th-content" rowspan="2" style="width: 2.55cm">Adjust HPP</th>
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
                                            </tr>
                                            <tr>
                                                <td @if (Auth::user()->level == 6 || Auth::user()->level == 12) colspan="9" @else colspan="13" @endif
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
                                                    <tr class="tr-selisih">
                                                        <td hidden><input type="text" name="trsdetidSelisih[]"
                                                            value="{{ $itemSelisih->trsdetid }}"></td>
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
                                                            <td class="td-content text-center" style="text-align: center">
                                                                <input type="number" class="form-control form-control-sm"  step="0.01" 
                                                                name="hppSelisih[]" value="{{ $getHppSelisih}}" >
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
                                    <table class="mt-5" style=" border-collapse: collapse;width: 100%;" @if(count($dataItemTidakHitung)==0) hidden @endif>
                                        <body>
                                            <tr class="tr-head mt-2">
                                                <th class="th-content" rowspan="2" style="width: 0.5cm">No</th>
                                                <th class="th-content" rowspan="2" style="width: 3cm">Nama Item</th>
                                                <th class="th-content" rowspan="2" style="width: 1cm">Keputusan</th>
                                                <th class="th-content" rowspan="2" style="width: 1cm">SLS <br> LBR</th>
                                                <th class="th-content" rowspan="2" style="width: 1cm">Realita <br> LBR</th>
                                                <th class="th-content" colspan="2" style="width: 1.75cm">Barang Selisih</th>
                                                @if (Auth::user()->level != 5 && Auth::user()->level != 6)
                                                    <th class="th-content" rowspan="2" style="width: 3cm">HPP</th>
                                                    <th class="th-content" rowspan="2" style="width: 2.55cm">Adjust HPP</th>
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
                                            </tr>
                                            <tr>
                                                <td @if (Auth::user()->level == 6 || Auth::user()->level == 12) colspan="10" @else colspan="13" @endif
                                                    class="tr-body-divider">
                                                    Item Tidak Hitung
                                                </td>
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
                                                <td hidden><input type="text" name="trsdetidTidakHitung[]"
                                                    value="{{ $itemTidakHitung->trsdetid }}"></td>
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
                                                    <td class="td-content text-center" style="text-align: center">
                                                        <input type="number" class="form-control form-control-sm"  step="0.01" 
                                                        name="hppTidakHitung[]" value="{{ $getHppTidakHitung}}" >
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
                                            
                                        </body>
                                    </table>
                                </div>
                            </div>
                        </div>
                </form>
            </div>
        </section>
    </div>
@endsection
