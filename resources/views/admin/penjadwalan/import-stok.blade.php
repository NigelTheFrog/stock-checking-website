@extends('layouts.master')

@section('title', 'Impor Stok')

@section('content')
    <style>
        .vscomp-toggle-button {
            padding: 10px 30px 10px 10px;
            border-radius: 7px
        }
    </style>
    <div class="container-fluid px-4">
        <div class="row justify-content-md-center">
            <div id="main" style="width: 95%">
                <div class="card mt-2">
                    <div class="card-header bg-secondary text-white">
                        <h4 class="card-title pt-2">Impor Stok {{ $csoType }}</h4>
                    </div>
                    <div class="card-body" style="background-color:rgb(248, 248, 248)">
                        <div class="d-flex justify-content-between mb-2" style="width: 25%">
                            <button type="button" class="btn btn-primary float-end" data-bs-toggle="modal"
                                data-bs-target="#modalImportItem"
                                @if ($csoActive) @if ($csoType == 'CSO')
                                disabled
                                @else
                                @if ($csoActive->statusdoc != 'A')
                                disabled @endif
                                @endif @endif>
                                <i class="nav-icon fas fa-file-import"></i> Import Item
                            </button>
                            {{-- <button type="button" class="btn btn-primary float-end" data-bs-toggle="modal"
                                data-bs-target="#modalImportBatch"
                                @if ($csoActive) @if ($csoType == 'CSO')
                                disabled
                                @else
                                @if ($csoActive->statusdoc != 'A')
                                disabled @endif
                                @endif @endif>
                                <i class="nav-icon fas fa-file-import"></i> Import Batch
                            </button> --}}
                        </div>
                        <form id="deleteform" action="{{ route('import-stok.destroy', ['checkboxDelete','key'=>$csoType ]) }}" method="POST"
                            class="needs-validation mx-3" novalidate>
                            @csrf
                            @method('DELETE')
                            <div class="modal fade text-left" id="modalDeleteItem" tabindex="-1">
                                <div class="modal-dialog modal modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="mdlMoreLabel">Konfirmasi</h1>
                                        </div>
                                        <div class="modal-body">
                                            <p>Apakah Anda yakin hendak menghapus item yang sudah dipilih?</p>
                                            <button type="submit" class="btn btn-danger" name="simpan">Iya</button>
                                            <button type="button" onclick="closeModalDelete()" data-bs-dismiss="modal"
                                                class="btn btn-primary">Batal</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <div class="form-group form-check ">
                                    <input class="form-check-input cekdelete" type="checkbox" value="" id="cekdelete"
                                        @if ($csoActive) disabled @endif>
                                    <label class="form-check-label" for="cekdelete">
                                        Centang Semua
                                    </label>
                                </div>
                                <div class="d-flex">
                                    <input type="text" class="form-control me-4" id="myInput"
                                        onkeyup="searchItem(this.value.toLowerCase())" placeholder="Search Item">
                                    <button type="button" data-bs-toggle="modal" data-bs-target="#modalDeleteItem"
                                        class="btn btn-danger" title="Hapus Centang" id="btnHapus" data-id=""
                                        @if ($csoActive) disabled @endif><i class="fas fa-trash-alt"></i>
                                        Hapus Checklist</button>
                                </div>
                            </div>
                            <table class="table table-sm table-bordered table-hover sticky-header table-responsive small table-striped"
                                style="background-color:rgb(255, 255, 255);overflow-y: auto;" id="tabelItem">
                                <thead class="table-dark" style="position: sticky;top: 0;z-index:999;">
                                    <tr class="text-center">
                                        <th class="align-middle" style="width:4%"></th>
                                        <th class="align-middle" style="width:5%">No</th>
                                        <th class="align-middle" style="width:28%">Kode Item</th>
                                        <th class="align-middle" style="width:30%">Nama Item</th>
                                        <th class="align-middle" style="width:6%">Ada Batch</th>
                                        <th class="align-middle" style="width:10%">Jumlah</th>
                                        <th class="align-middle" style="width:5%">Satuan</th>
                                        @if ($coy == 'KKS')
                                            <th class="align-middle" style="width:5%">Tonase</th>
                                        @endif
                                        <th class="align-middle" style="width:12%">Tanggal <br>Import</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($stok as $stok)
                                        <tr class="text-center {{ $stok->statusitem == 'TR' ? 'table-info' : '' }}">
                                            <td class="align-middle">
                                                <div class="form-check" style="z-index:0">
                                                    <input type="checkbox" name="checkboxDelete[]"
                                                        class="form-check-input cekboxdelete" value={{ $stok->itemid }}
                                                        @if ($csoActive) disabled @endif>
                                                </div>
                                            </td>
                                            <td class="align-middle">{{ $loop->iteration }}</td>
                                            <td class="text-start align middle">{{ $stok->itemcode }}</td>
                                            <td class="text-start align middle">{{ $stok->itemname }}</td>
                                            <td class="align-middle">
                                                {{ $stok->isbatch == 1 ? 'Ada' : 'Tidak' }}
                                            </td>
                                            <td class="align-middle">{{ number_format((float) $stok->qty, 2, '.', '') }}
                                            </td>
                                            <td class="align-middle">{{ $stok->uom }}</td>
                                            @if ($coy == 'KKS')
                                                <td class="align-middle">{{ $stok->tonase }}</td>
                                            @endif
                                            <td class="align-middle">
                                                {{ \Carbon\Carbon::parse($stok->createddate)->translatedFormat('d F Y H:i:s') }}
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
            </div>

            <div class="px-0 pt-2" id="push-btn" style="width:4%">
                <button class="btn btn-secondary" type="button" id="openNav" data-bs-toggle="tooltip"
                    data-bs-placement="left" data-bs-title="Buka Form Barang Temuan">
                    <i class="fas fa-angle-left"></i></button>
            </div>

            <div id="mySidenav" class="pt-2 sidenav d-none" style="width:0%">
                <div class="card card-secondary">
                    <div class="card-header bg-secondary text-white d-flex flex-row">
                        <a class="pr-3" href="javascript:void(0)" class="closebtn" id="closeNav"
                            data-bs-toggle="tooltip" data-bs-placement="left" data-bs-title="Tutup Form Barang Temuan"><i
                                class="fas fa-angle-right"></i></a>
                        <h3 class="card-title">Barang Temuan</h3>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('import-stok.store') }}" method="POST" class="needs-validation"
                            novalidate>
                            @csrf
                            <input type="text" name="type" value="3" hidden>
                            <input type="text" name="csotype" value="{{$csoType}}" hidden>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-keyboard"></i></span>
                                    </div>
                                    <input type="text" name="temuanname" class="form-control" id="temuanname"
                                        placeholder="Nama Item" required>
                                    {{-- <div class="invalid-feedback">
                                        Nama Item harus diisi
                                    </div> --}}
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-keyboard"></i></span>
                                    </div>
                                    <input type="text" name="temuanheatno" class="form-control" id="temuanheatno"
                                        placeholder="Heat No">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-keyboard"></i></span>
                                    </div>
                                    <input type="text" name="temuandimension" class="form-control"
                                        id="temuandimension" placeholder="Dimensi">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-keyboard"></i></span>
                                    </div>
                                    <input type="text" name="temuancondition" class="form-control"
                                        id="temuancondition" placeholder="Kondisi">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-boxes"></i></span>
                                    </div>
                                    <input type="text" pattern="[0-9]*\.?[0-9]+" name="temuanstok"
                                        class="form-control" id="temuanstok" placeholder="QTY" required>
                                    {{-- <div class="invalid-feedback">
                                        Quantity harus diisi dan berupa angka
                                    </div> --}}
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-ruler-combined"></i></span>
                                    </div>
                                    <input type="text" pattern="[a-zA-Z]+" name="satuan" class="form-control"
                                        id="satuan" placeholder="Satuan" required>
                                    <div class="invalid-feedback">
                                        satuan harus diisi dan berupa huruf
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-boxes"></i></span>
                                    </div>
                                    <input type="text" pattern="[0-9]*\.?[0-9]+" name="temuantonase"
                                        class="form-control" id="temuantonase" placeholder="Tonase" required>
                                    <div class="invalid-feedback">
                                        Tonase harus diisi dan berupa angka
                                    </div>
                                </div>
                            </div>
                            <div class="input-group mb-3">
                                <label class="input-group-text" for="inputGroupSelect01"><i class="bi bi-house-door-fill"></i></label>
                                <select class="form-select" name="gudang" required>
                                    <option value='' selected>Pilih Gudang</option>
                                        @foreach($gdg as $gdg)
                                            <option value="{{ $gdg->gradecode }},{{ $gdg->group }}">
                                                {{ $gdg->description}}-{{$gdg->group}}
                                            </option>
                                        @endforeach
                                </select>
                                {{-- <div class="invalid-feedback">
                                    Pilih Gudang
                                </div> --}}
                            </div>
                            {{-- <div class="col">
                                <div class="d-flex flex-row">
                                    <b class="mt-1 me-2">Pilih Gudang:</b>
                                    <select id="batchSelect" multiple name="gudang[]" placeholder="Daftar Gudang"
                                        data-search="true" data-silent-initial-value-set="true">
                                        @foreach ($warehouse as $wrh)
                                            <option value="{{ $wrh['WhseCode'] }}">{{ $wrh['WhseCode'] }} -
                                                {{ $wrh['Name'] }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div> --}}
                            <button type="reset" class="btn btn-danger" name="reset" title="Kosongkan data"><i
                                    class="fas fa-undo-alt"></i><span class="ps-2">Reset</span></button>
                            <button type="submit" class="btn btn-primary" name="simpan"
                                title="Tambah barang temuan, pastikan pengisian sesuai SOP"><i
                                    class="ion ion-plus"></i><span class="ps-2">Tambah</span></button>
                        </form>
                    </div>
                </div>
                <div class="card text-bg-light">
                    <!-- <div class="card-body "> -->
                    <div class="card-body">
                        <span><i class="fas fa-info mr-2 mb-2"></i> Informasi Barang Temuan</span>
                        <p class="small text-muted"><em>Jika di lapangan ditemukan barang diluar list <strong>Impor
                                    stok</strong>, pastikan barang diinput di form <strong>Barang Temuan</strong> diatas.
                                <br />
                                <span class="text-info">Barang temuan ditandai dengan background warna biru di list
                                    <strong>Impor Stok</strong> </span></em>
                        </p>
                    </div>
                    <!-- </div> -->
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade text-left" id="modalImportItem" tabindex="-1">
        <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="mdlMoreLabel">Data Stok ERP</h1>
                    <button type="button" class="btn-close align-middle" data-bs-dismiss="modal" aria-label="Close">
                    </button>
                </div>
                <div class="modal-body">
                    <div class="d-flex justify-content-between ps-2 mb-2 pe-2 bg-light align-items-center"
                        style="height: 50px">
                        <div class="col-5">
                            <div class="d-flex flex-row">
                                <b class="mt-1 me-2">Gudang:</b>
                                <select id="itemSelect" multiple name="gudang[]" placeholder="Daftar Gudang">
                                    @foreach ($warehouse as $wrh)
                                        <option value="{{ $wrh['WhseCode'] }}">{{ $wrh['WhseCode'] }} -
                                            {{ $wrh['Name'] }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="d-flex flex-row">
                                <b class="mt-1 me-2">Grouping:</b>
                                <select id="groupingSelect" multiple name="grouping[]" placeholder="Daftar Grouping">
                                    @foreach ($groupingItem as $grp)
                                        <option value="{{ $grp['ItemGroupID'] }}">{{ $grp['Name'] }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="d-flex justify-content-between">
                                <form class="" role="search">
                                    <input class="form-control" id="searchItem" type="search" placeholder="Search"
                                        aria-label="Search">
                                </form>
                                <button type="button" id="tarikitem" class="btn btn-primary float-end"
                                    onclick="tarikItem(this)">
                                    Tarik Data
                                </button>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div id="tableItem">
                        @include('admin.penjadwalan.item.table-pull-import')
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade text-left" id="modalImportBatch" tabindex="-1">
        <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="mdlMoreLabel">Data Stok Batch</h1>
                    <button type="button" class="btn-close align-middle" data-bs-dismiss="modal" aria-label="Close">
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row justify-content-between ps-2 mb-2 pe-2 bg-light align-items-center"
                        style="height: 50px">
                        <div class="col">
                            <div class="d-flex flex-row">
                                <b class="mt-1 me-2">Pilih Gudang:</b>
                                <select id="batchSelect" multiple name="gudang[]" placeholder="Daftar Gudang"
                                    data-search="true" data-silent-initial-value-set="true">
                                    @foreach ($warehouse as $wrh)
                                        <option value="{{ $wrh['WhseCode'] }}">{{ $wrh['WhseCode'] }} -
                                            {{ $wrh['Name'] }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col">
                            <div class="d-flex flex-row">
                                <b class="mt-1 me-2">Pilih Gudang:</b>
                                <select id="batchSelect" multiple name="gudang[]" placeholder="Daftar Gudang"
                                    data-search="true" data-silent-initial-value-set="true">
                                    @foreach ($warehouse as $wrh)
                                        <option value="{{ $wrh['WhseCode'] }}">{{ $wrh['WhseCode'] }} -
                                            {{ $wrh['Name'] }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="d-flex justify-content-between">
                                <form class="" role="search">
                                    <input class="form-control" id="searchBatch" type="search" placeholder="Search"
                                        aria-label="Search">
                                </form>
                                <button type="button" id="tarikbatch" class="btn btn-primary float-end"
                                    onclick="tarikBatch(this)">
                                    Tarik Data
                                </button>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div id="tableBatch">
                        @include('admin.penjadwalan.item.table-pull-import-batch')
                    </div>
                </div>
            </div>
        </div>
    </div> 
    
    @include('admin.penjadwalan.script.import-stok')
@endsection
