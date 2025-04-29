<form method="post" action="{{ route('import-avalan.store') }}">
    @csrf
    <div class="container-lg" style="height: 58vh;">
        @if ($importedAvalan > 0)
            <input type="text" name="type" value="1" hidden>
            <input type="text" name="whs" value="{{ $gudangcode }}" hidden>
            <input type="text" name="itemname" value="{{ $itemname }}" hidden>
            <div class="ms-4 mb-2">
                <input class="form-check-input" type="checkbox" value="" id="ceksemuaavalan">
                <label for="ceksemuaavalan" class="form-check-label">
                    Centang Semua
                </label>
            </div>
            <div style="overflow: auto; max-height: 56vh;">
                <table class="table table-sm table-hover table-striped table-bordered text-nowrap">
                    <thead class="table-dark">
                        <tr class="text-center ">
                            <th></th>
                            <th scope="col">Nama Item</th>
                            <th scope="col">Onhand All WRH</th>
                            <th scope="col">UOM</th>
                            @foreach ($gudang as $gdg)
                                <th scope="col">{{ $gdg }}</th>
                            @endforeach
                        </tr>
                    </thead>
                    <tbody class="small">
                        @foreach ($responseavalan as $avalan)
                        <tr>
                            <td>
                                <div class="form-check">
                                    <input type="checkbox" name="checkboxImport[]"
                                        class="form-check-input checkboxsemuaitem" value={{ $avalan['ItemCode'] }}>
                                </div>
                            </td>
                            <td>{{ $avalan['ItemName'] }}</td>
                            <td>{{ $avalan['OnHand'] }}</td>
                            <td>LBR</td>
                            @foreach ($gudang as $gdg)
                                @if (isset($avalan[$gdg]))
                                    <td>{{ (int) $avalan[$gdg] }}</td>
                                @else
                                    <td>0</td>
                                @endif
                            @endforeach
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        @endif
    </div>
    <hr>
    @if ($importedAvalan > 0)
        <div class="float-end d-flex">
            <button type="submit" class="btn btn-primary float-end">Impor</button>
            <button type="button" class="ms-2 btn btn-primary float-end" data-bs-dismiss="modal"
                aria-label="Close">Keluar</button>
        </div>
    @endisset
</form>

<script>
    $(document).ready(function() {
        $("#ceksemuaavalan").click(function() {
            if ($(".cekboxsemuaavalan").prop("checked")) {
                $(".cekboxsemuaavalan").prop("checked", false);
            } else {
                $(".cekboxsemuaavalan").prop("checked", true);
            }
        });
    });
</script>
