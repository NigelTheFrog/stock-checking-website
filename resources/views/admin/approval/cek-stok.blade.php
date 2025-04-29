@extends('layouts.master')

@section('title', 'Cek Stok')

@section('content')

    <div class="content-wrapper mt-3">
        <!-- Main content -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row">
                    <div class="">
                        <div class="card card-secondary">
                            <div class="card-header bg-secondary text-white">
                                <h3 class="card-title"> Laporan Cek Stok</h3>
                            </div>
                            <div class="card-body" style="background-color: #f8f8f8;">
                                {{-- <h1 class="modal-title fs-5 mb-2" id="mdlMoreLabel">Laporan Resume Hasil Pelaksanaan Cek
                                    Stok</h1> --}}
                                {{-- </div> --}}
                                {{-- <div class="modal-body"> --}}
                                {{-- <div class="form-group row col"> --}}
                                <div style="overflow-y: auto; max-height: 49.5vh; overflow-x: hidden;">
                                    <table class="table table-sm table-hover table-striped table-bordered text-nowrap"
                                        id="tabel-transaksi">
                                        <thead class="table-dark" style="position: -webkit-sticky;position: sticky;top: 0;">
                                            <tr class="text-center" style="font-size: 11pt">
                                                <th class="align-middle" rowspan="2" style="width: 2vw">No</th>
                                                {{-- <th class="align-middle" rowspan="2">Tipe</th> --}}
                                                <th class="align-middle" rowspan="2">Dokumen</th>
                                                <th class="align-middle" rowspan="2">Tanggal</th>
                                                <th class="align-middle" rowspan="2">Material</th>
                                                <th class="align-middle"

                                                    @if (Auth::user()->level == 1 ||
                                                            Auth::user()->level == 2 ||
                                                            Auth::user()->level == 6 ||
                                                            Auth::user()->level == 7 ||
                                                            Auth::user()->level == 8 ||
                                                            Auth::user()->level == 9 ||
                                                            Auth::user()->level == 10 ||  Auth::user()->level == 14) colspan="7"
                                                    {{-- @elseif (Auth::user()->level == 2 ||
                                                            Auth::user()->level == 7 ||
                                                            Auth::user()->level == 8 ||
                                                            Auth::user()->level == 9 ||
                                                            Auth::user()->level == 10) colspan="6" --}}

                                                    @else colspan="3" @endif>
                                                    Approval</th>
                                                <th class="align-middle" rowspan="2">Aksi</th>
                                            </tr>
                                            <tr class="text-center">

                                                @if (Auth::user()->level == 1 ||
                                                        Auth::user()->level == 2 ||
                                                        Auth::user()->level == 6 ||
                                                        Auth::user()->level == 7 ||
                                                        Auth::user()->level == 8 ||
                                                        Auth::user()->level == 9 ||
                                                        Auth::user()->level == 10 ||
                                                        Auth::user()->level == 13 ||
                                                        Auth::user()->level == 14 || 
                                                        Auth::user()->level == 15)

                                                    <th class="align-middle">Staff Stok</th>
                                                    <th class="align-middle">PIC Wrh</th>
                                                    <th class="align-middle">Ka. Wrh</th>
                                                    <th class="align-middle">Ka. FAC</th>
                                                    <th class="align-middle">Ka. Purch</th>
                                                    <th class="align-middle">Ka. Ops</th>
                                                    <th class="align-middle">Reg. Man</th>

                                                    {{-- @elseif (Auth::user()->level == 2 ||

                                                        Auth::user()->level == 7 ||
                                                        Auth::user()->level == 8 ||
                                                        Auth::user()->level == 9 ||
                                                        Auth::user()->level == 10)
                                                    <th class="align-middle">Staff Stok</th>
                                                    <th class="align-middle">Ka. Wrh</th>
                                                    <th class="align-middle">Ka. FAC</th>
                                                    <th class="align-middle">Ka. Purch</th>
                                                    <th class="align-middle">Ka. Ops</th>
                                                    <th class="align-middle">Reg. Man</th> --}}
                                                @else
                                                    <th class="align-middle">Staff Stok</th>
                                                    <th class="align-middle">PIC Wrh</th>
                                                    <th class="align-middle">Ka. Wrh</th>
                                                @endif

                                            </tr>
                                        </thead>
                                        <tbody class="small" style="font-size: 9pt">
                                            @foreach ($listNodoc as $nodoc)
                                                <tr class="text-center">
                                                    <td class="align-middle">{{ $loop->iteration }}</td>
                                                    {{-- <td class="align-middle">Resume Hasil</td> --}}
                                                    <td class="align-middle">{{ $nodoc->doccsoid }}</td>
                                                    <td class="align-middle">{{ $nodoc->startcsodate }}</td>
                                                    <td class="align-middle" style="max-width: 20vw; white-space: normal;
                                                    overflow-wrap: break-word;">{{ $nodoc->csomaterial }}</td>
                                                    <td class="align-middle">
                                                        @if ($nodoc->staffstokapproval == 1)
                                                            <div>
                                                                <label class="text-success">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="21"
                                                                        height="21" fill="green" class="bi bi-check2"
                                                                        viewBox="0 0 16 16">
                                                                        <path
                                                                            d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0" />
                                                                    </svg><br>
                                                                    Approved
                                                                </label>
                                                            </div>
                                                            <div>
                                                                <label>
                                                                    Aprroved By: <br>
                                                                    @foreach ($dataApproval as $appr)
                                                                        @if ($appr->id == $nodoc->staffstokapproved_by)
                                                                            {{ $appr->name }}
                                                                        @endif
                                                                    @endforeach
                                                                </label>
                                                            </div>
                                                        @else
                                                            <div class="text-danger">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                                    height="18" fill="red" class="bi bi-x-lg"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                                                </svg><br>
                                                                Not Approved
                                                            </div>
                                                        @endif
                                                    </td>

                                                    @if (Auth::user()->level == 1 ||
                                                            Auth::user()->level == 2 ||
                                                            Auth::user()->level == 6 ||
                                                            Auth::user()->level == 7 ||
                                                            Auth::user()->level == 8 ||
                                                            Auth::user()->level == 9 ||
                                                            Auth::user()->level == 10 ||
                                                            Auth::user()->level == 13 ||
                                                            Auth::user()->level == 14 || 
                                                            Auth::user()->level == 15)

                                                        <td class="align-middle">
                                                            @if ($nodoc->picwrhapproval == 1)
                                                                <div>
                                                                    <label class="text-success">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="21" height="21" fill="green"
                                                                            class="bi bi-check2" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0" />
                                                                        </svg><br>
                                                                        Approved
                                                                    </label>
                                                                </div>
                                                                <div>
                                                                    <label>
                                                                        Aprroved By: <br>
                                                                        @foreach ($dataApproval as $appr)
                                                                            @if ($appr->id == $nodoc->picwrhapproved_by)
                                                                                {{ $appr->name }}
                                                                            @endif
                                                                        @endforeach
                                                                    </label>
                                                                </div>
                                                            @else
                                                                <div class="text-danger">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                                        height="18" fill="red" class="bi bi-x-lg"
                                                                        viewBox="0 0 16 16">
                                                                        <path
                                                                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                                                    </svg><br>
                                                                    Not Approved
                                                                </div>
                                                            @endif
                                                        </td>
                                                        <td class="align-middle">
                                                            @if ($nodoc->wrhapproval == 1)
                                                                <div>
                                                                    <label class="text-success">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="21" height="21" fill="green"
                                                                            class="bi bi-check2" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0" />
                                                                        </svg><br>
                                                                        Approved
                                                                    </label>
                                                                </div>
                                                                <div>
                                                                    <label>
                                                                        Aprroved By: <br>
                                                                        @foreach ($dataApproval as $appr)
                                                                            @if ($appr->id == $nodoc->wrhapproved_by)
                                                                                {{ $appr->name }}
                                                                            @endif
                                                                        @endforeach
                                                                    </label>
                                                                </div>
                                                            @else
                                                                <div class="text-danger">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                                        height="18" fill="red" class="bi bi-x-lg"
                                                                        viewBox="0 0 16 16">
                                                                        <path
                                                                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                                                    </svg><br>
                                                                    Not Approved
                                                                </div>
                                                            @endif
                                                        </td>
                                                        <td class="align-middle">
                                                            @if ($nodoc->facapproval == 1)
                                                                <div>
                                                                    <label class="text-success">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="21" height="21" fill="green"
                                                                            class="bi bi-check2" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0" />
                                                                        </svg><br>
                                                                        Approved
                                                                    </label>
                                                                </div>
                                                                <div>
                                                                    <label>
                                                                        Aprroved By: <br>
                                                                        @foreach ($dataApproval as $appr)
                                                                            @if ($appr->id == $nodoc->facapproved_by)
                                                                                {{ $appr->name }}
                                                                            @endif
                                                                        @endforeach
                                                                    </label>
                                                                </div>
                                                            @else
                                                                <div class="text-danger">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                                        height="18" fill="red" class="bi bi-x-lg"
                                                                        viewBox="0 0 16 16">
                                                                        <path
                                                                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                                                    </svg><br>
                                                                    Not Approved
                                                                </div>
                                                            @endif
                                                        </td>
                                                        <td class="align-middle">
                                                            @if ($nodoc->purapproval == 1)
                                                                <div>
                                                                    <label class="text-success">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="21" height="21" fill="green"
                                                                            class="bi bi-check2" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0" />
                                                                        </svg><br>
                                                                        Approved
                                                                    </label>
                                                                </div>
                                                                <div>
                                                                    <label>
                                                                        Aprroved By: <br>
                                                                        @foreach ($dataApproval as $appr)
                                                                            @if ($appr->id == $nodoc->purapproved_by)
                                                                                {{ $appr->name }}
                                                                            @endif
                                                                        @endforeach
                                                                    </label>
                                                                </div>
                                                            @else
                                                                <div class="text-danger">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                                        height="18" fill="red" class="bi bi-x-lg"
                                                                        viewBox="0 0 16 16">
                                                                        <path
                                                                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                                                    </svg><br>
                                                                    Not Approved
                                                                </div>
                                                            @endif
                                                        </td>
                                                        <td class="align-middle">
                                                            @if ($nodoc->kaopsapproval == 1)
                                                                <div>
                                                                    <label class="text-success">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="21" height="21" fill="green"
                                                                            class="bi bi-check2" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0" />
                                                                        </svg><br>
                                                                        Approved
                                                                    </label>
                                                                </div>
                                                                <div>
                                                                    <label>
                                                                        Aprroved By: <br>
                                                                        @foreach ($dataApproval as $appr)
                                                                            @if ($appr->id == $nodoc->kaopsapproved_by)
                                                                                {{ $appr->name }}
                                                                            @endif
                                                                        @endforeach
                                                                    </label>
                                                                </div>
                                                            @else
                                                                <div class="text-danger">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                                        height="18" fill="red" class="bi bi-x-lg"
                                                                        viewBox="0 0 16 16">
                                                                        <path
                                                                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                                                    </svg><br>
                                                                    Not Approved
                                                                </div>
                                                            @endif
                                                        </td>
                                                        <td class="align-middle">
                                                            @if ($nodoc->regmenapproval == 1)
                                                                <div>
                                                                    <label class="text-success">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="21" height="21" fill="green"
                                                                            class="bi bi-check2" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0" />
                                                                        </svg><br>
                                                                        Approved
                                                                    </label>
                                                                </div>
                                                                <div>
                                                                    <label>
                                                                        Aprroved By: <br>
                                                                        @foreach ($dataApproval as $appr)
                                                                            @if ($appr->id == $nodoc->regmenapproved_by)
                                                                                {{ $appr->name }}
                                                                            @endif
                                                                        @endforeach
                                                                    </label>
                                                                </div>
                                                            @else
                                                                <div class="text-danger">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                                        height="18" fill="red" class="bi bi-x-lg"
                                                                        viewBox="0 0 16 16">
                                                                        <path
                                                                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                                                    </svg><br>
                                                                    Not Approved
                                                                </div>
                                                            @endif
                                                        </td>

                                                        {{-- @elseif (Auth::user()->level == 2 ||

                                                            Auth::user()->level == 7 ||
                                                            Auth::user()->level == 8 ||
                                                            Auth::user()->level == 9 ||
                                                            Auth::user()->level == 10)

                                                            <td class="align-middle">
                                                                @if ($nodoc->wrhapproval == 1)
                                                                    <div>
                                                                        <label class="text-success">
                                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                                width="21" height="21" fill="green"
                                                                                class="bi bi-check2" viewBox="0 0 16 16">
                                                                                <path
                                                                                    d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0" />
                                                                            </svg><br>
                                                                            Approved
                                                                        </label>
                                                                    </div>
                                                                    <div>
                                                                        <label>
                                                                            Aprroved By: <br>
                                                                            @foreach ($dataApproval as $appr)
                                                                                @if ($appr->id == $nodoc->wrhapproved_by)
                                                                                    {{ $appr->name }}
                                                                                @endif
                                                                            @endforeach
                                                                        </label>
                                                                    </div>
                                                                @else
                                                                    <div class="text-danger">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                                            height="18" fill="red" class="bi bi-x-lg"
                                                                            viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                                                        </svg><br>
                                                                        Not Approved
                                                                    </div>
                                                                @endif
                                                            </td>

                                                        <td class="align-middle">
                                                            @if ($nodoc->facapproval == 1)
                                                                <div>
                                                                    <label class="text-success">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="21" height="21" fill="green"
                                                                            class="bi bi-check2" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0" />
                                                                        </svg><br>
                                                                        Approved
                                                                    </label>
                                                                </div>
                                                                <div>
                                                                    <label>
                                                                        Aprroved By: <br>
                                                                        @foreach ($dataApproval as $appr)
                                                                            @if ($appr->id == $nodoc->facapproved_by)
                                                                                {{ $appr->name }}
                                                                            @endif
                                                                        @endforeach
                                                                    </label>
                                                                </div>
                                                            @else
                                                                <div class="text-danger">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                                        height="18" fill="red" class="bi bi-x-lg"
                                                                        viewBox="0 0 16 16">
                                                                        <path
                                                                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                                                    </svg><br>
                                                                    Not Approved
                                                                </div>
                                                            @endif
                                                        </td>
                                                        <td class="align-middle">
                                                            @if ($nodoc->purapproval == 1)
                                                                <div>
                                                                    <label class="text-success">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="21" height="21" fill="green"
                                                                            class="bi bi-check2" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0" />
                                                                        </svg><br>
                                                                        Approved
                                                                    </label>
                                                                </div>
                                                                <div>
                                                                    <label>
                                                                        Aprroved By: <br>
                                                                        @foreach ($dataApproval as $appr)
                                                                            @if ($appr->id == $nodoc->purapproved_by)
                                                                                {{ $appr->name }}
                                                                            @endif
                                                                        @endforeach
                                                                    </label>
                                                                </div>
                                                            @else
                                                                <div class="text-danger">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                                        height="18" fill="red" class="bi bi-x-lg"
                                                                        viewBox="0 0 16 16">
                                                                        <path
                                                                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                                                    </svg><br>
                                                                    Not Approved
                                                                </div>
                                                            @endif
                                                        </td>
                                                        <td class="align-middle">
                                                            @if ($nodoc->kaopsapproval == 1)
                                                                <div>
                                                                    <label class="text-success">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="21" height="21" fill="green"
                                                                            class="bi bi-check2" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0" />
                                                                        </svg><br>
                                                                        Approved
                                                                    </label>
                                                                </div>
                                                                <div>
                                                                    <label>
                                                                        Aprroved By: <br>
                                                                        @foreach ($dataApproval as $appr)
                                                                            @if ($appr->id == $nodoc->kaopsapproved_by)
                                                                                {{ $appr->name }}
                                                                            @endif
                                                                        @endforeach
                                                                    </label>
                                                                </div>
                                                            @else
                                                                <div class="text-danger">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                                        height="18" fill="red" class="bi bi-x-lg"
                                                                        viewBox="0 0 16 16">
                                                                        <path
                                                                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                                                    </svg><br>
                                                                    Not Approved
                                                                </div>
                                                            @endif
                                                        </td>
                                                        <td class="align-middle">
                                                            @if ($nodoc->regmenapproval == 1)
                                                                <div>
                                                                    <label class="text-success">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="21" height="21" fill="green"
                                                                            class="bi bi-check2" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0" />
                                                                        </svg><br>
                                                                        Approved
                                                                    </label>
                                                                </div>
                                                                <div>
                                                                    <label>
                                                                        Aprroved By: <br>
                                                                        @foreach ($dataApproval as $appr)
                                                                            @if ($appr->id == $nodoc->regmenapproved_by)
                                                                                {{ $appr->name }}
                                                                            @endif
                                                                        @endforeach
                                                                    </label>
                                                                </div>
                                                            @else
                                                                <div class="text-danger">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                                        height="18" fill="red" class="bi bi-x-lg"
                                                                        viewBox="0 0 16 16">
                                                                        <path
                                                                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                                                    </svg><br>
                                                                    Not Approved
                                                                </div>
                                                            @endif
                                                        </td> --}}
                                                    @else
                                                        <td class="align-middle">
                                                            @if ($nodoc->picwrhapproval == 1)
                                                                <div>
                                                                    <label class="text-success">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="21" height="21" fill="green"
                                                                            class="bi bi-check2" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0" />
                                                                        </svg><br>
                                                                        Approved
                                                                    </label>
                                                                </div>
                                                                <div>
                                                                    <label>
                                                                        Aprroved By: <br>
                                                                        @foreach ($dataApproval as $appr)
                                                                            @if ($appr->id == $nodoc->picwrhapproved_by)
                                                                                {{ $appr->name }}
                                                                            @endif
                                                                        @endforeach
                                                                    </label>
                                                                </div>
                                                            @else
                                                                <div class="text-danger">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                                        height="18" fill="red" class="bi bi-x-lg"
                                                                        viewBox="0 0 16 16">
                                                                        <path
                                                                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                                                    </svg><br>
                                                                    Not Approved
                                                                </div>
                                                            @endif
                                                        </td>
                                                        <td class="align-middle">
                                                            @if ($nodoc->wrhapproval == 1)
                                                                <div>
                                                                    <label class="text-success">
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                            width="21" height="21" fill="green"
                                                                            class="bi bi-check2" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0" />
                                                                        </svg><br>
                                                                        Approved
                                                                    </label>
                                                                </div>
                                                                <div>
                                                                    <label>
                                                                        Aprroved By: <br>
                                                                        @foreach ($dataApproval as $appr)
                                                                            @if ($appr->id == $nodoc->wrhapproved_by)
                                                                                {{ $appr->name }}
                                                                            @endif
                                                                        @endforeach
                                                                    </label>
                                                                </div>
                                                            @else
                                                                <div class="text-danger">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                                        height="18" fill="red" class="bi bi-x-lg"
                                                                        viewBox="0 0 16 16">
                                                                        <path
                                                                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                                                    </svg><br>
                                                                    Not Approved
                                                                </div>
                                                            @endif
                                                        </td>
                                                    @endif
                                                    <td class="align-middle">
                                                        {{-- <form action="{{ route('cek-stok.update', 'cek_stok') }}" class="mb-1"
                                                            method="POST">
                                                            @csrf
                                                            @method('PUT')
                                                            <input type="text" name="type" value="1" hidden>
                                                            <button type="submit" class="btn btn-primary text-white"
                                                            name="trsidresume" value="{{ $nodoc->trsid }}">Preview</button>
                                                        </form> --}}
                                                        <form action="{{ route('cek-stok.store') }}"
                                                            class="mb-1" method="POST">
                                                            @csrf
                                                            <input type="text" name="type" value="1" hidden>
                                                            <input type="text" name="approval" value="1" hidden>
                                                            <button type="submit" class="btn btn-primary text-white fs-6"
                                                                style="width: 10vw" name="trsidresume"
                                                                value="{{ $nodoc->trsid }}">Preview Cover</button>
                                                        </form>
                                                        @if (Auth::user()->level == 1 ||
                                                                Auth::user()->level == 2 ||
                                                                Auth::user()->level == 6 ||
                                                                Auth::user()->level == 7 ||
                                                                Auth::user()->level == 8 ||
                                                                Auth::user()->level == 9 ||
                                                                Auth::user()->level == 10 ||
                                                                Auth::user()->level == 13 ||
                                                                Auth::user()->level == 14 || 
                                                                Auth::user()->level == 15)
                                                            <form action="{{ route('cek-stok.store') }}"
                                                                method="POST">
                                                                @csrf
                                                                <input type="text" name="type" value="2"
                                                                    hidden>
                                                                <button type="submit" class="btn btn-primary text-white"
                                                                    style="width: 10vw" name="trsidlaporan"
                                                                    value="{{ $nodoc->trsid }}">Preview CSO
                                                                    Detail</button>
                                                            </form>
                                                        @endif

                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>

                                {{-- <div style="overflow-y: auto; max-height: 49.5vh; overflow-x: hidden;">
                                    <table class="table table-sm table-hover table-striped table-bordered text-nowrap"
                                        id="tabel-transaksi">
                                        <thead class="table-dark" style="position: -webkit-sticky;position: sticky;top: 0;">
                                            <tr class="text-center" style="font-size: 11pt">
                                                <th class="align-middle" rowspan="2" style="width: 2vw">No</th>
                                                <th class="align-middle" rowspan="2">Tipe</th>
                                                <th class="align-middle" rowspan="2">Dokumen</th>
                                                <th class="align-middle" rowspan="2">Tanggal</th>
                                                <th class="align-middle" rowspan="2">Material</th>
                                                <th class="align-middle" colspan="5">Approval</th>
                                                <th class="align-middle" rowspan="2">Aksi</th>
                                            </tr>
                                            <tr class="text-center">
                                                <th class="align-middle">Ka. Wrh</th>
                                                <th class="align-middle">Ka. FAC</th>
                                                <th class="align-middle">Ka. Purch</th>
                                                <th class="align-middle">Ka. Ops</th>
                                                <th class="align-middle">Reg. Man</th>
                                            </tr>
                                        </thead>
                                        <tbody class="small" style="font-size: 10pt">
                                            @foreach ($listNodoc as $nodoc)
                                                <tr class="text-center">
                                                    <td class="align-middle">{{ $loop->iteration }}</td>
                                                    <td class="align-middle">CSO All Material</td>
                                                    <td class="align-middle">{{ $nodoc->doccsoid }}</td>
                                                    <td class="align-middle">{{ $nodoc->startcsodate }}</td>
                                                    <td class="align-middle">{{ $nodoc->csomaterial }}</td>
                                                    <td class="align-middle"></td>
                                                    <td class="align-middle"></td>
                                                    <td class="align-middle"></td>
                                                    <td class="align-middle"></td>
                                                    <td class="align-middle"></td>
                                                    <td class="align-middle">
                                                        <form action="{{ route('cek-stok.update', 'cek_stok') }}" class="mb-1"
                                                            method="POST">
                                                            @csrf
                                                            @method('PUT')
                                                            <input type="text" name="type" value="1" hidden>
                                                            <button type="submit" class="btn btn-primary text-white"
                                                            name="trsidresume" value="{{ $nodoc->trsid }}">Preview</button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div> --}}

                                {{-- <label class="col=sm-e col-form-label">Nomor Dokumen </label>
                                                <select style="width: 110%" id="select-resume" name="trsidresume" placeholder="Daftar CSO">
                                                    @foreach ($listNodoc as $nodoc)
                                                        <option value="{{ $nodoc->trsid }}">{{ $nodoc->doccsoid }} -
                                                            {{ $nodoc->csomaterial }}
                                                        </option>
                                                    @endforeach
                                                </select> --}}
                                {{-- </div> --}}
                                {{-- </div> --}}
                                {{-- <div class="modal-footer">
                                        <button type="submit" class="btn btn-primary text-white">Preview</button>
                                    </div> --}}

                                {{-- <div class="list-group">
                                    <button class="list-group-item list-group-item-action"
                                        style="border-bottom: 1px solid #d2d2d2;" data-bs-toggle="modal"
                                        data-bs-target="#modalLaporanResume">
                                        <div class="d-flex w-100 justify-content-between">
                                            <div class="fw-bold">Laporan Resume Hasil Pelaksanaan Cek Stok</div>
                                        </div>
                                        <small>&nbsp</small>
                                    </button>
                                    <button class="list-group-item list-group-item-action"
                                        style="border-top: 1px solid #d2d2d2;" data-bs-toggle="modal"
                                        data-bs-target="#modalLaporanCSO">
                                        <div class="d-flex w-100 justify-content-between">
                                            <div class="fw-bold">Laporan CSO SRM All Material Pipa Industri, Siku, Strep
                                            </div>
                                        </div>
                                        <small>&nbsp</small>
                                    </button>
                                </div> --}}

                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </div>

@endsection
