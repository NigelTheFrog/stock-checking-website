@extends('layouts.master')

@section('title', 'Area Lokasi')

@section('content')

    <div class="container-fluid px-4">
        <h1 class="mt-4">Area Lokasi</h1>
        {{-- <div class="row justify-content-md-center"> --}}
            <div>
                <div class="card mt-2">
                    <div class="card-header bg-secondary text-white">
                        <h4 class="card-title pt-2">Data Lokasi</h4>
                    </div>
                    <div class="card-body" style="background-color:rgb(248, 248, 248)">
                        <div class='row mb-1'>
                            <div class="col-sm-6  d-inline-flex">
                                <input class="form-control" id="lokasiSearch" type="search" placeholder="Search"
                                    aria-label="Search">
                            </div>
                        </div>
                        <table id="lokasiDatabase" class="table table-sm table-bordered table-hover table-responsive small"
                            style="background-color:rgb(255, 255, 255); overflow-y: auto; max-height: 162vh">
                            <thead class="table-dark">
                                <tr class="text-center ">
                                    <th class="align-middle" style="width: 2%">No</th>
                                    <th class="align-middle" style="width: 5%">Kode Lokasi</th>
                                    <th class="align-middle" style="width: 20%">Nama Lokasi</th>
                                    {{-- <th class="align-middle" style="width: 2%">Default</th> --}}
                                    <th class="align-middle" style="width: 8%">Action</th>
                                </tr>
                            </thead>
                            <tbody id="lokasiDatabase">
                                @foreach ($lokasi as $loct)
                                    <tr class="text-center">
                                        <td class="align-middle">{{ $loop->iteration }}</td>
                                        <td class="align-middle">{{ $loct->locationcode }}</td>
                                        <td class="align-middle">{{ $loct->locationname }}</td>
                                        {{-- <td class="align-middle">
                                            @if ($loct->isdefault == 1)
                                                <input type="checkbox" name="check"
                                                    onclick="setIsDefault(this,'{{ $loct->locationid }}')" checked>
                                            @else
                                                <input type="checkbox" name="check"
                                                    onclick="setIsDefault(this,'{{ $loct->locationid }}')">
                                            @endif

                                        </td> --}}
                                        <td class="align-middle">
                                            <button type="button"
                                                onclick="openModalEdit('{{ $loct->locationid }}','{{ $loct->locationcode }}','{{ $loct->locationname }}')"
                                                class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target=""><i
                                                    class="bi bi-pencil-square"></i></button>
                                            {{-- <button type="button"
                                                onclick="openModalDelete('{{ $loct->locationid }}','{{ $loct->locationname }}')"
                                                class="btn btn-danger btn-sm" title="Hapus User" id="btnHapus"
                                                data-id=""><i class="bi bi-trash-fill"></i></button> --}}
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            {{-- <div class="col-5">
                <div class="card mt-2">
                    <div class="card-header bg-secondary text-white ">
                        <h4 class="card-title mx-3 pt-2">Tambah Lokasi</h4>
                    </div>
                    <div class="card-body" style="background-color:rgb(248, 248, 248)">
                        <form id="forminput" action="{{ route('area-lokasi.store') }}" method="POST"
                            class="needs-validation mx-3" novalidate>
                            @csrf
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                                    </div>
                                    <input type="text" name="locationcode" class="form-control" id="locationcode"
                                        placeholder="Kode Lokasi" required>
                                    <div class="invalid-feedback">
                                        Kode lokasi harus diisi
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-keyboard"></i></span>
                                    </div>
                                    <input type="text" name="namalokasi" class="form-control" id="namalokasi"
                                        placeholder="Nama Lokasi" required>
                                    <div class="invalid-feedback">
                                        Nama lokasi harus diisi
                                    </div>
                                </div>
                            </div>
                            <button type="reset" class="btn btn-danger" name="reset"><i class="bx bx-reset"></i>
                                Reset</button>
                            <button type="submit" class="btn btn-primary" name="simpan"><i class="bx bxs-save"></i>
                                Simpan</button>
                        </form>
                    </div>
                </div>
            </div> --}}
        {{-- </div> --}}
    </div>
    <div class="modal fade text-left" id="ModalEditLokasi" tabindex="-1">
        <div class="modal-dialog modal modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="mdlMoreLabel">Ubah Data Lokasi</h1>
                    <button type="button" class="btn-close align-middle" onclick="closeModalEdit(this)"
                        aria-label="Close">
                    </button>
                </div>
                <div class="modal-body">
                    <form id="editform" action="" method="POST" class="needs-validation mx-3" novalidate>
                        @csrf
                        @method('PUT')
                        {{-- <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="text" name="locationcode" class="form-control" id="editlocationcode"
                                    placeholder="Kode Lokasi" required>
                                <div class="invalid-feedback">
                                    Kode Lokasi harus diisi
                                </div>
                            </div>
                        </div> --}}
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-keyboard"></i></span>
                                </div>
                                <input type="text" name="namalokasi" class="form-control" id="editnamalokasi"
                                    placeholder="Nama Lokasi" required>
                                <div class="invalid-feedback">
                                    Nama lokasi harus diisi
                                </div>
                            </div>
                        </div>
                        <button type="reset" class="btn btn-danger" name="reset"><i class="bx bx-reset"></i>
                            Reset</button>
                        <button type="submit" class="btn btn-primary" name="simpan"><i class="bx bxs-save"></i>
                            Simpan</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade text-left" id="ModalDeleteLokasi" tabindex="-1">
        <div class="modal-dialog modal modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="mdlMoreLabel">Hapus Data Lokasi</h1>
                </div>
                <div class="modal-body">
                    <form id="deleteform" action="" method="POST" class="needs-validation mx-3" novalidate>
                        @csrf
                        @method('DELETE')
                        <p id="warning"></p>
                        <button type="submit" class="btn btn-danger" name="simpan"><i
                                class="bx bxs-save"></i>Iya</button>
                        <button type="button" onclick="closeModalDelete(this)" class="btn btn-primary"
                            name="simpan"><i class="bx bxs-save"></i>Batal</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>
        function setIsDefault(checkbox, locationid) {
            let checkboxes = document.getElementsByName(checkbox.name)
            checkboxes.forEach((item) => {
                if (item !== checkbox) {
                    item.checked = false;
                } else {
                    item.checked = true;
                    $.ajax({
                        url: "{{ route('area-lokasi.set-default') }}",
                        type: 'POST',
                        data: {
                            locationid: locationid,
                        },
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function(data) {
                            Swal.fire({
                                icon: "success",
                                title: "Berhasil",
                                text: "Data default lokasi berhasil diganti",
                                willClose: () => { window.location.reload() }
                            });
                        },
                        error: function() {

                        }
                    });
                }

            });
        }

        function openModalEdit(locationid, locationcode, locationname) {
            $('#ModalEditLokasi').modal('show');
            // $('#editlocationcode').attr('value', locationcode);
            $('#editnamalokasi').attr('value', locationname);
            $('#editform').attr('action', `{{ url('admin/master/area-lokasi/${locationid}') }}`);
        }

        function closeModalEdit(button) {
            $('#ModalEditLokasi').modal('hide');
        }

        function openModalDelete(locationid, locationname) {
            $('#ModalDeleteLokasi').modal('show');
            document.getElementById("warning").innerText =
                `Apakah anda akan melanjutkan penghapusan data lokasi ${locationname}?`;
            $('#deleteform').attr('action', `{{ url('admin/master/area-lokasi/${locationid}') }}`);
        }

        function closeModalDelete(button) {
            $('#ModalDeleteLokasi').modal('hide');
        }

        $("#lokasiSearch").keyup(function() {
            var search = $('#lokasiSearch').val().toLowerCase();
            var table = $('#lokasiDatabase').find('tr');
            for (i = 1; i < table.length; i++) {
                var tr = table[i];
                var td = $(tr).children('td');
                if (td[1] || td[2] || td[3]) {
                    if ($(td[1]).text().toLowerCase().includes(search) ||
                        $(td[2]).text().toLowerCase().includes(search) ||
                        $(td[3]).text().toLowerCase().includes(search)) {
                        tr.style.display = '';
                    } else tr.style.display = 'none';
                }
            }
        });
    </script>
@endsection
