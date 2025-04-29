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
                                <h3 class="card-title"> Laporan {{$typecekstok}} Batch</h3>
                            </div>
                            <div class="card-body" style="background-color: #f8f8f8;">
                                <div class="list-group">
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
                                            <div class="fw-bold">Laporan {{$typecekstok}} {{$dataCoy->coycode}} All Material Pipa Industri, Siku, Strep
                                            </div>
                                        </div>
                                        <small>&nbsp</small>
                                    </button>
                                    <button class="list-group-item list-group-item-action"
                                        style="border-top: 1px solid #d2d2d2;" data-bs-toggle="modal"
                                        data-bs-target="#RevisiHpp">
                                        <div class="d-flex w-100 justify-content-between">
                                            <div class="fw-bold">Ajust Hpp Resume Hasil Pelaksanaan Cek Stok
                                            </div>
                                        </div>
                                        <small>&nbsp</small>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </div>
    <div class="modal fade text-left" id="modalLaporanResume" tabindex="-1"  aria-hidden="true">
        <div class="modal-dialog modal modal-90vw modal-dialog-centered" role="document">
            <div class="modal-content">
                <form action="{{ route('cek-stok-avalan.store') }}" method="POST">
                    @csrf
                    <input type="text" name="type" value="1" hidden>
                    <div class="modal-header bg-secondary text-white">
                        <h1 class="modal-title fs-5" id="mdlMoreLabel">Laporan Resume Hasil Pelaksanaan Cek Stok</h1>
                        <button type="button" class="btn-close btn-close-white align-middle"
                            onclick="closeModal(this)" aria-label="Close" value='modalLaporanResume'>
                    </div>
                    <div class="modal-body">
                        <label class="col=sm-e col-form-label">Nomor Dokumen </label>
                        <select style="width: 110%" id="select-resume" name="trsidresume" placeholder="Daftar {{$typecekstok}}">
                            @foreach ($listNodoc as $nodoc)
                                <option value="{{ $nodoc->trsid }}">{{ $nodoc->doccsoid }} -
                                    {{ $nodoc->csomaterial }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary text-white">Preview</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="modal fade text-left" id="modalLaporanCSO" tabindex="-1"  aria-hidden="true">
        <div class="modal-dialog modal modal-dialog-centered" role="document">
            <div class="modal-content">
                <form action="{{ route('cek-stok-avalan.store') }}" method="POST">
                    @csrf
                    <input type="text" name="type" value="2" hidden>
                    <input type="text" name="csotype" value="" hidden>
                    <div class="modal-header bg-secondary text-white">
                        <h1 class="modal-title fs-5" id="mdlMoreLabel">Laporan Hasil Pelaksanaan Cek Stok</h1>
                        <button type="button" class="btn-close btn-close-white align-middle"
                            onclick="closeModal(this)" aria-label="Close" value='modalLaporanCSO'>
                    </div>
                    <div class="modal-body">
                        <div class="form-group row col">
                            <label class="col=sm-e col-form-label">Nomor Dokumen </label>
                            <select style="width: 110%" id="select-laporan" name="trsidlaporan" placeholder="Daftar {{$typecekstok}}">
                                @foreach ($listNodoc as $nodoc)
                                    <option value="{{ $nodoc->trsid }}">{{ $nodoc->doccsoid }} -
                                        {{ $nodoc->csomaterial }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary text-white">Preview</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="modal fade text-left" id="RevisiHpp" tabindex="-1"  aria-hidden="true">
        <div class="modal-dialog modal modal-90vw modal-dialog-centered" role="document">
            <div class="modal-content">
                <form action="{{ route('cek-stok-avalan.store') }}" method="POST">
                    @csrf
                    <input type="text" name="type" value="1" hidden>
                    <input type="text" name="revisiHpp" value="1" hidden>
                    <input type="text" name="typecekstok" value="{{$typecekstok}}" hidden>
                    <div class="modal-header bg-secondary text-white">
                        <h1 class="modal-title fs-5" id="mdlMoreLabel">Ajust Hpp Resume Hasil Pelaksanaan Cek Stok</h1>
                        <button type="button" class="btn-close btn-close-white align-middle"
                            onclick="closeModal(this)" aria-label="Close" value='RevisiHpp'>
                    </div>
                    <div class="modal-body">
                        <label class="col=sm-e col-form-label">Nomor Dokumen </label>
                        <select style="width: 110%" id="select-adjust" name="trsidresume" placeholder="Daftar {{$typecekstok}}">
                            @foreach ($listNodoc as $nodoc)
                                <option value="{{ $nodoc->trsid }}">{{ $nodoc->doccsoid }} -
                                    {{ $nodoc->csomaterial }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary text-white">Preview</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        document.getElementById("select-resume").selectedIndex = -1;

        VirtualSelect.init({
            search: true,
            ele: '#select-resume',
            silentInitialValueSet: false,
            maxWidth: '92%',
            noSearchResultsText: "CSO Tidak ditemukan"
        });

        document.getElementById("select-laporan").selectedIndex = -1;

        VirtualSelect.init({
            search: true,
            ele: '#select-laporan',
            silentInitialValueSet: false,
            maxWidth: '92%',
            noSearchResultsText: "CSO Tidak ditemukan"
        });

        document.getElementById("select-adjust").selectedIndex = -1;
        
        VirtualSelect.init({
            search: true,
            ele: '#select-adjust',
            silentInitialValueSet: false,
            maxWidth: '92%',
            noSearchResultsText: "CSO Tidak ditemukan"
        });

        function closeModal(button)
        {
            $('#'+button.getAttribute('value')).modal('hide');
        }

        function printLaporanResume(button) {
            const trsid = document.getElementById('trsidresume');
            window.location.href = `{{ url('admin/report/cek-stok-avalan/${trsid.value}') }}`;
        }

        function printLaporanCsoClik(button) {
            const trsid = document.getElementById('trsidlaporan');
            window.location.href = `{{ url('admin/report/cek-stok-avalan/${trsid.value}') }}`;
        }
    </script>


@endsection
