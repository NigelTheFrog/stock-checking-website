<h5>History Transaksi</h5>
<div class="d-flex justify-content-between mt-1">
    <div class="d-flex justify-content-start align-items-center">
        <label style="font-size: 10pt">Tgl dari:</label>
        <input class="form-control ms-2" style="max-width: 70%; max-height: 70%;" type="date" placeholder="Tanggal Mulai"
            id="startdatepicker">
    </div>
    <div class="d-flex justify-content-end align-items-center">
        <label style="font-size: 10pt">sampai:</label>
        <input class="form-control ms-2" style="max-width: 70%; max-height: 70%;" type="date"
            placeholder="Tanggal Selesai" id="enddatepicker">
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
        <button type="button" id="buttonCari" class="btn btn-success text-light" onclick=""
            style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;"><i
                class="bi bi-search"></i> Cari</button>
    </div>
</div>
<div class="mt-1" style="overflow-y: auto; max-height: 49.5vh; overflow-x: hidden;">
    <table style="max-width: 34vw;" class="table table-sm table-hover table-striped table-bordered text-nowrap"
        id="tabel-transaksi">
        <thead class="table-dark" style="position: -webkit-sticky;position: sticky;top: 0;">
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
