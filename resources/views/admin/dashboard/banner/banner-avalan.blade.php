<div class="col">
    <div class="card bg-warning text-white mb-4">
        <div class="card-body" id="title">
            <h3 class="text-dark">{{ $countBatchBlmProses }}</h3>
            <p class="text-dark">Batch belum proses</p>
        </div>
        <div class="card-footer d-flex align-items-center justify-content-between">
            <a class="small text-white stretched-link" href=# id="btnBatchBlmProses"
                data-bs-mytitle="Ini Modal Belum Proses" onclick="openModalBlmProses(this)"
                data-bs-target="#ModalBatchBlmProses">View Details</a>
            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
        </div>
    </div>
</div>

<div class="col">
    <div class="card bg-success text-white mb-4">
        <div class="card-body">
            <h3>{{ $countBatchOk }}</h3>
            <p>Batch OK</p>
        </div>
        <div class="card-footer d-flex align-items-center justify-content-between">
            <a class="small text-white stretched-link" href="#" id="btnBatchOk" data-bs-toggle="modal"
                onclick="openModalOk(this)">View Details</a>
            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
        </div>
    </div>
</div>
<div class="col">
    <div class="card bg-danger text-white mb-4">
        <div class="card-body">
            <h3>{{ $countBatchSelisih }}</h3>
            <p>Batch Selisih</p>
        </div>
        <div class="card-footer d-flex align-items-center justify-content-between">
            <a class="small text-white stretched-link" href="#" id="btnBatchBlmProses"
                data-bs-toggle="modal" onclick="openModalSelisih(this)">View Details</a>
            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
        </div>
    </div>
</div>