@extends('layouts.master')

@section('title', 'Resume CSO Avalan')

@section('content')
    <form action="{{ route('susunan-tim-cso-avalan.store') }}" class="mb-3" method="POST">
        @csrf

        <div class="content-wrapper">
            <!-- Main content -->
            <div class="container-fluid mt-3">
                <div class="d-flex justify-content-between mb-3">
                    <div class="px-3">
                        <h5>Resume CSO Avalan</h5>
                    </div>
                    <div class="d-flex">
                        <div class="px-3" @if (!$checkCsoActive) hidden @endif>
                            <button type="submit" name="draft" value="1" class="btn btn-primary float-end">
                                <i class="fas fa-save pe-2"></i>Save As Draft
                            </button>
                        </div>
                        <div class="px-3" @if (!$checkCsoActive) hidden @endif>
                            <button type="button" class="btn btn-danger float-end" data-bs-toggle="modal"
                                data-bs-target="#ModalCSO">
                                Submit
                            </button>
                        </div>
                    </div>
                </div>

                {{-- <input type="text" name="type" value="1" hidden> --}}
                <div class="card card-secondary mb-3">
                    <div class="card-header bg-secondary text-white">
                        <h3 class="card-title">Analisator CSO</h3>
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
                                @foreach ($analisator as   $analisator)
                                    <td hidden><input type="text" name="jobidAnalisator[]"
                                            value="{{ $analisator->jobid }}"></td>
                                    <td> {{ $loop->iteration }}</td>
                                    <td>{{ $analisator->name }}</td>


                                    <td><select name="deptAnalisator[]" id="">
                                        @if ($analisator->dept == null || $analisator->dept == '')
                                            <option value="" selected>
                                                Pilih Departemen
                                            </option>
                                        @endif
                                        @foreach ($departemen as $dept)
                                            <option value="{{ $dept->deptid }}"
                                                @if ($analisator->dept != null || $analisator->dept != '') @if ($analisator->dept == $dept->deptid)
                                                    selected @endif
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

    <form action="{{ route('susunan-tim-cso-avalan.store') }}" method="POST">
        @csrf
        <input type="text" name="type" value="2" hidden> --}}
        <div class="card card-secondary mb-3">
            <div class="card-header bg-secondary text-white ">
                <h3 class="card-title ">Pelaku CSO</h3>
            </div>
            <div class="card-body">
                <table class="table table-striped table-hover mb-3">
                    <thead>
                        <tr>
                            <th hidden></th>
                            <th scope="col">No</th>
                            <th>Nama Pelaku</th>
                            <th>Departemen</th>
                            <th>Catatan tentang Pelaku</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($pelaku as   $pelaku)
                            <tr>
                                <td hidden><input type="text" name="jobidPelaku[]" value="{{ $pelaku->jobid }}">
                                </td>
                                <td> {{ $loop->iteration }}</th>
                                <td>{{ $pelaku->name }}</td>
                                <td><select name="deptPelaku[]" id="">
                                    @if ($pelaku->dept == null || $pelaku->dept == '')
                                        <option value="" selected>
                                            Pilih Departemen
                                        </option>
                                    @endif
                                    @foreach ($departemen as $dept)
                                        <option value="{{ $dept->deptid }}"
                                            @if ($pelaku->dept != null || $pelaku->dept != '') @if ($pelaku->dept == $dept->deptid)
                                                selected @endif
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
            <h3 class="card-title">Avalan tertukar</h3>
        </div>
        {{-- <form action="{{ route('avalan-selisih.store') }}" method="POST">
            @csrf
            <input type="text" name="type" value="1" hidden> --}}
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
                            @foreach ($tertukar as   $tertukar)
                                <tr>
                                    <td hidden><input type="text" name="trsdetidTertukar[]" value="{{ $tertukar->trsdetid }}">
                                    </td>
                                    <th> {{ $loop->iteration }}</th>
                                    <td>{{ $tertukar->itemname }}</td>
                                    <td><select class="form-select form-select-sm" name="keputusanTertukar[]">
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
                                                <option selected>Pilih Keputusan</option>
                                                @foreach ($keputusan as $kep)
                                                    <option value="{{ $kep->keputusanid }}">
                                                        {{ $kep->keputusandesc }}</option>
                                                @endforeach
                                            @endif
                                        </select> </td>
                                    <td>{{ $tertukar->onhand }}</td>
                                    <td>{{ number_format($tertukar->totalcso, 2, ',', '.') }}</td>
                                    <td>{{ number_format($tertukar->selisihplus, 2, ',', '.') }}</td>
                                    <td>{{ number_format($tertukar->selisihmin, 2, ',', '.') }}</td>
                                    <td>Rp. {{ number_format($tertukar->cogs, 2, ',', '.') }}</td>
                                    <td>
                                        @if ($tertukar->cogs_manual != null)
                                            <input type="number" class="form-control form-control-sm" name="hppTertukar[]"
                                                value="{{ $tertukar->cogs_manual }}">
                                        @else
                                            <input type="number" class="form-control form-control-sm" name="hppTertukar[]">
                                        @endif
                                    </td>
                                    <td>Rp. {{ number_format($tertukar->nominalplus, 2, ',', '.') }}</td>
                                    <td>Rp. {{ number_format($tertukar->nominalmin, 2, ',', '.         ') }}</td>
                                    <td>
                                        @if ($tertukar->pembebanan != null)
                                            <input type="number" class="form-control form-control-sm"
                                                name="pembebananTertukar[]" value="{{ $tertukar->pembebanan }}">
                                        @else
                                            <input type="number" class="form-control form-control-sm"
                                                name="pembebananTertukar[]">
                                        @endif
                                    </td>
                                    <td>{{ $tertukar->groupid }}</td>
                                    <td>
                                        @if ($tertukar->nodoc != null)
                                            <input type="text" class="form-control form-control-sm" name="nodokTertukar[]"
                                                value="{{ $tertukar->nodoc }}">
                                        @else
                                            <input type="text" class="form-control form-control-sm" name="nodokTertukar[]">
                                        @endif
                                    </td>
                                    <td>
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
            <h3 class="card-title">Avalan Selisih Plus & Selisih Minus</h3>
        </div>
        {{-- <form action="{{ route('avalan-selisih.store') }}" method="POST">
            @csrf
            <input type="text" name="type" value="2" hidden> --}}
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
                            @foreach ($selisih as   $selisih)
                                <tr>
                                    <td hidden><input type="text" name="trsdetidSelisih[]" value="{{ $selisih->trsdetid }}">
                                    </td>
                                    <td> {{ $loop->iteration }}</th>
                                    <td>{{ $selisih->itemname }}</td>
                                    <td><select class="form-select form-select-sm" name="keputusanSelisih[]">
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
                                                <option selected>Pilih Keputusan</option>
                                                @foreach ($keputusan as $kep)
                                                    <option value="{{ $kep->keputusanid }}">
                                                        {{ $kep->keputusandesc }}</option>
                                                @endforeach
                                            @endif
                                        </select> </td>
                                    <td>{{ $selisih->onhand }}</td>
                                    <td>{{ number_format($selisih->totalcso, 2, ',', '.') }}</td>
                                    <td>{{ number_format($selisih->selisihplus, 2, ',', '.') }}</td>
                                    <td>{{ number_format($selisih->selisihmin, 2, ',', '.') }}</td>
                                    <td>
                                        @if ($selisih->cogs != 0)
                                            Rp.{{ number_format($selisih->cogs, 2, ',', '.') }}
                                        @endif
                                    </td>
                                    <td>
                                        @if ($selisih->cogs_manual != null)
                                            <input type="number" class="form-control form-control-sm" name="hppSelisih[]"
                                                value="{{ $selisih->cogs_manual }}">
                                        @else
                                            <input type="number" class="form-control form-control-sm" name="hppSelisih[]">
                                        @endif
                                    </td>
                                    <td>
                                        @if ($selisih->nominalplus != 0)
                                            Rp.{{ number_format($selisih->nominalplus, 2, ',', '.') }}
                                        @endif
                                    </td>
                                    <td>
                                        @if ($selisih->nominalmin != 0)
                                            Rp.{{ number_format($selisih->nominalmin, 2, ',', '.') }}
                                        @endif
                                    </td>
                                    <td>
                                        @if ($selisih->pembebanan != null)
                                            <input type="number" class="form-control form-control-sm"
                                                name="pembebananSelisih[]" value="{{ $selisih->pembebanan }}">
                                        @else
                                            <input type="number" class="form-control form-control-sm"
                                                name="pembebananSelisih[]">
                                        @endif
                                    </td>
                                    <td>{{ $selisih->groupid }}</td>
                                    <td>
                                        @if ($selisih->nodoc != null)
                                            <input type="text" class="form-control form-control-sm" name="nodokSelisih[]"
                                                value="{{ $selisih->nodoc }}">
                                        @else
                                            <input type="text" class="form-control form-control-sm" name="nodokSelisih[]">
                                        @endif
                                    </td>
                                    <td>
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
        {{-- <form action="{{ route('avalan-selisih.store') }}" method="POST">
            @csrf
            <input type="text" name="type" value="3" hidden> --}}
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
                            @foreach ($kesalahan_admin as   $admin)
                                <tr>
                                    <td hidden><input type="text" name="trsdetidKesalahanAdmin[]" value="{{ $admin->trsdetid }}">
                                    </td>
                                    <td> {{ $loop->iteration }}</th>
                                    <td>{{ $admin->itemname }}</td>
                                    <td><select class="form-select form-select-sm" name="keputusanKesalahanAdmin[]">
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
                                                <option selected>Pilih Keputusan</option>
                                                @foreach ($keputusan as $kep)
                                                    <option value="{{ $kep->keputusanid }}">
                                                        {{ $kep->keputusandesc }}</option>
                                                @endforeach
                                            @endif
                                        </select> </td>
                                    <td>{{ $admin->onhand }}</td>
                                    <td>{{ number_format($admin->totalcso, 2, ',', '.') }}</td>
                                    <td>{{ number_format($admin->selisihplus, 2, ',', '.') }}</td>
                                    <td>{{ number_format($admin->selisihmin, 2, ',', '.') }}</td>
                                    <td>
                                        @if ($admin->cogs != 0)
                                            Rp.{{ number_format($admin->cogs, 2, ',', '.') }}
                                        @endif
                                    </td>
                                    <td>
                                        @if ($admin->cogs_manual != null)
                                            <input type="number" class="form-control form-control-sm" name="hppKesalahanAdmin[]"
                                                value="{{ $admin->cogs_manual }}">
                                        @else
                                            <input type="number" class="form-control form-control-sm" name="hppKesalahanAdmin[]">
                                        @endif
                                    </td>
                                    <td>
                                        @if ($admin->nominalplus != 0)
                                            Rp.{{ number_format($admin->nominalplus, 2, ',', '.') }}
                                        @endif
                                    </td>
                                    <td>
                                        @if ($admin->nominalmin != 0)
                                            Rp.{{ number_format($admin->nominalmin, 2, ',', '.') }}
                                        @endif
                                    </td>
                                    <td>
                                        @if ($admin->pembebanan != null)
                                            <input type="number" class="form-control form-control-sm"
                                                name="pembebananKesalahanAdmin[]" value="{{ $admin->pembebanan }}">
                                        @else
                                            <input type="number" class="form-control form-control-sm"
                                                name="pembebananKesalahanAdmin[]">
                                        @endif
                                    </td>
                                    <td>{{ $admin->groupid }}</td>
                                    <td>
                                        @if ($admin->nodoc != null)
                                            <input type="text" class="form-control form-control-sm" name="nodokKesalahanAdmin[]"
                                                value="{{ $admin->nodoc }}">
                                        @else
                                            <input type="text" class="form-control form-control-sm" name="nodokKesalahanAdmin[]">
                                        @endif
                                    </td>
                                    <td>
                                        @if ($admin->keterangan != null)
                                            <input type="text" class="form-control form-control-sm"
                                                name="keteranganKesalahanAdmin[]" value="{{ $admin->keterangan }}">
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

    </div>
    <div class="modal fade text-left" id="ModalCSO" tabindex="-1">
        <div class="modal-dialog modal modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="modalHeader">Submit Resume Avalan</h1>
                </div>
                <div class="modal-body">
                        <p>Apakah anda yakin hendak melakukan submit resume dan menutup CSO Avalan?</p>
                        <button type="submit" name="draft" class="btn btn-danger" value="0"><i
                            class="bx bxs-save"></i>Iya</button>
                    <button type="button"class="btn btn-primary"><i
                            class="bx bxs-save"></i>Batal</button>
                </div>
            </div>
        </div>
    </div>
    </form>
@endsection
