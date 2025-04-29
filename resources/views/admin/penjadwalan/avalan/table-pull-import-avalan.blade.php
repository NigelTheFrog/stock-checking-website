<form method="post" action="{{ route('import-avalan.store') }}">
    @csrf
    <div class="container-lg" style="height: 60vh; width: 100vw;margin-right:0%">
        @if ($importedAvalan > 0)
            <input type="text" name="type" value="1" hidden>
            <input type="text" name="whs" value="{{ $gudangcode }}" hidden>
            <input type="text" name="itemname" value="{{ $itemname }}" hidden>
            <div class="ms-4 mb-2">
                <input class="form-check-input" type="checkbox" id="checkAll" onclick="checkAllItem(this)">
                <label for="ceksemuaitem" class="form-check-label">
                    Centang Semua
                </label>
            </div>
            <div style="overflow: auto; max-height: 56vh;">
                <table class="table table-sm table-hover table-striped table-bordered text-nowrap" id="tableImport">
                    <thead class="table-dark">
                        <tr class="text-center ">
                            <th class="align-middle" scope="col" style="position: sticky; top: 0; z-index: 1;"></th>
                            <th class="align-middle" scope="col" style="position: sticky; top: 0; z-index: 1;">No</th>

                            <th class="align-middle" scope="col" style="position: sticky; top: 0; z-index: 1;">Item Code</th>
                            <th class="align-middle" scope="col" style="position: sticky; top: 0; z-index: 1;">Nama Item</th>
                            {{-- <th class="align-middle" scope="col" style="position: sticky; top: 0; z-index: 1;">Sub Product</th> --}}
                            <th class="align-middle" scope="col" style="position: sticky; top: 0; z-index: 1;">Batch No</th>
                            <th class="align-middle" scope="col" style="position: sticky; top: 0; z-index: 1;">Heat No</th>
                            <th class="align-middle" scope="col" style="position: sticky; top: 0; z-index: 1;">Dimension</th>
                            <th class="align-middle" scope="col" style="position: sticky; top: 0; z-index: 1;">Tolerance</th>
                            <th class="align-middle" scope="col" style="position: sticky; top: 0; z-index: 1;">Condition</th>
                            <th class="align-middle" scope="col" style="position: sticky; top: 0; z-index: 1;">Onhand All WRH</th>
                            <th class="align-middle" scope="col" style="position: sticky; top: 0; z-index: 1;">UOM</th>
                            @foreach ($gudang as $gdg)
                                <th class="align-middle" scope="col" style="position: sticky; top: 0; z-index: 1;">{{ $gdg }}</th>
                            @endforeach
                        </tr>
                    </thead>
                    <tbody class="small">
                        @foreach ($responseavalan as $idx => $avalan)
                            {{-- <tr class="text-center" id="data_{{ $idx }}"> --}}
                            <tr class="text-center">
                                <td>
                                    <div class="form-check">
                                        <input type="checkbox" name="checkboxImport[]"
                                            class="form-check-input cekboxsemuaavalan"
                                            value={{ $avalan['itembatchid'] }}>
                                    </div>
                                </td>
                                <td>{{ $idx+1 }}</td>
                                <td>{{ $avalan['itemcode'] }}</td>
                                <td hidden>{{ $avalan['ITEMID'] }}</td>
                                <td hidden>{{ $avalan['batchid'] }}</td>
                                <td hidden>{{ $avalan['ProductID'] }}</td>
                                <td hidden>{{ $avalan['Product'] }}</td>
                                <td hidden>{{ $avalan['subproductid'] }}</td>
                                <td hidden>{{ $avalan['SubProduct'] }}</td>
                                <td>{{ $avalan['NamaItem'] }}</td>
                                <td>{{ $avalan['batchno'] }}</td>
                                <td>{{ $avalan['heatNo'] }}</td>
                                <td>{{ $avalan['Dimension'] }}</td>
                                <td>{{ $avalan['tolerance'] }}</td>
                                <td>{{ $avalan['condition'] }}</td>
                                <td>{{ number_format($avalan['Onhand'],2,'.',',') }}</td>
                                <td>{{ $avalan['UOM'] }}</td>
                                <td hidden>{{ $avalan['itemcost'] }}</td>
                                @if ($coy == 'KKS')
                                    <td>{{ (float)$avalan['tonase'] }}</td>
                                @endif
                                @foreach ($gudang as $gdg)
                                    @if (isset($avalan[$gdg]))
                                        <td gudang="{{ $gdg }}">{{ (float) $avalan[$gdg] }}</td>
                                    @else
                                        <td gudang="{{ $gdg }}">0</td>
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
            <button type="submit" class="btn btn-primary float-end"
            onclick="submitImpor(this,'{{$coy}}')">Impor</button>
            <button type="button" class="ms-2 btn btn-primary float-end" data-bs-dismiss="modal"
                aria-label="Close">Keluar</button>
        </div>
    @endisset
</form>
@include('admin.penjadwalan.script.table-pull-import-avalan')