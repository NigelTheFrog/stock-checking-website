@extends('layouts.master')

@section('title','Keterangan')

@section('content')

<div class="container-fluid px-4">
    <h1 class="mt-4">Keterangan CSO Ulang</h1>   
    <div class="row justify-content-md-center">
        <div class="col-7">
            <div class="card mt-2">
                <div class="card-header bg-secondary text-white">
                    <h4 class="card-title pt-2">Master Keterangan CSO Ulang</h4>
                </div>                   
                <div class="card-body" style="background-color:rgb(248, 248, 248)">
                    <table class="table table-sm table-bordered table-hover table-responsive small" style="background-color:rgb(255, 255, 255)">
                        <thead class="table-dark">
                            <tr class="text-center ">
                                <th class="align-middle" style="width: 2%">No</th>
                                <th class="align-middle" style="width: 20%">Keterangan</th>
                                <th class="align-middle" style="width: 8%">Action</th>
                                <th hidden></th>
                            </tr>
                        </thead>
                        <tbody>                                
                            @foreach ($keterangan as $ket)
                            <tr class="text-center">
                                <td class="align-middle">{{$loop->iteration}}</td>
                                <td class="align-middle">{{$ket->keterangan}}</td>
                                <td class="align-middle"> 
                                    <button type="button" onclick="openModalEdit({{$ket->keteranganid}},'{{$ket->keterangan}}')" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target=""><i class="bi bi-pencil-square"></i></button>
                                    <button type="button" onclick="openModalDelete({{$ket->keteranganid}}, '{{$ket->keterangan}}')" class="btn btn-danger btn-sm" title="Hapus User" id="btnHapus" data-id=""><i class="bi bi-trash-fill"></i></button>
                                </td>
                                <td hidden>{{$ket->keteranganid}}</td>
                            </tr>                                    
                            @endforeach                                
                        </tbody>
                    </table>                                
                </div>
            </div> 
        </div> 
        <div class="col-5">
            <div class="card mt-2">
                <div class="card-header bg-secondary text-white ">
                    <h4 class="card-title mx-3 pt-2">Tambah Keterangan</h4>
                </div>
                <div class="card-body" style="background-color:rgb(248, 248, 248)">
                    <form id="forminput" action="{{route("keterangan-cso-ulang.store")}}" method="POST" class="needs-validation mx-3" novalidate >
                        @csrf
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="text" name="keterangan" class="form-control" id="keterangan" placeholder="Keterangan CSO Ulang" required>
                                <div class="invalid-feedback">
                                    Keterangan harus diisi
                                </div>
                            </div>
                        </div>      
                        <button type="reset" class="btn btn-danger"><i class="bx bx-reset"></i> Reset</button>
                        <button type="submit" class="btn btn-primary"><i class="bx bxs-save"></i> Simpan</button>
                    </form>
                </div>               
            </div>
        </div>   
    </div>
</div> 
<div class="modal fade text-left" id="ModalEditGroup" tabindex="-1">
    <div class="modal-dialog modal modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="mdlMoreLabel">Ubah Data Keterangan</h1>
                <button type="button" class="btn-close align-middle" onclick="closeModalEdit(this)" aria-label="Close">
                </button>
            </div>
            <div class="modal-body">
                <form id="editform" action="" method="POST" class="needs-validation mx-3" novalidate >
                    @csrf 
                    @method('PUT')
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="text" name="keterangan" class="form-control" id="editdeskripsi" placeholder="Keterangan CSO Ulang" required>
                            <input type="text" name="id" class="form-control" id="editid" placeholder="Keterangan CSO Ulang" hidden>
                            <div class="invalid-feedback">
                                Keterangan harus diisi
                            </div>
                        </div>
                    </div>                                                
                    <button type="reset" class="btn btn-danger" name="reset"><i class="bx bx-reset"></i> Reset</button>
                    <button type="submit" class="btn btn-primary" name="simpan"><i class="bx bxs-save"></i> Simpan</button>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade text-left" id="ModalDeleteGroup" tabindex="-1">
    <div class="modal-dialog modal modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="mdlMoreLabel">Hapus Data Group</h1>                
            </div>
            <div class="modal-body">
                <form id="deleteform" action="" method="POST" class="needs-validation mx-3" novalidate >
                    @csrf
                    @method('DELETE')
                    <p id="warning"></p>
                    <input type="text" name="id" class="form-control" id="deleteid" placeholder="Keterangan CSO Ulang" hidden>
                    <button type="submit" class="btn btn-danger" name="simpan"><i class="bx bxs-save"></i>Iya</button>                    
                    <button type="button" onclick="closeModalDelete(this)" class="btn btn-primary"><i class="bx bxs-save"></i>Batal</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    function openModalEdit(keteranganid,keterangan) {
        $('#ModalEditGroup').modal('show');
        document.getElementById("editdeskripsi").value = keterangan;
        document.getElementById("editid").value = keteranganid;
        $('#editform').attr('action',`{{url('admin/master/keterangan-cso-ulang/${keteranganid}')}}`);
    }
    function closeModalEdit(button) {
        $('#ModalEdiGroup').modal('hide');
    }
    function openModalDelete(keteranganid,keterangan) {
        $('#ModalDeleteGroup').modal('show');
        document.getElementById("warning").innerText = `Apakah anda akan melanjutkan penghapusan keterangan ${keterangan}?`;
        document.getElementById("deleteid").value = keteranganid;
        $('#deleteform').attr('action',`{{url('admin/master/keterangan-cso-ulang/${keteranganid}')}}`);    
    }
    function closeModalDelete(button) {
        $('#ModalDeleteGroup').modal('hide');
    }
</script>

@endsection