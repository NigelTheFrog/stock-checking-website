@extends('layouts.master')

@section('title','Grade')

@section('content')

<div class="container-fluid px-4">
    <h1 class="mt-4">Warehouse Data</h1>   
    <div class="row justify-content-md-center">
        <div class="col-7">
            <div class="card mt-2">
                <div class="card-header bg-secondary text-white">
                    <h4 class="card-title pt-2">Gudang</h4>
                </div>                   
                <div class="card-body" style="background-color:rgb(248, 248, 248)">
                    <table class="table table-sm table-bordered table-hover table-responsive small" style="background-color:rgb(255, 255, 255)">
                        <thead class="table-dark">
                            <tr class="text-center ">
                                <th class="align-middle" style="width: 2%">No</th>
                                <th class="align-middle" style="width: 2%">Gudang</th>
                                <th class="align-middle" style="width: 20%">Deskripsi</th>
                                <th class="align-middle" style="width: 10%">Group</th>
                                <th class="align-middle" style="width: 8%">Action</th>
                                <th hidden></th>
                            </tr>
                        </thead>
                        <tbody>                                
                            @foreach ($grade as $g)
                            <tr class="text-center">
                                <td class="align-middle">{{ $loop->iteration }}</td>
                                <td class="align-middle">{{ $g->gradecode }}</td>
                                <td class="align-middle">{{ $g->description }}</td>
                                <td class="align-middle">{{ $g->group }}</td>
                                <td class="align-middle"> 
                                    <button type="button" onclick="openModalEdit(this,'{{ $g->gradecode }}','{{ $g->description }}','{{$g->group}}')" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target=""><i class="bi bi-pencil-square"></i></button>
                                    <button type="button" onclick="openModalDelete(this,'{{ $g->gradecode }}','{{ $g->description }}')" class="btn btn-danger btn-sm" title="Hapus User" id="btnHapus" data-id=""><i class="bi bi-trash-fill"></i></button>
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
                    <h4 class="card-title mx-3 pt-2">Tambah Gudang</h4>
                </div>
                <div class="card-body" style="background-color:rgb(248, 248, 248)">
                    <form id="forminput" action="{{route("grade.store")}}" method="POST" class="needs-validation mx-3" novalidate >
                        @csrf
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="text" name="code" class="form-control" id="code" placeholder="Kode Gudang" required>
                                <div class="invalid-feedback">
                                    Kode Gudang harus diisi
                                </div>
                            </div>                            
                        </div>  
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="bi bi-pencil-fill"></i></span>
                                </div>
                                <input type="text" name="deskripsi" class="form-control" id="deskripsi" placeholder="Deskripsi Gudang" required>
                                <div class="invalid-feedback">
                                    Deskripsi harus diisi
                                </div>
                            </div>                           
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="bi bi-box"></i></span>
                                </div>
                                <input type="text" name="groupGudang" class="form-control" id="groupGudang" placeholder="Group Gudang" required>
                                <div class="invalid-feedback">
                                    group gudang
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
<div class="modal fade text-left" id="ModalEditKeputusan" tabindex="-1">
    <div class="modal-dialog modal modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="mdlMoreLabel">Ubah Data Keputusan</h1>
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
                            <input type="text" name="deskripsi" class="form-control" id="editdeskripsi" placeholder="Deskripsi Keputusan" required>
                            <div class="invalid-feedback">
                                Deskripsi harus diisi
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="bi bi-box"></i></span>
                            </div>
                            <input type="text" name="groupGudang" class="form-control" id="editgroupGudang" placeholder="Group Gudang" required>
                            <div class="invalid-feedback">
                                group gudang
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
<div class="modal fade text-left" id="ModalDeleteKeputusan" tabindex="-1">
    <div class="modal-dialog modal modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="mdlMoreLabel">Hapus Data Keputusan</h1>                
            </div>
            <div class="modal-body">
                <form id="deleteform" action="" method="POST" class="needs-validation mx-3" novalidate >
                    @csrf
                    @method('DELETE')
                    <p id="warning"></p>
                    <button type="submit" class="btn btn-danger" name="simpan"><i class="bx bxs-save"></i>Iya</button>                    
                    <button type="button" onclick="closeModalDelete(this)" class="btn btn-primary" name="simpan"><i class="bx bxs-save"></i>Batal</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    function openModalEdit(button,grade,description, groupGudang) {
        console.log(grade);
        $('#ModalEditKeputusan').modal('show');
        $('#editdeskripsi').attr('value', description);
        $('#editgroupGudang').attr('value', groupGudang);
        $('#editform').attr('action',`{{url('admin/master/grade/${grade}')}}`);
    }
    function closeModalEdit(button) {
        $('#ModalEditKeputusan').modal('hide');
    }
    function openModalDelete(button,grade,description) {
        $('#ModalDeleteKeputusan').modal('show');
        document.getElementById("warning").innerText = `Apakah anda akan melanjutkan penghapusan data ${description}?`;
        $('#deleteform').attr('action',`{{url('admin/master/grade/${grade}')}}`);    
    }
    function closeModalDelete(button) {
        $('#ModalDeleteKeputusan').modal('hide');
    }
</script>
@endsection