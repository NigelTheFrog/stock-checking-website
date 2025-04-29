@extends('layouts.master')

@section('title','Tipe User')

@section('content')

<div class="container-fluid px-4">
    <h1 class="mt-4">Tipe User</h1>   
    <div class="row justify-content-md-center">
        <div class="col-7">
            <div class="card mt-2">
                <div class="card-header bg-secondary text-white">
                    <h4 class="card-title pt-2">Daftar Tipe User</h4>
                </div>                   
                <div class="card-body" style="background-color:rgb(248, 248, 248)">
                    <table class="table table-sm table-bordered table-hover table-responsive small" style="background-color:rgb(255, 255, 255)">
                        <thead class="table-dark">
                            <tr class="text-center ">
                                <th class="align-middle" style="width: 2%">No</th>
                                <th class="align-middle" style="width: 5%">Departemen</th>
                                <th class="align-middle" style="width: 8%">Action</th>
                            </tr>
                        </thead>
                        <tbody>                                
                            @foreach ($dept as $dep)
                            <tr class="text-center">
                                <td class="align-middle">{{$loop->iteration}}</td>
                                <td class="align-middle">{{$dep->departemen}}</td>
                                <td class="align-middle"> 
                                    <button type="button" onclick="openModalEdit({{$dep->deptid}},'{{$dep->departemen}}')" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target=""><i class="bi bi-pencil-square"></i></button>
                                    <button type="button" onclick="openModalDelete({{$dep->deptid}},'{{$dep->departemen}}')" class="btn btn-danger btn-sm" title="Hapus User" id="btnHapus" data-id=""><i class="bi bi-trash-fill"></i></button>
                                </td>
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
                    <h4 class="card-title mx-3 pt-2">Tambah Tipe User</h4>
                </div>
                <div class="card-body" style="background-color:rgb(248, 248, 248)">
                    <form id="forminput" action="{{route("departemen.store")}}" method="POST" class="needs-validation mx-3" novalidate >
                        @csrf 
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="text" name="namaDepartemen" class="form-control" placeholder="Departemen" required>
                                <div class="invalid-feedback">
                                    Departemen harus diisi
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
</div> 
<div class="modal fade text-left" id="ModalEditUser" tabindex="-1">
    <div class="modal-dialog modal modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="mdlMoreLabel">Ubah Data User</h1>
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
                            <input type="text" name="namaDepartemen" class="form-control" id="editdept" placeholder="Departemen" required>
                            <input type="text" name="id" class="form-control" id="editid" value="1" hidden>
                            <div class="invalid-feedback">
                                Departemen harus diisi
                            </div>
                        </div>
                    </div>                                            
                    <button type="reset" class="btn btn-danger" name="reset"><i class="bx bx-reset"></i> Reset</button>
                    <button type="submit" class="btn btn-primary" ><i class="bx bxs-save"></i> Simpan</button>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade text-left" id="ModalDeleteUser" tabindex="-1">
    <div class="modal-dialog modal modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="mdlMoreLabel">Hapus Data Departemen</h1>                
            </div>
            <div class="modal-body">
                <form id="deleteform" action="" method="POST" class="needs-validation mx-3" novalidate >
                    @csrf
                    @method('DELETE')
                    <p id="warning"></p>
                    <input type="text" name="id" class="form-control" id="deleteid" placeholder="Keterangan CSO Ulang" hidden>
                    <button type="submit" class="btn btn-danger" name="simpan"><i class="bx bxs-save"></i>Iya</button>                    
                    <button type="button" onclick="closeModalDelete(this)" class="btn btn-primary" name="simpan"><i class="bx bxs-save"></i>Batal</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    function openModalEdit(deptid, departemen) {
        $('#ModalEditUser').modal('show');
        document.getElementById("editdept").value = departemen;
        document.getElementById("editid").value = deptid;
        $('#editform').attr('action',`{{url('admin/master/departemen/${deptid}')}}`);
    }
    function closeModalEdit(button) {
        $('#ModalEditUser').modal('hide');
    }
    function openModalDelete(deptid, departemen) {
        $('#ModalDeleteUser').modal('show');
        document.getElementById("warning").innerText = `Apakah anda akan melanjutkan penghapusan data ${departemen}?`;
        document.getElementById("deleteid").value = deptid;
        $('#deleteform').attr('action',`{{url('admin/master/departemen/${deptid}')}}`);    
    }
    function closeModalDelete(button) {
        $('#ModalDeleteUser').modal('hide');
    }
</script>
@endsection