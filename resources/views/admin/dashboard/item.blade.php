@extends('layouts.master')

@section('title', 'Dashboard Item')

@section('styles')
    <style>
        .modal-90vw {
            max-width: 90vw !important;
        }
    </style>
@endsection

@section('content')

    <div class="container-fluid px-4">
        <div class="row justify-content-between align-items-center my-4">
            <div class="col">
                <h1>Dashboard Item {{ $typecekstok }}</h1>
            </div>
            <input type="text" id="countCsoActive" value="{{ $countCsoActive }}" hidden>
            @if (Auth::user()->level == 1 || Auth::user()->level == 2)
                <div class="col-4">
                    <div class="d-flex justify-content-end">
                        <div class="col align-items-end">
                            <input class=" form-control col-9 text-center bg-dark-subtle float-end" type="text"
                                placeholder="{{ $csodate }}" aria-label="Disabled input example" style="width: 200px"
                                disabled>
                        </div>
                        <div class="col align-items-end">
                            @if ($countCsoActive > 0)
                                <button type="button" onclick="openModalCSO(this,1)" class="btn btn-warning float-end"
                                    value="1" id="buttonTutupCso" @if ($countItemBlmProses > 0) disabled @endif>
                                    <i class="bi bi-stopwatch-fill"></i> Tutup Akses Mobile
                                </button>
                            @elseif ($countCsoEnd > 0)
                                <a href="{{ route('susunan-tim-cso.index', ['val' => $typecekstok]) }}"
                                    class="btn btn-danger float-end" value="2">
                                    <i class="bi bi-stopwatch-fill"></i> Finish {{ $typecekstok }}
                                </a>
                            @else
                                <button type="button" onclick="openModalCSO(this,3)" class="btn btn-primary float-end"
                                    value="3">
                                    <i class="bi bi-stopwatch-fill"></i> Mulai {{ $typecekstok }} Item
                                </button>
                            @endif
                        </div>
                    </div>

                </div>
            @endif

        </div>

        <div class="row" id="banner-item">
            @include('admin.dashboard.banner.banner-item')
        </div>
        <div class="modal fade text-left" id="ModalItemBlmProses" tabindex="-1">
            <div class="modal-dialog modal-90vw modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="mdlMoreLabel">Item Belum Proses</h1>
                        <button type="button" onclick="closeModalBlmProses(this)" class="btn-close align-middle"
                            data-bs-dismiss="modal" aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="{{ route('item.update-grouping-analisator-item', ['typecekstok' => $typecekstok]) }}"
                            method="POST">
                            @csrf
                            <div class="d-flex justify-content-between mb-2">
                                <div class="d-flex">
                                    <div class="me-2">
                                        <button type="submit" class="btn btn-primary"><i class="bi bi-floppy-fill"></i>
                                            Simpan</button>
                                    </div>
                                    <div>
                                        <a
                                            href="{{ route('item.print', ['typecekstok' => $typecekstok, 'status' => 1]) }}"class="btn btn-primary bi bi-printer-fill float-end">
                                            </i>
                                            Cetak</button></a>
                                    </div>
                                </div>
                                <div class="d-flex">
                                    <div class="me-2" style="width: 20vw">
                                        <select class="form-select " id="analisatorItemBlmProses" name="analisator">
                                            <option value="" selected>--Pilih Analisator--</option>
                                            @foreach ($dbxjob as $user)
                                                <option value="{{ $user->userid }}">
                                                    {{ $user->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div>
                                        <button type="button" onclick="setAnalisatorItem(this,'.checkboxitemblmproses','analisatorItemBlmProses',0,'itemBlmProses','checkAllItemBlmProses')"
                                            class="btn btn-primary">Set Analisator</button>
                                    </div>
                                </div>
                                <div style="width: 20vw">
                                    <input class="form-control" id="itemBelumProsesSearch" type="search"
                                        placeholder="Search" aria-label="Search">
                                </div>
                            </div>
                            <div class="ms-4 mb-2">
                                <input class="form-check-input" type="checkbox" id="checkAllItemBlmProses"
                                    onclick="checkAllItem(this,'.checkboxitemblmproses')">
                                <label for="ceksemuaitem" class="form-check-label">
                                    Centang Semua
                                </label>
                            </div>
                            <input type="hidden" name="isSelisih" value="0">
                            <div id="itemBlmProses" style="overflow: auto; max-height: 75vh;">
                                @include('admin.dashboard.table.item.item-belum-proses')
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade text-left" id="ModalItemTrue" tabindex="-1">
            <div class="modal-dialog modal-90vw modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="mdlMoreLabel">Item True</h1>
                        <button type="button" class="btn-close align-middle" data-bs-dismiss="modal"
                            onclick="closeModalTrue(this)" aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="{{ route('item.update-grouping-analisator-item', ['typecekstok' => $typecekstok]) }}"
                            method="POST">
                            @csrf
                            <div class="d-flex justify-content-between mb-2">
                                <div class="d-flex">
                                    <div class="me-2">
                                        <button type="submit" class="btn btn-primary"><i class="bi bi-floppy-fill"></i>
                                            Simpan</button>
                                    </div>
                                    <div>
                                        <a
                                            href="{{ route('item.print', ['typecekstok' => $typecekstok, 'status' => 2]) }}"class="btn btn-primary bi bi-printer-fill float-end">
                                            </i>
                                            Cetak</button></a>
                                    </div>
                                </div>
                                <div class="d-flex">
                                    <div class="me-2" style="width: 20vw">
                                        <select class="form-select " id="analisatorItemTrue" name="analisator">
                                            <option value="" selected>--Pilih Analisator--</option>
                                            @foreach ($dbxjob as $user)
                                                <option value="{{ $user->userid }}">
                                                    {{ $user->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div>
                                        <button type="button" onclick="setAnalisatorItem(this,'.checkboxItemTrue','analisatorItemTrue',1,'itemTrue','checkAllItemTrue')"
                                            class="btn btn-primary">Set Analisator</button>
                                    </div>
                                </div>
                                <div style="width: 20vw">
                                    <input class="form-control" id="itemTrueSearch" type="search"
                                        placeholder="Search" aria-label="Search">
                                </div>
                            </div>
                            <div class="ms-4 mb-2">
                                <input class="form-check-input" type="checkbox" id="checkAllItemTrue"
                                    onclick="checkAllItem(this,'.checkboxItemTrue')">
                                <label for="ceksemuaitem" class="form-check-label">
                                    Centang Semua
                                </label>
                            </div>
                            <input type="hidden" name="isSelisih" value="0">
                            <div id="itemTrue" style="overflow: auto; max-height: 75vh;">
                                @include('admin.dashboard.table.item.item-true')
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade text-left" id="ModalItemOk" tabindex="-1">
            <div class="modal-dialog modal-90vw modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="mdlMoreLabel">Item Ok</h1>
                        <button type="button" class="btn-close align-middle" data-bs-dismiss="modal"
                            onclick="closeModalOk(this)" aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="{{ route('item.update-grouping-analisator-item', ['typecekstok' => $typecekstok]) }}"
                            method="POST">
                            @csrf
                            <div class="d-flex justify-content-between mb-2">
                                <div class="d-flex">
                                    <div class="me-2">
                                        <button type="submit" class="btn btn-primary"><i class="bi bi-floppy-fill"></i>
                                            Simpan</button>
                                    </div>
                                    <div>
                                        <a
                                            href="{{ route('item.print', ['typecekstok' => $typecekstok, 'status' => 3]) }}"class="btn btn-primary bi bi-printer-fill float-end">
                                            </i>
                                            Cetak</button></a>
                                    </div>
                                </div>
                                <div class="d-flex">
                                    <div class="me-2" style="width: 20vw">
                                        <select class="form-select " id="analisatorItemOk" name="analisator">
                                            <option value="" selected>--Pilih Analisator--</option>
                                            @foreach ($dbxjob as $user)
                                                <option value="{{ $user->userid }}">
                                                    {{ $user->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div>
                                        <button type="button" onclick="setAnalisatorItem(this,'.checkboxItemOk','analisatorItemOk',2,'itemOk','checkAllItemOk')"
                                            class="btn btn-primary">Set Analisator</button>
                                    </div>
                                </div>
                                <div style="width: 20vw">
                                    <input class="form-control" id="itemOkSearch" type="search"
                                        placeholder="Search" aria-label="Search">
                                </div>
                            </div>
                            <div class="ms-4 mb-2">
                                <input class="form-check-input" type="checkbox" id="checkAllItemOk"
                                    onclick="checkAllItem(this,'.checkboxItemOk')">
                                <label for="ceksemuaitem" class="form-check-label">
                                    Centang Semua
                                </label>
                            </div>
                            <input type="hidden" name="isSelisih" value="0">
                            <div id="itemOk" style="overflow: auto; max-height: 75vh;">
                                @include('admin.dashboard.table.item.item-ok')
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade text-left" id="ModalItemSelisihNok" tabindex="-1">
            <div class="modal-dialog modal-90vw modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="mdlMoreLabel">Item Selisih NOK</h1>
                        <button type="button" class="btn-close align-middle" data-bs-dismiss="modal"
                            onclick="closeModalNok(this)" aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <form
                            action="{{ route('item.update-grouping-analisator-item', ['typecekstok' => $typecekstok]) }}"
                            method="POST">
                            @csrf
                            <div class="d-flex justify-content-between mb-2">
                                <div class="d-flex">
                                    <div class="me-2">
                                        <button type="submit" class="btn btn-primary"><i class="bi bi-floppy-fill"></i>
                                            Simpan</button>
                                    </div>
                                    <div>
                                        <a
                                        href="{{ route('item.print', ['typecekstok' => $typecekstok, 'status' => 4]) }}"class="btn btn-primary bi bi-printer-fill">
                                        </i>
                                        Cetak</button></a>
                                    </div>
                                </div>
                                <div class="d-flex">
                                    <div class="me-2" style="width: 20vw">
                                        <select class="form-select " id="analisatorItemSelisihNok" name="analisator">
                                            <option value="" selected>--Pilih Analisator--</option>
                                            @foreach ($dbxjob as $user)
                                                <option value="{{ $user->userid }}">
                                                    {{ $user->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div>
                                        <button type="button" onclick="setAnalisatorItem(this,'.checkboxItemSelisihNok','analisatorItemSelisihNok',3,'itemSelisihNok','checkAllItemSelisihNok')"
                                            class="btn btn-primary">Set Analisator</button>
                                    </div>
                                </div>                                
                            </div>
                            <div class="ms-4 mb-2">
                                <input class="form-check-input" type="checkbox" id="checkAllItemSelisihNok"
                                    onclick="checkAllItem(this,'.checkboxItemSelisihNok')">
                                <label for="ceksemuaitem" class="form-check-label">
                                    Centang Semua
                                </label>
                            </div>
                            
                            <input type="hidden" name="isSelisih" value="1">
                            <div id="itemSelisihNok" style="overflow: auto; max-height: 75vh;">
                                @include('admin.dashboard.table.item.item-nok')
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade text-left" id="ModalItemSelisihFalse" tabindex="-1">
            <div class="modal-dialog modal-90vw modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="mdlMoreLabel">Item Selisih False</h1>
                        <button type="button" class="btn-close align-middle" data-bs-dismiss="modal"
                            onclick="closeModalFalse(this)" aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <form
                            action="{{ route('item.update-grouping-analisator-item', ['typecekstok' => $typecekstok]) }}"
                            method="POST">
                            @csrf
                            <div class="d-flex justify-content-between mb-2">
                                <div class="d-flex">
                                    <div class="me-2">
                                        <button type="submit" class="btn btn-primary"><i class="bi bi-floppy-fill"></i>
                                            Simpan</button>
                                    </div>
                                    <div>
                                        <a
                                        href="{{ route('item.print', ['typecekstok' => $typecekstok, 'status' => 5]) }}"class="btn btn-primary bi bi-printer-fill">
                                        </i>
                                        Cetak</button></a>
                                    </div>
                                </div>
                                <div class="d-flex">
                                    <div class="me-2" style="width: 20vw">
                                        <select class="form-select " id="analisatorItemSelisihFalse" name="analisator">
                                            <option value="" selected>--Pilih Analisator--</option>
                                            @foreach ($dbxjob as $user)
                                                <option value="{{ $user->userid }}">
                                                    {{ $user->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div>
                                        <button type="button" onclick="setAnalisatorItem(this,'.checkboxItemSelisihFalse','analisatorItemSelisihFalse',4,'itemSelisihFalse','checkAllItemSelisihFalse')"
                                            class="btn btn-primary">Set Analisator</button>
                                    </div>
                                </div>                                
                            </div>
                            <div class="ms-4 mb-2">
                                <input class="form-check-input" type="checkbox" id="checkAllItemSelisihFalse"
                                    onclick="checkAllItem(this,'.checkboxItemSelisihFalse')">
                                <label for="ceksemuaitem" class="form-check-label">
                                    Centang Semua
                                </label>
                            </div>
                            
                            <input type="hidden" name="isSelisih" value="1">
                            <div id="itemSelisihFalse" style="overflow: auto; max-height: 75vh;">
                                @include('admin.dashboard.table.item.item-false')
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        {{-- <div class="modal fade text-left" id="ModalItemSelisih" tabindex="-1">
            <div class="modal-dialog modal-90vw modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="mdlMoreLabel">Item Selisih</h1>
                        <button type="button" class="btn-close align-middle" data-bs-dismiss="modal"
                            onclick="closeModalSelisih(this)" aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <form
                            action="{{ route('item.update-grouping-analisator-item', ['typecekstok' => $typecekstok]) }}"
                            method="POST">
                            @csrf
                            <div class="d-flex justify-content-between mb-2">
                                <div class="d-flex">
                                    <div class="me-2">
                                        <button type="submit" class="btn btn-primary"><i class="bi bi-floppy-fill"></i>
                                            Simpan</button>
                                    </div>
                                    <div>
                                        <a
                                        href="{{ route('item.print', ['typecekstok' => $typecekstok, 'status' => 4]) }}"class="btn btn-primary bi bi-printer-fill">
                                        </i>
                                        Cetak</button></a>
                                    </div>
                                </div>
                                <div class="d-flex">
                                    <div class="me-2" style="width: 20vw">
                                        <select class="form-select " id="analisatorItemSelisih" name="analisator">
                                            <option value="" selected>--Pilih Analisator--</option>
                                            @foreach ($dbxjob as $user)
                                                <option value="{{ $user->userid }}">
                                                    {{ $user->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div>
                                        <button type="button" onclick="setAnalisatorItem(this,'.checkboxitemselisih','analisatorItemSelisih',2,'itemSelisih','checkAllItemSelisih')"
                                            class="btn btn-primary">Set Analisator</button>
                                    </div>
                                </div>                                
                            </div>
                            <div class="ms-4 mb-2">
                                <input class="form-check-input" type="checkbox" id="checkAllItemSelisih"
                                    onclick="checkAllItem(this,'.checkboxitemselisih')">
                                <label for="ceksemuaitem" class="form-check-label">
                                    Centang Semua
                                </label>
                            </div>
                            
                            <input type="hidden" name="isSelisih" value="1">
                            <div id="itemSelisih" style="overflow: auto; max-height: 75vh;">
                                @include('admin.dashboard.table.item.item-nok')
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div> --}}

        <div class="card mt-2">
            <div class="card-header">
                <div class="row justify-content-between mt-2 ms-4 me-3">
                    <div class="col">
                        <h3 class="card-title">Hasil Stock Opname</h3>
                    </div>
                    <div class="col-4 float-end">
                        <form class="" role="search">
                            <input class="form-control" id="searchModItem" type="search" placeholder="Search"
                                aria-label="Search" value='{{ $search }}'>
                        </form>
                    </div>
                </div>
            </div>
            <div class="card-body" id="main-table-item" style="overflow: auto">
                @include('admin.dashboard.table.item.main-table-item')
            </div>
        </div>
    </div>

    <div class="modal fade text-left" id="ModalCSO" tabindex="-1">
        <div class="modal-dialog modal modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="modalHeader"></h1>
                </div>
                <div class="modal-body">
                    <form id="modalActionCSO" action="" method="POST" class="needs-validation" novalidate>
                        @csrf
                        @if ($countCsoActive > 0)
                            @method('PUT')
                        @elseif ($countCsoEnd > 0)
                            @method('DELETE')
                        @endif
                        <p id="warning"></p>
                        <input type="text" name="typecekstok" value="{{ $typecekstok }}" hidden>
                        <button type="submit" class="btn btn-danger" name="simpan"><i
                                class="bx bxs-save"></i>Iya</button>
                        <button type="button" onclick="closeModalCSO(this)" class="btn btn-primary" name="simpan" value='ModalCSO'><i
                                class="bx bxs-save"></i>Batal</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade text-left" id="ModalAlertAnalisator" tabindex="-1">
        <div class="modal-dialog modal modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header" style="color:red;text-align:center;margin: 0 auto;">
                    <h1 class="modal-title fs-5" id="modalHeader" >Belum ada Analisator!</h1>
                </div>
                <div class="modal-body">
                    <div class="row px-3" style="text-align: center;">
                        <button type="button" onclick="closeModalCSO(this)" class="btn btn-danger" name="simpan" value='ModalAlertAnalisator'><i
                                class="bx bxs-save"></i>Batal</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade text-left" id="ModalDetailCso" tabindex="-1">
        <form id="formSubmitCso" action="" method="POST">
            @csrf
            <div class="modal-dialog modal-90vw modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-secondary text-white">
                        <h1 class="modal-title fs-5" id="detailCsoHeader"></h1>
                        <button type="button" class="btn-close btn-close-white align-middle" data-bs-dismiss="modal"
                            aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="d-flex mb-2">
                            <div style="width: 60%; max-height: 68.7vh; margin-right: 1%; overflow-y: auto; overflow-x: hidden;"
                                id="detailCso">
                                <table class="table table-sm table-bordered small mb-3 text-center">
                                    <thead class="table-secondary">
                                        <tr>
                                            <th scope="col">Heat Number</th>
                                            <th scope="col">Dimension</th>
                                            <th scope="col">Tolerance</th>
                                            <th scope="col">Condition</th>
                                        </tr>

                                    </thead>
                                    <tbody>
                                        <tr>
                                        </tr>
                                    </tbody>
                                </table>
                                <div id="warning" class="alert alert-warning d-none"></div>
                                <input type="text" name="itemid" class="d-none" value="">

                                <div class="row g-3 mb-3">
                                    <div class="form-floating col">
                                        <input class="form-control text-center bg-primary shadow-sm" value=""
                                            id="onHand" type="text" readonly>
                                        <label class="fw-bold" for="onHand">On Hand</label>
                                    </div>
                                    <div class="form-floating col">
                                        <input class="form-control text-center bg-warning shadow-sm" value=""
                                            type="text" readonly>
                                        <label class="fw-bold">Qty CSO</label>
                                    </div>
                                    <div class="form-floating col">
                                        <input class="form-control text-center bg-danger shadow-sm" value=""
                                            type="text" readonly>
                                        <label class="fw-bold" for="vselisih">Selisih</label>
                                    </div>
                                    <div class="form-floating col">
                                        <input class="form-control text-center shadow-sm" name="koreksi" value=""
                                            type="number" step="0.01">
                                        <label class="fw-bold" for="vkoreksi">Input Koreksi</label>
                                    </div>
                                    <div class="form-floating col">
                                        <input class="form-control text-center shadow-sm" name="deviasi" value=""
                                            type="number" step="0.01">
                                        <label class="fw-bold" for="vdeviasi">Input Deviasi</label>
                                    </div>
                                </div>
                                <div id="tbldetail">
                                    <table
                                        class="table table-sm table-hover table-bordered table-responsive-md small shadow-sm">
                                        <thead class="table-secondary">
                                            <tr>
                                                <th scope="col">No</th>
                                                <th scope="col">Pencatat</th>
                                                <th scope="col">Lokasi</th>
                                                <th scope="col">Color</th>
                                                <th scope="col">Qty/lokasi</th>
                                                <th scope="col">CSO ke-</th>
                                                <th scope="col">Remark</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="row mb-2">
                                    <div class="col-7">
                                        <table
                                            class="table table-sm table-responsive-md table-hover table-bordered shadow-sm small">
                                            <thead class="table-secondary">
                                                <tr>
                                                    <th scope="col">Pencatat</th>
                                                    <th scope="col">CSO 1</th>
                                                    <th scope="col">CSO 2</th>
                                                    <th scope="col">CSO 3</th>
                                                    <th scope="col">CSO 4</th>
                                                </tr>
                                            </thead>
                                            <tbody>


                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="col-2">
                                        <button type="button" name="csoorder" class="btn btn-info mb-3">CSO
                                            Ulang</button>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="checkkesalahanadmin"
                                                name="check_kesalahan_admin">
                                            <label class="form-check-label small" for="checkkesalahanadmin">
                                                Kesalahan Admin
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-3 small">
                                        <div class="w-100 mb-2">
                                            <label class="input-group-text small">Analisator</label>
                                            <select class="form-select form-select-sm" id="" name="analisator"
                                                @if (Auth::user()->level != 1 && Auth::user()->level != 2) disabled @endif>

                                            </select>
                                        </div>
                                        <div class="w-100 mb-2">
                                            <label class="input-group-text small">Grouping</label>
                                            <select class="form-select form-select-sm" id="" name="grouping">

                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="">
                                    <label for="vketerangan" class="input-group-text">Keterangan Koreksi</label>
                                    <textarea class="form-control form-control-sm" name="keterangan" id="vketerangan"></textarea>
                                </div>
                            </div>
                            <div style="border-left:1px solid #ccccccb6;display: block;overflow: auto;"></div>
                            {{-- <div style="width: 40%; margin-left: 1%" id="historyTransaksi">
                                <h5>History Transaksi</h5>
                                <div class="d-flex justify-content-between mt-1">
                                    <div class="d-flex justify-content-start align-items-center">
                                        <label style="font-size: 10pt">Tgl dari:</label>
                                        <input class="form-control ms-2" style="max-width: 70%; max-height: 70%;"
                                            type="date" placeholder="Tanggal Mulai" id="startdatepicker">
                                    </div>
                                    <div class="d-flex justify-content-end align-items-center">
                                        <label style="font-size: 10pt">sampai:</label>
                                        <input class="form-control ms-2" style="max-width: 70%; max-height: 70%;"
                                            type="date" placeholder="Tanggal Selesai" id="enddatepicker">
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <div class="d-flex justify-content-start align-items-center" style="width: 65%;">
                                        <label for="warehouseCode" style="font-size: 10pt">Wrh:</label>
                                        <select name="warehouse" id="warehouseCode" class=" ms-2" style="width: 100%;">
                                            @foreach ($warehouse as $wrh)
                                                <option value="{{ $wrh['WhseCode'] }}">{{ $wrh['WhseCode'] }} -
                                                    {{ $wrh['Name'] }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="d-flex align-items-center" style="width: 30%;">
                                        <label for="tipeSelect" style="font-size: 10pt">Tipe Doc:</label>
                                        <select name="tipe" id="tipeSelect" class="ms-2" style="width: 40%">
                                            <option value="SJ">SJ</option>
                                            <option value="GRPO">GRPO</option>
                                            <option value="TR">TR</option>
                                            <option value="SR">SR</option>
                                            <option value="GR">GR</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <label id="quantityData" style="font-size: 10pt">Total Qty: 0</label>
                                    </div>
                                    <div>
                                        <label id="openBalanceData" style="font-size: 10pt">Open Balance: 0</label>
                                    </div>
                                    <div>
                                        <label id="endBalanceData" style="font-size: 10pt">End Balance: 0</label>
                                    </div>
                                    <div class="mt-1">
                                        <button type="button" id="buttonCari" class="btn btn-success text-light"
                                            onclick=""
                                            style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;"><i
                                                class="bi bi-search"></i> Cari</button>
                                    </div>
                                </div>
                                <div class="mt-1" style="overflow-y: auto; max-height: 49.5vh; overflow-x: hidden;">
                                    <table style="max-width: 34vw;"
                                        class="table table-sm table-hover table-striped table-bordered text-nowrap"
                                        id="tabel-transaksi">
                                        <thead class="table-dark"
                                            style="position: -webkit-sticky;position: sticky;top: 0;">
                                            <tr class="text-center" style="font-size: 9.5pt">
                                                <th class="align-middle">No</th>
                                                <th class="align-middle">Dokumen</th>
                                                <th class="align-middle">Tgl</th>
                                                <th class="align-middle">Whs</th>
                                                <th class="align-middle">Qty</th>
                                                <th class="align-middle">UOM</th>
                                                <th class="align-middle">End<br>Balance</th>
                                            </tr>
                                        </thead>
                                        <tbody class="small" style="font-size: 8.5pt">

                                        </tbody>
                                    </table>
                                </div>
                            </div> --}}
                        </div>

                    </div>
                    <div class="modal-footer">
                        <input type="text" name="typecekstok" value="{{ $typecekstok }}" hidden> 
                        <input type="text" name="searchCSO" value="" hidden>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                        <button id="buttonSubmit" type="button" class="btn btn-primary">Simpan</button>
                    </div>
                </div>
            </div>
        </form>

    </div>

    <div class="modal fade text-left" id="ModalCsoUlang" tabindex="-1">
        <div class="modal-dialog modal modal-dialog-centered" role="document">
            <div class="modal-content">
                {{-- <form method="POST" action="{{ route('item.cso-ulang') }}"> --}}
                    {{-- @csrf --}}
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="mdlMoreLabel">Keterangan CSO Ulang</h1>
                        <button type="button" onclick="closeModalCsoUlang(this)" class="btn-close align-middle"
                            data-bs-dismiss="modal" aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        @foreach ($keteranganCSOUlang as $keterangan)
                            <div class="form-check">
                                <input type="checkbox"
                                    class="form-check-input" name="checkboxketerangan" value="{{ $keterangan->keteranganid }}">
                                {{-- <input class="form-check-input" type="radio" name="keteranganCsoUlang" value="{{$keterangan->keteranganid}}"> --}}
                                <label class="form-check-label">
                                    {{ $keterangan->keterangan }}
                                </label>
                            </div>
                            {{-- <input type="radio" name="keteranganCsoUlang" value="HTML"> --}}
                            {{-- <p>{{$keterangan->keteranganid}}</p> --}}
                        @endforeach
                    </div>
                    <div class="modal-footer">
                        <div class="float-end d-flex">
                            {{-- <button type="submit" class="btn btn-primary float-end">Submit</button> --}}
                            <button type="button" class="btn btn-primary float-end" onclick="csoUlang()">Submit</button>
                            <button type="button" class="ms-2 btn btn-danger float-end"
                                onclick="closeModalCsoUlang(this)">Keluar</button>
                        </div>
                    </div>
                {{-- </form> --}}
            </div>
        </div>
    </div>

    @include('admin.dashboard.script.detail-cso-item')
    @include('admin.dashboard.script.table-cso-item')
    @include('admin.dashboard.script.banner-cso-item')
    <script>
        // var intervalItemBlmProses = undefined;
        // var intervalItemOk = undefined;
        // var intervalItemSelisih = undefined;
        var intervalCheckItemBlmProses = undefined;
        var buttonTutupCso = document.getElementById('buttonTutupCso');
        
        var links = document.querySelectorAll('.filterItem');

        // $(document).scroll(function(){
        //     $(".sticky-header").floatThead({ scrollingTop: 0 })
        // });  

        // flatpickr('#startdatepicker', {});
        // flatpickr('#enddatepicker', {});

        // function cariHistoryTransaksi(itemId) {
        //     showHistoryTransaksi(
        //         itemId,
        //         document.getElementById('tipeSelect').value,
        //         document.getElementById('warehouseCode').value.toString(),
        //         `${document.getElementById('startdatepicker').value},${document.getElementById('enddatepicker').value}`
        //     );
        // }

        // function showHistoryTransaksi(itemId, tipe, warehouse, tanggal) {
        //     const tabelTransaksi = $('#tabel-transaksi').DataTable({
        //         ajax: {
        //             url: "{{ route('item.history-transaksi') }}",
        //             type: 'POST',
        //             data: {
        //                 itemid: itemId,
        //                 tipe: tipe,
        //                 warehouse: warehouse,
        //                 tanggal: tanggal

        //             },
        //             headers: {
        //                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        //             },
        //         },
        //         columnDefs: [{
        //             searchable: false
        //         }],
        //         // fixedHeader: true,
        //         searching: false,
        //         paging: false,
        //         bDestroy: true,
        //         serverSide: true,
        //         processing: true,
        //         order: [],
        //         pageLength: 20,
        //         lengthMenu: [5, 10, 15, 20],
        //         columns: [{
        //                 data: 'DT_RowIndex'
        //             },
        //             {
        //                 data: 'docnum'
        //             },
        //             {
        //                 data: 'PostingDate'
        //             },
        //             {
        //                 data: 'WhseCode',
        //                 render: function(data, type, row, meta) {
        //                     return `
        //                         <div class="font-weight-bolder">${ data }</div>
        //                         <div class="text-muted">${ row.whsename }</div>
        //                     `;
        //                 }
        //             },
        //             {
        //                 data: 'Quantity',
        //             },
        //             {
        //                 data: 'uom'
        //             },
        //             {
        //                 data: 'endbal'
        //             },
        //         ],
        //         fnDrawCallback: function() {
        //             document.getElementById("quantityData").innerText =
        //                 `Total Qty: ${this.api().column( 4, {page:'current'} ).data().sum()}`;
        //             document.getElementById("openBalanceData").innerText =
        //                 `Open Balance: ${this.api().row(0).data().openbal}`;
        //             document.getElementById("endBalanceData").innerText =
        //                 `End Balance: ${this.api().row(':last-child').data().endbal}`;
        //         }
        //     });
        // }

        if ($('#countCsoActive').val() == 1) {
            setInterval(function(event) {
                $.ajax({
                    url: "{{ url('admin/dashboard/check-item') }}",
                    type: 'GET',

                    success: function(data) {
                        const t = Object.keys(data);
                        const csocss =  t.filter(e => String(e) == typecekstok.toLowerCase())
                        // console.log(data[csocss])
                        if (data[csocss] > 0) {
                            buttonTutupCso.disabled = true;
                        } else {
                            buttonTutupCso.disabled = false;
                        }
                    }
                });
            }, 10000);
        } else {
            if (typeof myTimeout != undefined) clearTimeout(intervalCheckItemBlmProses);
        }

        function openModalCSO(button, type) {            
            if (type == 1) {

                // if( countAnalisator > 0 )
                // {
                    $('#ModalCSO').modal('show');
                    document.getElementById("modalHeader").innerText = `Menghentikan {{ $typecekstok }}`;
                    document.getElementById("warning").innerText =
                    `Apakah anda yakin akan menghentikan proses penghitungan cek stok item?`;
                    $('#modalActionCSO').attr('action', `{{ route('item.update', 'item') }}`);
                // }
                // else
                // {
                //     $('#ModalAlertAnalisator').modal('show');
                // }
            } else {
                $('#ModalCSO').modal('show');
                document.getElementById("modalHeader").innerText = `Memulai {{ $typecekstok }}`;
                document.getElementById("warning").innerText = `Apakah anda yakin akan memulai cek stok item?`;
                $('#modalActionCSO').attr('action', `{{ route('item.store') }}`);
            }
        }

        function closeModalCSO(button) {
            $('#'+button.getAttribute('value')).modal('hide');
        }

    </script>
@endsection
