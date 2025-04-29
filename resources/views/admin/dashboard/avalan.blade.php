@extends('layouts.master')

@section('title', 'Dashboard Avalan')

@section('styles')
<style>
    .modal-90vw { max-width: 90vw !important; }
</style>    
@endsection

@section('content')

    <div class="container-fluid px-4">
        <div class="row justify-content-between align-items-center my-4">
            <div class="col">
                <h1>Dashboard Avalan</h1>
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
                                    value="1" id="buttonTutupCso" @if ($countCsoActive > 0) disabled @endif>
                                    <i class="bi bi-stopwatch-fill"></i> Tutup Akses Mobile
                                </button>
                            @elseif ($countCsoEnd > 0)
                                <a href="{{ route('susunan-tim-cso-avalan.index') }}" class="btn btn-danger float-end"
                                    value="2">
                                    <i class="bi bi-stopwatch-fill"></i> Finish CSO
                                </a>
                            @else
                                <button type="button" onclick="openModalCSO(this,3)" class="btn btn-primary float-end"
                                    value="3">
                                    <i class="bi bi-stopwatch-fill"></i> Mulai CSO Avalan
                                </button>
                            @endif
                        </div>
                    </div>

                </div>
            @endif

        </div>
        <div class="row" id="banner-avalan">
            @include('admin.dashboard.banner.banner-avalan')
        </div>
        <div class="card mt-2">
            <div class="card-header">
                <div class="row justify-content-between pt-2 ps-4 pe-3">
                    <div class="col">
                        <h3 class="card-title">Hasil Stock Opname</h3>
                    </div>
                    <div class="col-3">
                        <form class="d-flex" role="search">
                            <input class="form-control me-2" id="searchModItem" type="search" placeholder="Search"
                                aria-label="Search">
                        </form>
                    </div>
                </div>

                <div class="card-body" id="main-table-avalan">
                    @include('admin.dashboard.table.avalan.main-table-avalan')
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade text-left" id="ModalAvalanBlmProses" tabindex="-1">
        <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="mdlMoreLabel">Avalan Belum Proses</h1>
                    <button type="button" onclick="closeModalBlmProses(this)" class="btn-close align-middle"
                        data-bs-dismiss="modal" aria-label="Close">
                    </button>
                </div>

                <div class="modal-body">
                    <form action="{{ route('avalan.update-grouping-analisator-avalan') }}" method="POST">
                        @csrf
                        <div class="row justify-content-between mb-2">
                            <div class="col-1">
                                <button type="submit" class="btn btn-primary"><i class="bi bi-floppy-fill"></i>
                                    Simpan</button>
                            </div>
                            <div class="col-1 me-3">
                                <a
                                    href="{{ url('admin/dashboard/print-avalan/1') }}"class="btn btn-primary bi bi-printer-fill">
                                    </i>
                                    Cetak</button></a>
                            </div>
                        </div>
                        <input type="hidden" name="isSelisih" value="1">
                        <div id="avalanBlmProses">
                            @include('admin.dashboard.table.avalan.avalan-belum-proses')
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade text-left" id="ModalAvalanOk" tabindex="-1">
        <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="mdlMoreLabel">Avalan Selesai</h1>
                    <button type="button" onclick="closeModalOk(this)" class="btn-close align-middle"
                        data-bs-dismiss="modal" aria-label="Close">
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{ route('avalan.update-grouping-analisator-avalan') }}" method="POST">
                        @csrf
                        <div class="row justify-content-between mb-2">
                            <div class="col-1">
                                <button type="submit" class="btn btn-primary"><i class="bi bi-floppy-fill"></i>
                                    Simpan</button>
                            </div>
                            <div class="col-1 me-3">
                                <a
                                    href="{{ url('admin/dashboard/print-avalan/3') }}"class="btn btn-primary bi bi-printer-fill">
                                    </i>
                                    Cetak</button></a>
                            </div>
                        </div>
                        <input type="hidden" name="isSelisih" value="1">
                        <div id="avalanOk">
                            @include('admin.dashboard.table.avalan.avalan-ok')
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade text-left" id="ModalAvalanSelisih" tabindex="-1">
        <div class="modal-dialog modal-xl  modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="mdlMoreLabel">Avalan Selisih</h1>
                    <button type="button" onclick="closeModalSelisih(this)" class="btn-close align-middle"
                        data-bs-dismiss="modal" aria-label="Close">
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{ route('avalan.update-grouping-analisator-avalan') }}" method="POST">
                        @csrf
                        <div class="row justify-content-between mb-2">
                            <div class="col-1">
                                <button type="submit" class="btn btn-primary"><i class="bi bi-floppy-fill"></i>
                                    Simpan</button>
                            </div>
                            <div class="col-1 me-3">
                                <a
                                    href="{{ url('admin/dashboard/print-avalan/4') }}"class="btn btn-primary bi bi-printer-fill">
                                    </i>
                                    Cetak</button></a>
                            </div>
                        </div>
                        <input type="hidden" name="isSelisih" value="1">
                        <div id="avalanSelisih">
                            @include('admin.dashboard.table.avalan.avalan-selisih')
                        </div>
                    </form>
                </div>
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
                        <button type="submit" class="btn btn-danger" name="simpan"><i
                                class="bx bxs-save"></i>Iya</button>
                        <button type="button" onclick="closeModalCSO(this)" class="btn btn-primary" name="simpan"><i
                                class="bx bxs-save"></i>Batal</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade text-left" id="ModalDetailCsoAvalan" tabindex="-1">
        <form id="formSubmitCso" action="{{ route('avalan.update-cso') }}" method="POST">
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
                            <div style="width: 58%; margin-right: 1%" id="detailCsoAvalan">
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
                                            type="number">
                                        <label class="fw-bold" for="vkoreksi">Input Koreksi</label>
                                    </div>
                                    <div class="form-floating col">
                                        <input class="form-control text-center shadow-sm" name="deviasi" value=""
                                            type="number">
                                        <label class="fw-bold" for="vdeviasi">Input Deviasi</label>
                                    </div>
                                </div>
                                <div id="tbldetail">
                                    <table
                                        class="table table-sm table-hover table-bordered table-responsive-md small shadow-sm">
                                        <thead class="table-secondary">
                                            <tr>
                                                <th scope="col">No</th>
                                                <th scope="col">Pelaku</th>
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
                                                    <th scope="col">Pelaku</th>
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
                                        <button type="button" id="csoorder" name="csoorder"
                                            class="btn btn-info mb-3">CSO
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
                            <div style="width: 40%; margin-left: 1%" id="historyTransaksi">
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
                                    <div class="d-flex justify-content-start align-items-center" style="width: 50%;">
                                        <label for="warehouseCode" style="font-size: 10pt">Warehouse:</label>
                                        <select name="warehouse" id="warehouseCode" class=" ms-2" style="width: 80%;">
                                            @foreach ($warehouse as $wrh)
                                                <option value="{{ $wrh['WhseCode'] }}">{{ $wrh['WhseCode'] }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="d-flex justify-content-end align-items-center" style="width: 50%;">
                                        <label for="tipeSelect" style="font-size: 10pt">Tipe Dokumen:</label>
                                        <select name="tipe" id="tipeSelect" class="ms-2" style="width: 30%">
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
                                <div class="mt-1" style="overflow-y: auto; max-height: 39vh; overflow-x: hidden;">
                                    <table style="max-width: 34vw"
                                        class="table table-sm table-hover table-striped table-bordered text-nowrap"
                                        id="tabel-transaksi">
                                        <thead class="table-dark" style="position: -webkit-sticky;position: sticky;top: 0;">
                                            <tr class="text-center" style="font-size: 9.5pt">
                                                <th class="align-middle">No</th>
                                                <th class="align-middle">Dokumen</th>
                                                <th class="align-middle">Tgl</th>
                                                <th class="align-middle">Whs</th>
                                                <th class="align-middle">Qty</th>
                                                <th class="align-middle">UOM</th>
                                                <th>End<br>Balance</th>
                                            </tr>
                                        </thead>
                                        <tbody class="small" style="font-size: 9pt">

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                        <button id="buttonSubmit" type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <div class="modal fade text-left" id="ModalCsoUlang" tabindex="-1">
        <div class="modal-dialog modal modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="mdlMoreLabel">Keterangan CSO Ulang</h1>
                    <button type="button" onclick="closeModalCsoUlang(this)" class="btn-close align-middle"
                        data-bs-dismiss="modal" aria-label="Close">
                    </button>
                </div>
                <div class="modal-body">
                    <input type="text" class="form-control" id="keteranganCsoUlang" required>
                </div>
                <div class="modal-footer">
                    <div class="float-end d-flex">
                        <button type="button" class="btn btn-primary float-end" onclick="csoUlang()">Submit</button>
                        <button type="button" class="ms-2 btn btn-danger float-end"
                            onclick="closeModalCsoUlang(this)">Keluar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        var intervalAvalanBlmProses = undefined;
        var intervalAvalanOk = undefined;
        var intervalAvalanSelisih = undefined;
        var intervalCheckItemBlmProses = undefined;
        var buttonTutupCso = document.getElementById('buttonTutupCso');

        document.getElementById("warehouseCode").selectedIndex = -1;
        VirtualSelect.init({
            ele: '#warehouseCode',
            maxWidth: '80%',
            placeholder: "Kode Gudang",
            search: true
        });

        document.getElementById("tipeSelect").selectedIndex = -1;
        VirtualSelect.init({
            ele: '#tipeSelect',
            maxWidth: '50%',
            placeholder: "Tipe Dokumen"
        });

        flatpickr('#startdatepicker', {});
        flatpickr('#enddatepicker', {});

        function cariHistoryTransaksi(itemId) {
            showHistoryTransaksi(
                itemId,
                document.getElementById('tipeSelect').value,
                document.getElementById('warehouseCode').value.toString(),
                `${document.getElementById('startdatepicker').value},${document.getElementById('enddatepicker').value}`
            );
        }

        function showHistoryTransaksi(itemId, tipe, warehouse, tanggal) {
            const tabelTransaksi = $('#tabel-transaksi').DataTable({
                ajax: {
                    url: "{{ route('item.history-transaksi') }}",
                    type: 'POST',
                    data: {
                        itemid: itemId,
                        tipe: tipe,
                        warehouse: warehouse
                    },
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                },
                columnDefs: [{
                    searchable: false
                }],
                searching: false,
                paging: false,
                bDestroy: true,
                serverSide: true,
                processing: true,
                order: [],
                pageLength: 20,
                lengthMenu: [5, 10, 15, 20],
                columns: [{
                        data: 'DT_RowIndex'
                    },
                    {
                        data: 'docnum'
                    },
                    {
                        data: 'PostingDate'
                    },
                    {
                        data: 'WhseCode',
                        render: function(data, type, row, meta) {
                            return `
                                <div class="font-weight-bolder">${ data }</div>
                                <div class="text-muted">${ row.whsename }</div>
                            `;
                        }
                    },
                    {
                        data: 'Quantity',
                    },
                    {
                        data: 'uom'
                    },
                    {
                        data: 'endbal'
                    },
                ],
                fnDrawCallback: function() {
                    document.getElementById("quantityData").innerText =
                        `Total Qty: ${this.api().column( 4, {page:'current'} ).data().sum()}`;
                    document.getElementById("openBalanceData").innerText =
                        `Open Balance: ${this.api().row(0).data().openbal}`;
                    document.getElementById("endBalanceData").innerText =
                        `End Balance: ${this.api().row(':last-child').data().endbal}`;
                }
            });
        }

        if ($('#countCsoActive').val() == 1) {
            setInterval(function(event) {
                $.ajax({
                    url: "{{ url('admin/dashboard/check-avalan') }}",
                    type: 'GET',

                    success: function(data) {
                        if (data['data']) {
                            buttonTutupCso.disabled = true;
                        } else {
                            buttonTutupCso.disabled = false;
                        }
                    }
                });
            }, 1000);
        } else {
            if (typeof myTimeout != undefined) clearTimeout(intervalCheckItemBlmProses);
        }

        setInterval(function(event) {
            var searchValue = $("#searchModItem").val();
            $.ajax({
                url: "{{ url('admin/dashboard/main-table-avalan') }}",
                type: 'POST',
                data: {
                    search: searchValue
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(data) {
                    $('#main-table-avalan').html(data);
                }
            });

        }, 1000);

        setInterval(function(event) {
            $.ajax({
                url: "{{ url('admin/dashboard/banner-avalan') }}",
                type: 'GET',
                success: function(data) {
                    $('#banner-avalan').html(data);
                }
            });
        }, 1000);

        function openModalDetailCSOAvalan(button) {
            const row = $(button).closest('tr');
            const itemBatchId = row.find('td:nth-child(1)').text();
            const batchId = row.find('td:nth-child(2)').text();
            const itemName = row.find('td:nth-child(3)').text();
            document.getElementById("detailCsoHeader").innerText =
                `DETAIL ${itemName.replace(/(\r\n|\n|\r)/gm, '')} - ${batchId.replace(/(\r\n|\n|\r)/gm, '')}`;

            $.ajax({
                url: "{{ route('avalan.detail-cso') }}",
                type: 'POST',
                data: {
                    itembatchid: itemBatchId.replace(/\s/g, '')
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(data) {
                    $('#detailCsoAvalan').html(data);
                    // $('#formSubmitCso').attr('action', `{{ route('avalan.update-cso') }}`);
                    $("#buttonSubmit").attr('type', 'submit');
                    $("#buttonCari").attr('onclick', `cariHistoryTransaksi(${itemBatchId})`);
                    showHistoryTransaksi(itemBatchId, "", "", "");
                    // console.log(response.data.itemid);
                    // console.log(data);
                },
                error: function() {
                    alert("Error");
                    // Handle error cases if necessary
                    // Swal.fire({
                    //     icon: "error",
                    //     title: "Oops...",
                    //     text: "Tidak terdapat item pada gudang tersebut",
                    // });
                }

            });
            $('#ModalDetailCsoAvalan').modal('show');
        }

        function openModalCSO(button, type) {
            $('#ModalCSO').modal('show');
            if (type == 1) {
                document.getElementById("modalHeader").innerText = `Menghentikan CSO`;
                document.getElementById("warning").innerText =
                    `Apakah anda yakin akan menghentikan proses penghitungan cek stok avalan?`;
                $('#modalActionCSO').attr('action', `{{ route('avalan.update', 'item') }}`);
            } else {
                document.getElementById("modalHeader").innerText = `Memulai CSO`;
                document.getElementById("warning").innerText = `Apakah anda yakin akan memulai cek stok avalan?`;
                $('#modalActionCSO').attr('action', `{{ route('avalan.store') }}`);
            }
        }


        function openModalBlmProses(button) {
            $('#ModalAvalanBlmProses').modal('show');
            intervalAvalanBlmProses = setInterval(function() {
                $.ajax({
                    url: "{{ url('admin/dashboard/banner-avalan/1') }}",
                    type: 'GET',
                    success: function(data) {
                        $('#itemBlmProses').html(data);
                        console.log(data);

                    }
                });
            }, 1000);
        }

        function closeModalBlmProses(button) {
            if (typeof myTimeout != undefined) clearTimeout(intervalAvalanBlmProses);
            $('#ModalAvalanBlmProses').modal('hide');
        }

        function openModalOk(button) {
            $('#ModalAvalanOk').modal('show');
            intervalAvalanOk = setInterval(function() {
                $.ajax({
                    url: "{{ url('admin/dashboard/banner-avalan/3') }}",
                    type: 'GET',
                    success: function(data) {
                        $('#itemOk').html(data);
                        console.log(data);
                    }
                });
            }, 1000);
        }

        function closeModalOk(button) {
            if (typeof myTimeout != undefined) clearTimeout(intervalAvalanOk);
            $('#ModalAvalanOk').modal('hide');
        }

        function openModalSelisih(button) {
            $('#ModalAvalanSelisih').modal('show');
            intervalAvalanSelisih = setInterval(function() {
                $.ajax({
                    url: "{{ url('admin/dashboard/banner-avalan/4') }}",
                    type: 'GET',
                    success: function(data) {
                        $('#itemSelisih').html(data);
                        console.log(data);
                    }
                });
            }, 1000);
        }

        function closeModalSelisih(button) {
            if (typeof myTimeout != undefined) clearTimeout(intervalAvalanSelisih);
            $('#ModalAvalanSelisih').modal('hide');
        }
    </script>
@endsection
