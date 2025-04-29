@extends('layouts.master')

@section('title', 'Resume CSO Item')

@section('content')
    <form action="{{ route('susunan-tim-cso.store') }}" class="mb-3" method="POST">
        @csrf
        {{-- @method('PUT') --}}
        <input type="text" name="typecekstok" value="{{ $typecekstok }}" hidden>
        <input type="text" name="trsid" value="{{ $trsid }}" hidden>
        <div class="content-wrapper">
            <!-- Main content -->
            <div class="container-fluid mt-3">
                <div class="d-flex justify-content-between mb-3">
                    <div class="px-3">
                        <h5>Resume {{$typecekstok}} Item</h5>
                    </div>
                    <div class="d-flex">
                        <div class="px-3" 
                            @if(!empty($checkCsoActive)) 
                                @if ($checkCsoActive->statusdoc<>'E') 
                                    hidden 
                                @endif 
                            @else 
                            hidden 
                            @endif>
                            <button type="submit" name="draft" value="1" class="btn btn-primary float-end">
                                <i class="fas fa-save pe-2"></i>Save As Draft
                            </button>
                        </div>
                        <div class="px-3" 
                            @if(!empty($checkCsoActive)) 
                                @if ($checkCsoActive->statusdoc<>'E') 
                                    hidden 
                                @endif 
                            @else 
                            hidden 
                            @endif>
                            <button type="button" class="btn btn-danger float-end" id="submitCSO">
                                Submit
                            </button>
                        </div>
                    </div>

                @php
                    $checkDeptAnalisatorCount = 0;
                    $checkDeptPelakuCount = 0;
                    $countAnalisator = count($analisator);
                    $countPelaku = count($pelaku);
                @endphp
                </div>
                {{-- <form action="{{ route('susunan-tim-cso.update', 'susunan_tim_cso') }}" class="mb-3" method="POST">
                    @csrf
                    @method('PUT') --}}
                {{-- <input type="text" name="type" value="1" hidden> --}}
                <div class="card card-secondary mb-3">
                    <div class="card-header bg-secondary text-white">
                        <h3 class="card-title">Analisator {{$typecekstok}}</h3>
                    </div>
                    <div class="card-body">
                        <table class="table table-striped table-hover mb-3">
                            <thead>
                                <tr>
                                    <th hidden></th>
                                    <th scope="col">No</th>
                                    <th>Nama Analisator</th>
                                    <th>Departemen</th>
                                    <th>Catatan tentang Analisator</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($analisator as $analisator)
                                    <td hidden><input type="text" name="jobidAnalisator[]"
                                            value="{{ $analisator->jobid }}"></td>
                                            <td>{{ $loop->iteration }}</td>
                                    <td>{{ $analisator->name }}</td>

                                    <td><select name="deptAnalisator[]" id="" class="deptAnalisator">
                                        @if ($analisator->dept == null || $analisator->dept == '')
                                            <option value="" selected>
                                                Pilih Departemen
                                            </option>
                                        @endif
                                        @foreach ($departemen as $dept)
                                            <option value="{{ $dept->deptid }}"
                                                @if ($analisator->dept != null || $analisator->dept != '') 
                                                    @if ($analisator->dept == $dept->deptid)
                                                        selected
                                                        @php
                                                            $checkDeptAnalisatorCount += 1;
                                                        @endphp
                                                    @endif
                                                @endif
                                                >{{ $dept->departemen }}</option>
                                        @endforeach
                                    </select></td>
                                    
                                    <td><input type="text" value="{{ $analisator->note }}" name="ketAnalisator[]"
                                            class="form-control"></td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        {{-- <button type="submit" name="simpan-analisator" class="btn btn-primary"><i
                                    class="fas fa-save pe-2"></i>save</button> --}}
                    </div>
                </div>
                {{-- </form>

                <form action="{{ route('susunan-tim-cso.update', 'susunan_tim_cso') }}" method="POST">
                    @csrf
                    @method('PUT') --}}
                {{-- <input type="text" name="type" value="2" hidden> --}}
                <div class="card card-secondary mb-3">
                    <div class="card-header bg-secondary text-white ">
                        <h3 class="card-title ">Pencatat {{$typecekstok}}</h3>
                    </div>
                    <div class="card-body">
                        <table class="table table-striped table-hover mb-3">
                            <thead>
                                <tr>
                                    <th hidden></th>
                                    <th scope="col">No</th>
                                    <th>Nama Pencatat</th>
                                    <th>Departemen</th>
                                    <th>Catatan tentang Pencatat</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($pelaku as $pelaku)
                                    <tr>
                                        <td hidden><input type="text" name="jobidPelaku[]" value="{{ $pelaku->jobid }}">
                                        </td>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $pelaku->name }}</td>
                                        <td><select name="deptPelaku[]" id="" class='deptPelaku'>
                                                @if ($pelaku->dept == null || $pelaku->dept == '')
                                                    <option value="" selected>
                                                        Pilih Departemen
                                                    </option>
                                                @endif
                                                @foreach ($departemen as $dept)
                                                    <option value="{{ $dept->deptid }}"
                                                        @if ($pelaku->dept != null || $pelaku->dept != '') 
                                                            @if ($pelaku->dept == $dept->deptid)
                                                                selected
                                                                @php
                                                                    $checkDeptPelakuCount += 1;
                                                                @endphp
                                                            @endif
                                                        @endif
                                                        >{{ $dept->departemen }}</option>
                                                @endforeach
                                            </select></td>
                                        <td><input type="text" value="{{ $pelaku->note }}" name="ketPelaku[]"
                                                class="form-control"></td>
                                    </tr>
                                @endforeach

                            </tbody>
                        </table>
                        {{-- <button type="submit" name="simpan-pelaku" class="btn btn-primary"><i
                                    class="fas fa-save pe-2"></i>save</button> --}}
                    </div>
                </div>
                {{-- </form> --}}
                <div class="card card-secondary mb-3">
                    <div class="card-header bg-secondary text-white">
                        <h3 class="card-title">Item tertukar</h3>
                    </div>
                    {{-- <form action="{{ route('barang-selisih.update', 'barang_selisih') }}" method="POST">
                        @csrf
                        @method('PUT') --}}
                    {{-- <input type="text" name="type" value="1" hidden> --}}
                    <div class="card-body small">
                        <div style="overflow-x: scroll; overflow-y: hidden; max-width: 82vw; ">
                            <table class="table table-striped table-hover text-center" style="min-width:150%;">
                                <thead>
                                    <tr>
                                        <th class="d-none"></th>
                                        <th style="width: 2%">No</th>
                                        <th style="width: 10%">Nama Item</th>
                                        <th style="width: 5%">Keputusan</th>
                                        <th style="width: 2%">SLS LBR</th>
                                        <th style="width: 3%">Realita LBR</th>
                                        <th style="width: 5%">Selisih<br>Plus (qty)</th>
                                        <th style="width: 6%">Selisih<br>Minus (qty)</th>
                                        <th style="width: 3%">Grade</th>
                                        <th style="width: 9%">HPP</th>
                                        <th style="width: 9%">HPP Manual</th>
                                        <th style="width: 9%">Selisih Plus<br>(nominal)</th>
                                        <th style="width: 9%">Selisih Minus<br>(nominal)</th>
                                        <th style="width: 9%">Pembebanan<br>(nominal)</th>
                                        <th style="width: 5%">Group</th>
                                        <th style="width: 6%">No Adjust<br>(GI/SJ & GR)</th>
                                        <th>Keterangan</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($tertukar as  $tertukar)
                                        <tr>
                                            <td hidden><input type="text" name="trsdetidTertukar[]"
                                                    value="{{ $tertukar->trsdetid }}"></td>
                                            <td class="align-middle text-center">{{ $loop->iteration }}</td>
                                            <td class="align-middle text-center">{{ $tertukar->itemname }}</td>
                                            <td class="align-middle text-center"><select class="form-select form-select-sm" name="keputusanTertukar[]">
                                                    @if ($tertukar->keputusan != null)
                                                        <option value="{{ $tertukar->keputusan }}" selected>
                                                            @foreach ($keputusan as $kep)
                                                                @if ($kep->keputusanid == $tertukar->keputusan)
                                                                    {{ $kep->keputusandesc }}
                                                                @endif
                                                            @endforeach
                                                        </option>
                                                        @foreach ($keputusan as $kep)
                                                            <option value="{{ $kep->keputusanid }}">
                                                                {{ $kep->keputusandesc }}</option>
                                                        @endforeach
                                                    @else
                                                        <option selected value="">Pilih Keputusan</option>
                                                        @foreach ($keputusan as $kep)
                                                            <option value="{{ $kep->keputusanid }}">
                                                                {{ $kep->keputusandesc }}</option>
                                                        @endforeach
                                                    @endif
                                                </select> </td>
                                            <td class="align-middle text-center">{{ $tertukar->onhand }}</td>
                                            <td class="align-middle text-center">{{ $tertukar->totalcso }}</td>
                                            <td class="align-middle text-center">{{ number_format($tertukar->selisihplus, 2, ',', '.') }}</td>
                                            <td class="align-middle text-center">{{ number_format($tertukar->selisihmin, 2, ',', '.') }}</td>
                                            <td class="align-middle text-center">
                                                @if($tertukar->grade !='' && $tertukar->grade != NULL)
                                                    {{ $tertukar->grade }}    
                                                @else
                                                    -
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">Rp. {{ number_format($tertukar->cogs, 2, ',', '.') }}</td>
                                            <td class="align-middle text-center">
                                                @if ($tertukar->cogs_manual != null)
                                                    <input type="number" class="form-control form-control-sm"  step="0.01"
                                                        name="hppTertukar[]" value="{{ $tertukar->cogs_manual }}" >
                                                @else
                                                    <input type="number" class="form-control form-control-sm"  step="0.01"
                                                        name="hppTertukar[]">
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($tertukar->cogs_manual != 0)
                                                    Rp.{{ number_format(($tertukar->cogs_manual * $tertukar->selisihplus), 2, '.', ',') }}
                                                @else
                                                    Rp.{{ number_format($tertukar->nominalplus, 2, '.', ',') }}
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($tertukar->cogs_manual != 0)
                                                    Rp.{{ number_format(($tertukar->cogs_manual * $tertukar->selisihmin), 2, '.', ',') }}
                                                @else
                                                    Rp.{{ number_format($tertukar->nominalmin, 2, '.', ',') }}
                                                @endif
                                            </td>
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($tertukar->pembebanan != null)
                                                    <input type="number" class="form-control form-control-sm" step="0.01"
                                                        name="pembebananTertukar[]" value="{{ $tertukar->pembebanan }}">
                                                @else
                                                    <input type="number" class="form-control form-control-sm" step="0.01"
                                                        name="pembebananTertukar[]">
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">{{ $tertukar->groupid }}</td>
                                            <td class="align-middle text-center">
                                                @if ($tertukar->nodoc != null)
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="nodokTertukar[]" value="{{ $tertukar->nodoc }}">
                                                @else
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="nodokTertukar[]">
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($tertukar->keterangan != null)
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="keteranganTertukar[]" value="{{ $tertukar->keterangan }}">
                                                @else
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="keteranganTertukar[]">
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        {{-- <button type="submit" name="simpan-itm-tertukar" class="btn btn-primary mt-3"><i
                                    class="fas fa-save pe-2"></i>save</button> --}}
                    </div>
                    {{-- </form> --}}
                </div>

                <div class="card card-secondary">
                    <div class="card-header bg-secondary text-white">
                        <h3 class="card-title">Item Selisih Plus & Selisih Minus</h3>
                    </div>
                    {{-- <form action="{{ route('barang-selisih.update', 'barang_selisih') }}" method="POST">
                        @csrf
                        @method('PUT') --}}
                    {{-- <input type="text" name="type" value="2" hidden> --}}
                    <div class="card-body small">
                        <div style="overflow-x: scroll; overflow-y: hidden; max-width: 82vw; ">
                            <table class="table table-striped table-hover text-center" style="min-width:150%;">
                                <thead>
                                    <tr>
                                        <th class="d-none"></th>
                                        <th style="width: 2%">No</th>
                                        <th style="width: 10%">Nama Item</th>
                                        <th style="width: 5%">Keputusan</th>
                                        <th style="width: 2%">SLS LBR</th>
                                        <th style="width: 3%">Realita LBR</th>
                                        <th style="width: 5%">Selisih<br>Plus (qty)</th>
                                        <th style="width: 6%">Selisih<br>Minus (qty)</th>
                                        <th style="width: 3%">Grade</th>
                                        <th style="width: 9%">HPP</th>
                                        <th style="width: 9%">HPP Manual</th>
                                        <th style="width: 9%">Selisih Plus<br>(nominal)</th>
                                        <th style="width: 9%">Selisih Minus<br>(nominal)</th>
                                        <th style="width: 9%">Pembebanan<br>(nominal)</th>
                                        <th style="width: 5%">Group</th>
                                        <th style="width: 6%">No Adjust<br>(GI/SJ & GR)</th>
                                        <th>Keterangan</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($selisih as  $selisih)
                                        <tr>
                                            <td hidden><input type="text" name="trsdetidSelisih[]"
                                                    value="{{ $selisih->trsdetid }}"></td>
                                            <td class="align-middle text-center">{{ $loop->iteration }}</td>
                                            <td class="align-middle text-center">{{ $selisih->itemname }}</td>
                                            <td class="align-middle text-center"><select class="form-select form-select-sm" name="keputusanSelisih[]">
                                                    @if ($selisih->keputusan != null)
                                                        <option value="{{ $selisih->keputusan }}" selected>
                                                            @foreach ($keputusan as $kep)
                                                                @if ($kep->keputusanid == $selisih->keputusan)
                                                                    {{ $kep->keputusandesc }}
                                                                @endif
                                                            @endforeach
                                                        </option>
                                                        @foreach ($keputusan as $kep)
                                                            <option value="{{ $kep->keputusanid }}">
                                                                {{ $kep->keputusandesc }}</option>
                                                        @endforeach
                                                    @else
                                                        <option selected value="">Pilih Keputusan</option>
                                                        @foreach ($keputusan as $kep)
                                                            <option value="{{ $kep->keputusanid }}">
                                                                {{ $kep->keputusandesc }}</option>
                                                        @endforeach
                                                    @endif
                                                </select> </td>
                                            <td class="align-middle text-center">{{ $selisih->onhand }}</td>
                                            <td class="align-middle text-center">{{ $selisih->totalcso }}</td>
                                            <td class="align-middle text-center">{{ number_format($selisih->selisihplus, 2, '.', ',') }}</td>
                                            <td class="align-middle text-center">{{ number_format($selisih->selisihmin, 2, '.', ',') }}</td>
                                            <td class="align-middle text-center">
                                                @if($selisih->grade !='' && $selisih->grade != NULL)
                                                    {{ $selisih->grade }}    
                                                @else
                                                    -
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($selisih->cogs != 0)
                                                    Rp.{{ number_format($selisih->cogs, 2, '.', ',') }}
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($selisih->cogs_manual != null)
                                                    <input type="number" class="form-control form-control-sm" step="0.01"
                                                        name="hppSelisih[]" value="{{ $selisih->cogs_manual }}">
                                                @else
                                                    <input type="number" class="form-control form-control-sm" step="0.01"
                                                        name="hppSelisih[]">
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($selisih->cogs_manual != 0)
                                                    Rp.{{ number_format(($selisih->cogs_manual * $selisih->selisihplus), 2, '.', ',') }}
                                                @else
                                                    Rp.{{ number_format($selisih->nominalplus, 2, '.', ',') }}
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($selisih->cogs_manual != 0)
                                                    Rp.{{ number_format(($selisih->cogs_manual * $selisih->selisihmin), 2, '.', ',') }}
                                                @else
                                                    Rp.{{ number_format($selisih->nominalmin, 2, '.', ',') }}
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($selisih->pembebanan != null)
                                                    <input type="number" class="form-control form-control-sm" step="0.01"
                                                        name="pembebananSelisih[]" value="{{ $selisih->pembebanan }}">
                                                @else
                                                    <input type="number" class="form-control form-control-sm" step="0.01"
                                                        name="pembebananSelisih[]">
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">{{ $selisih->groupid }}</td>
                                            <td class="align-middle text-center">
                                                @if ($selisih->nodoc != null)
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="nodokSelisih[]" value="{{ $selisih->nodoc }}">
                                                @else
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="nodokSelisih[]">
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($selisih->keterangan != null)
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="keteranganSelisih[]" value="{{ $selisih->keterangan }}">
                                                @else
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="keteranganSelisih[]">
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        {{-- <button type="submit" name="simpan-itm-selisih" class="btn btn-primary mt-3"><i
                                    class="fas fa-save pe-2"></i>save</button> --}}
                    </div>
                    {{-- </form> --}}
                </div>

                <div class="card card-secondary mt-3">
                    <div class="card-header bg-secondary text-white">
                        <h3 class="card-title">Kesalahan Admin</h3>
                    </div>
                    {{-- <form action="{{ route('barang-selisih.update', 'barang_selisih') }}" method="POST">
                        @csrf
                        @method('PUT') --}}
                    {{-- <input type="text" name="type" value="3" hidden> --}}
                    <div class="card-body small">
                        <div style="overflow-x: scroll; overflow-y: hidden; max-width: 82vw; ">
                            <table class="table table-striped table-hover text-center" style="min-width:150%;">
                                <thead>
                                    <tr>
                                        <th class="d-none"></th>
                                        <th style="width: 2%">No</th>
                                        <th style="width: 10%">Nama Item</th>
                                        <th style="width: 5%">Keputusan</th>
                                        <th style="width: 2%">SLS LBR</th>
                                        <th style="width: 3%">Realita LBR</th>
                                        <th style="width: 5%">Selisih<br>Plus (qty)</th>
                                        <th style="width: 6%">Selisih<br>Minus (qty)</th>
                                        <th style="width: 3%">Grade</th>
                                        <th style="width: 9%">HPP</th>
                                        <th style="width: 9%">HPP Manual</th>
                                        <th style="width: 9%">Selisih Plus<br>(nominal)</th>
                                        <th style="width: 9%">Selisih Minus<br>(nominal)</th>
                                        <th style="width: 9%">Pembebanan<br>(nominal)</th>
                                        <th style="width: 5%">Group</th>
                                        <th style="width: 6%">No Adjust<br>(GI/SJ & GR)</th>
                                        <th>Keterangan</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($kesalahan_admin as  $admin)
                                        <tr>
                                            <td hidden><input type="text" name="trsdetidKesalahanAdmin[]"
                                                    value="{{ $admin->trsdetid }}"></td>
                                            <td class="align-middle text-center">{{ $loop->iteration }}</th>
                                            <td class="align-middle text-center">{{ $admin->itemname }}</td>
                                            <td class="align-middle text-center"><select class="form-select form-select-sm"
                                                    name="keputusanKesalahanAdmin[]">
                                                    @if ($admin->keputusan != null)
                                                        <option value="{{ $admin->keputusan }}" selected>
                                                            @foreach ($keputusan as $kep)
                                                                @if ($kep->keputusanid == $admin->keputusan)
                                                                    {{ $kep->keputusandesc }}
                                                                @endif
                                                            @endforeach
                                                        </option>
                                                        @foreach ($keputusan as $kep)
                                                            <option value="{{ $kep->keputusanid }}">
                                                                {{ $kep->keputusandesc }}</option>
                                                        @endforeach
                                                    @else
                                                        <option selected value="">Pilih Keputusan</option>
                                                        @foreach ($keputusan as $kep)
                                                            <option value="{{ $kep->keputusanid }}">
                                                                {{ $kep->keputusandesc }}</option>
                                                        @endforeach
                                                    @endif
                                                </select> </td>
                                            <td class="align-middle text-center">{{ $admin->onhand }}</td>
                                            <td class="align-middle text-center">{{ $admin->totalcso }}</td>
                                            <td class="align-middle text-center">{{ number_format($admin->selisihplus, 2, '.', ',') }}</td>
                                            <td class="align-middle text-center">{{ number_format($admin->selisihmin, 2, '.', ',') }}</td>
                                            <td class="align-middle text-center">
                                                @if($admin->grade !='' && $admin->grade != NULL)
                                                    {{ $admin->grade }}    
                                                @else
                                                    -
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($admin->cogs != 0)
                                                    Rp.{{ number_format($admin->cogs, 2, '.', ',') }}
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($admin->cogs_manual != null)
                                                    <input type="number" class="form-control form-control-sm" step="0.01"
                                                        name="hppKesalahanAdmin[]" value="{{ $admin->cogs_manual }}">
                                                @else
                                                    <input type="number" class="form-control form-control-sm" step="0.01"
                                                        name="hppKesalahanAdmin[]">
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($admin->cogs_manual != 0)
                                                    Rp.{{ number_format(($admin->cogs_manual * $admin->selisihplus), 2, '.', ',') }}
                                                @else
                                                    Rp.{{ number_format($admin->nominalplus, 2, '.', ',') }}
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($admin->cogs_manual != 0)
                                                    Rp.{{ number_format(($admin->cogs_manual * $admin->selisihmin), 2, '.', ',') }}
                                                @else
                                                    Rp.{{ number_format($admin->nominalmin, 2, '.', ',') }}
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($admin->pembebanan != null)
                                                    <input type="number" class="form-control form-control-sm" step="0.01"
                                                        name="pembebananKesalahanAdmin[]"
                                                        value="{{ $admin->pembebanan }}">
                                                @else
                                                    <input type="number" class="form-control form-control-sm" step="0.01"
                                                        name="pembebananKesalahanAdmin[]">
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">{{ $admin->groupid }}</td>
                                            <td class="align-middle text-center">
                                                @if ($admin->nodoc != null)
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="nodokKesalahanAdmin[]" value="{{ $admin->nodoc }}">
                                                @else
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="nodokKesalahanAdmin[]">
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($admin->keterangan != null)
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="keteranganKesalahanAdmin[]"
                                                        value="{{ $admin->keterangan }}">
                                                @else
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="keteranganKesalahanAdmin[]">
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        {{-- <button type="submit" name="simpan-itm-selisih" class="btn btn-primary mt-3"><i
                                    class="fas fa-save pe-2"></i>save</button> --}}
                    </div>
                    {{-- </form> --}}
                </div>


                <div class="card card-secondary mt-3" @if (count($tidak_hitung)==0) hidden @endif>
                    <div class="card-header bg-secondary text-white">
                        <h3 class="card-title">Item Tidak di Hitung</h3>
                    </div>
                    {{-- <form action="{{ route('barang-selisih.update', 'barang_selisih') }}" method="POST">
                        @csrf
                        @method('PUT') --}}
                    {{-- <input type="text" name="type" value="3" hidden> --}}
                    <div class="card-body small">
                        <div style="overflow-x: scroll; overflow-y: hidden; max-width: 82vw; ">
                            <table class="table table-striped table-hover text-center" style="min-width:150%;">
                                <thead>
                                    <tr>
                                        <th class="d-none"></th>
                                        <th style="width: 2%">No</th>
                                        <th style="width: 10%">Nama Item</th>
                                        <th style="width: 5%">Keputusan</th>
                                        <th style="width: 2%">SLS LBR</th>
                                        <th style="width: 3%">Realita LBR</th>
                                        <th style="width: 5%">Selisih<br>Plus (qty)</th>
                                        <th style="width: 6%">Selisih<br>Minus (qty)</th>
                                        <th style="width: 3%">Grade</th>
                                        <th style="width: 9%">HPP</th>
                                        <th style="width: 9%">HPP Manual</th>
                                        <th style="width: 9%">Selisih Plus<br>(nominal)</th>
                                        <th style="width: 9%">Selisih Minus<br>(nominal)</th>
                                        <th style="width: 9%">Pembebanan<br>(nominal)</th>
                                        <th style="width: 5%">Group</th>
                                        <th style="width: 6%">No Adjust<br>(GI/SJ & GR)</th>
                                        <th>Keterangan</th>
    
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($tidak_hitung as  $tidak_hitung)
                                        <tr>
                                            <td hidden><input type="text" name="trsdetidTidakHitung[]"
                                                    value="{{ $tidak_hitung->trsdetid }}"></td>
                                            <td class="align-middle text-center">{{ $loop->iteration }}</th>
                                            <td class="align-middle text-center">{{ $tidak_hitung->itemname }}</td>
                                            <td class="align-middle text-center"><select class="form-select form-select-sm"
                                                    name="keputusanTidakHitung[]">
                                                    @if ($tidak_hitung->keputusan != null)
                                                        <option value="{{ $tidak_hitung->keputusan }}" selected>
                                                            @foreach ($keputusan as $kep)
                                                                @if ($kep->keputusanid == $tidak_hitung->keputusan)
                                                                    {{ $kep->keputusandesc }}
                                                                @endif
                                                            @endforeach
                                                        </option>
                                                        @foreach ($keputusan as $kep)
                                                            <option value="{{ $kep->keputusanid }}">
                                                                {{ $kep->keputusandesc }}</option>
                                                        @endforeach
                                                    @else
                                                        <option selected value="">Pilih Keputusan</option>
                                                        @foreach ($keputusan as $kep)
                                                            <option value="{{ $kep->keputusanid }}">
                                                                {{ $kep->keputusandesc }}</option>
                                                        @endforeach
                                                    @endif
                                                </select> </td>
                                            <td class="align-middle text-center">{{ $tidak_hitung->onhand }}</td>
                                            <td class="align-middle text-center">{{ $tidak_hitung->totalcso }}</td>
                                            <td class="align-middle text-center">{{ number_format($tidak_hitung->selisihplus, 2, '.', ',') }}</td>
                                            <td class="align-middle text-center">{{ number_format($tidak_hitung->selisihmin, 2, '.', ',') }}</td>
                                            <td class="align-middle text-center">
                                                @if($tidak_hitung->grade !='' && $tidak_hitung->grade != NULL)
                                                    {{ $tidak_hitung->grade }}    
                                                @else
                                                    -
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($tidak_hitung->cogs != 0)
                                                    Rp.{{ number_format($tidak_hitung->cogs, 2, '.', ',') }}
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($tidak_hitung->cogs_manual != null)
                                                    <input type="number" class="form-control form-control-sm" step="0.01"
                                                        name="hppTidakHitung[]" value="{{ $tidak_hitung->cogs_manual }}">
                                                @else
                                                    <input type="number" class="form-control form-control-sm" step="0.01"
                                                        name="hppTidakHitung[]">
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($tidak_hitung->cogs_manual != 0)
                                                    Rp.{{ number_format(($tidak_hitung->cogs_manual * $tidak_hitung->selisihplus), 2, '.', ',') }}
                                                @else
                                                    Rp.{{ number_format($tidak_hitung->nominalplus, 2, '.', ',') }}
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($tidak_hitung->cogs_manual != 0)
                                                    Rp.{{ number_format(($tidak_hitung->cogs_manual * $tidak_hitung->selisihmin), 2, '.', ',') }}
                                                @else
                                                    Rp.{{ number_format($tidak_hitung->nominalmin, 2, '.', ',') }}
                                                @endif
                                            </td>                                           
                                            <td class="align-middle text-center">
                                                @if ($tidak_hitung->pembebanan != null)
                                                    <input type="number" class="form-control form-control-sm" step="0.01"
                                                        name="pembebananTidakHitung[]"
                                                        value="{{ $tidak_hitung->pembebanan }}">
                                                @else
                                                    <input type="number" class="form-control form-control-sm" step="0.01"
                                                        name="pembebananTidakHitung[]">
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">{{ $tidak_hitung->groupid }}</td>
                                            <td class="align-middle text-center">
                                                @if ($tidak_hitung->nodoc != null)
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="nodokTidakHitung[]" value="{{ $tidak_hitung->nodoc }}">
                                                @else
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="nodokTidakHitung[]">
                                                @endif
                                            </td>
                                            <td class="align-middle text-center">
                                                @if ($tidak_hitung->keterangan != null)
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="keteranganTidakHitung[]"
                                                        value="{{ $tidak_hitung->keterangan }}">
                                                @else
                                                    <input type="text" class="form-control form-control-sm"
                                                        name="keteranganTidakHitung[]">
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        {{-- <button type="submit" name="simpan-itm-selisih" class="btn btn-primary mt-3"><i
                                    class="fas fa-save pe-2"></i>save</button> --}}
                    </div>
                    {{-- </form> --}}
                </div>

            </div>

            


            <div class="modal fade text-left" id="ModalCSO" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="modalHeader">Submit Resume Item</h1>
                        </div>
                        <div class="modal-body">
                            {{-- <form action="{{ route('item.destroy', 'item') }}" method="POST" class="needs-validation"
                                novalidate>
                                @csrf
                                @method('DELETE') --}}
                            <p>Apakah anda yakin hendak melakukan submit resume dan menutup {{$typecekstok}} Item?</p>
                            <button type="submit" name="draft" class="btn btn-danger" value="0"><i
                                    class="bx bxs-save"></i>Iya</button>
                            <button type="button"class="btn btn-primary"><i class="bx bxs-save"></i>Batal</button>
                            {{-- </form> --}}
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade text-left" id="deptKosong" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="modalHeader">Dept. Analisator & Dept. Pelaku Belum di isi</h1>
                        </div>
                        <div class="modal-body">

                            <div class="row">
                                <div class="col-md-12" style="text-align: center">
                                    <p style="color:red;">Dept. Analisator dan Dept. Pelaku masih ada yang belum di isi</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="d-grid gap-3 col-6 mx-auto" style="margin: auto;">
                                        <button id="modalClose" type="button" class="btn btn-danger" 
                                    style="margin:0;" data-bs-dismiss="#ModalCSO"><i class="bx bxs-save"></i>Close</button>
                                </div>
                            </div>
                        
                        </div>
                    </div>
                </div>
            </div>
    </form>
    <script>
    
        $(function () {
            $('#modalClose').on('click', function () {
                $('#deptKosong').modal('hide');
            })

            $('#submitCSO').on('click', function()
            {
                const analisator = $('.deptAnalisator').map((idx,el) => el.value).get()
                const pelaku = $('.deptPelaku').map((idx,el) => el.value).get()
                let show = true;
                analisator.forEach(element => {
                    if(show)
                    return show = element!='' ? true : false;
                });
                pelaku.forEach(element => {
                    if(show)
                    return show = element!='' ? true : false;
                });
                if(show)$('#ModalCSO').modal('show');
                else $('#deptKosong').modal('show');
            })
        })



    </script>
@endsection
