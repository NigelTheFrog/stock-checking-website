@extends('layouts.master')

@section('title','Company')
@section('styles')
<style>
    /* .form-switch.form-switch-lg { */
        /* margin-bottom: 1rem; JUST FOR STYLING PURPOSE      */
    /* } */

    .form-switch.form-switch-lg .form-check-input {
        height: 1.5rem;
        width: 3rem;
        /* margin: 0 auto !important; */
        /* padding-left: 100px ; */
        /* border-radius: 3rem; */
    }
    .form-check-input {
        clear: left;
        box-shadow: none !important;
        outline: none !important;
    }
</style>
@endsection

@section('content')

<div class="container-fluid px-4">
    <h1 class="mt-4">Company</h1>   
    <div class="row justify-content-md-left">
        <div class="col-9">
            <div class="card mt-2">
                <div class="card-header bg-secondary text-white">
                    <h4 class="card-title pt-2">Daftar Company</h4>
                </div>                   
                <div class="card-body" style="background-color:rgb(248, 248, 248)">
                    <table class="table table-sm table-bordered table-hover table-responsive small" style="background-color:rgb(255, 255, 255)">
                        <thead class="table-dark">
                            <tr class="text-center ">
                                <th class="align-middle" style="width: 2%">No</th>
                                <th class="align-middle" style="width: 5%">Kode Cabang</th>
                                <th class="align-middle" style="width: 20%">Nama Cabang</th>
                                <th class="align-middle" style="width: 8%">Action</th>
                                <th hidden>Company ID</th>
                            </tr>
                        </thead>
                        <tbody>                                
                            @foreach ($company as  $coy)
                            <tr class="text-center">
                                <td class="align-middle">{{$loop->iteration}}</td>
                                <td class="align-middle">{{$coy->coycode}}</td>
                                <td class="align-middle">{{$coy->description}}</td>
                                <td class="align-middle"> 
                                    <button type="button" onclick="openModalEdit(this)" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target=""><i class="bi bi-pencil-square"></i></button>
                                    <button type="button" onclick="openModalDelete(this)" class="btn btn-danger btn-sm" title="Hapus User" id="btnHapus" data-id=""><i class="bi bi-trash-fill"></i></button>
                                </td>
                                <td hidden>{{$coy->coyid}}</td>
                            </tr>                                    
                            @endforeach                                
                        </tbody>
                    </table>
                    <div class="row">
                        <div class="col-5">
                            <div class="form-check form-switch form-switch-lg" style='padding-left:0;'>
                                {{-- <h6>Gunakan Cek Stok Pergudang</h6> --}}
                                <label class="form-check-label" for="flexSwitchCheckChecked" style="margin-right: 10px;"><h5>Gunakan Cek Stok Pergudang</h5></label>
                                <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" style="margin-left: 0;"
                                @if($company[0]->usewrhgrp == 1) checked @endif>
        
                            </div>   
                        </div>
                        <div class="col-7" style="padding-left:0">
                            <span style="color:lime" id='checkActive' @if($company[0]->usewrhgrp == 0) hidden @endif><strong>active</strong></span>                           
                        </div>
                    </div>                             
                </div>
            </div> 
        </div> 
        <div class="col-5" hidden>
            <div class="card mt-2">
                <div class="card-header bg-secondary text-white ">
                    <h4 class="card-title mx-3 pt-2">Tambah Company</h4>
                </div>
                <div class="card-body" style="background-color:rgb(248, 248, 248)">
                    <form id="forminput" action="{{route("company.store")}}" method="POST" class="needs-validation mx-3" novalidate >
                        @csrf 
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="text" name="coycode" class="form-control" id="coycode" placeholder="Kode Company" required>
                                <div class="invalid-feedback">
                                    Kode company harus diisi
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-keyboard"></i></span>
                                </div>
                                <input type="text" name="deskripsi" class="form-control" id="deskripsi" placeholder="Nama Company" required>
                                <div class="invalid-feedback">
                                    Nama Company
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
<div class="modal fade text-left" id="ModalEditCompany" tabindex="-1">
    <div class="modal-dialog modal modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="mdlMoreLabel">Ubah Data Company</h1>
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
                            <input type="text" name="coycode" class="form-control" id="editcoycode" placeholder="Company Code" required>
                            <div class="invalid-feedback">
                                Kode Company harus diisi
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-keyboard"></i></span>
                            </div>
                            <input type="text" name="deskripsi" class="form-control" id="editdeskripsi" placeholder="deskripsi" required>
                            <div class="invalid-feedback">
                                Deskripsi harus diisi
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
<div class="modal fade text-left" id="ModalDeleteCompany" tabindex="-1">
    <div class="modal-dialog modal modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="mdlMoreLabel">Hapus Data Company</h1>                
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
    function openModalEdit(button) {
        $('#ModalEditCompany').modal('show');
        var row = $(button).closest('tr');
        var coyid = row.find('td:nth-child(5)').text();
        $('#editcoycode').attr('value', row.find('td:nth-child(2)').text());
        $('#editdeskripsi').attr('value', row.find('td:nth-child(3)').text());
        $('#editform').attr('action',`{{url('admin/master/company/${coyid}')}}`);
    }
    function closeModalEdit(button) {
        $('#ModalEditCompany').modal('hide');
    }
    function openModalDelete(button) {
        $('#ModalDeleteCompany').modal('show');
        var row = $(button).closest('tr');
        var deskripsi = row.find('td:nth-child(3)').text();
        var coyid = row.find('td:nth-child(5)').text();
        document.getElementById("warning").innerText = `Apakah anda akan melanjutkan penghapusan data company ${deskripsi}?`;
        $('#deleteform').attr('action',`{{url('admin/master/company/${coyid}')}}`);    
    }
    function closeModalDelete(button) {
        $('#ModalDeleteCompany').modal('hide');
    }

    $('#flexSwitchCheckChecked').on('change',function(){
        // console.log($('#flexSwitchCheckChecked').is(":checked"))
        let status = $('#flexSwitchCheckChecked').is(":checked");
        if(status) $('#checkActive').prop('hidden',false);
        else $('#checkActive').prop('hidden',true);
        $.ajax({
                url: `{{ url('admin/master/company/update-wrh-grp') }}`,
                type: 'POST',
                data: {
                    check: status
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(data) {
                    console.log(data);
                    // countAnalisator = data.countAnalisator;
                    // $('#main-table-item').html(data.view);
                    // $(".sticky-header").floatThead({ scrollingTop: 0 })
                }
            });

    })

</script>
@endsection