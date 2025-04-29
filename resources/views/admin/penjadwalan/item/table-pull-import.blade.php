<form method="post" action="{{ route('import-stok.store') }}">
    
    @csrf
    <div class="container-lg" style="height: 60vh">
        @if ($importedItem > 0)
            <div class="ms-4 mb-2">
                <input class="form-check-input" type="checkbox" value="" id="ceksemuaitem">
                <label for="ceksemuaitem" class="form-check-label">
                    Centang Semua
                </label>
            </div>
            <input type="text" name="type" value="1" hidden>
            <input type="text" name="whs" value="{{ $gudangcode }}" hidden>
            <input type="text" name="itemname" value="{{ $itemname }}" hidden>
            <input type="text" name="csotype" value="{{$typestok}}" hidden>
            <div style="overflow: auto; max-height: 56vh;">
                <table class="table table-sm table-hover table-striped table-bordered text-nowrap" id="tableImport">
                    <thead class="table-dark">
                        <tr class="text-center ">
                            <th></th>
                            <th scope="col">
                                <div class="dropdown">
                                    <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                        style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                        <div class="d-flex">
                                            Kode Item
                                            <div class="sortImportItemIcon" id="importItemKodeItemIcon">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                    fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                                                    <path
                                                        d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                                                </svg>
                                            </div>
                                        </div>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="filterMenu">
                                        <li><button type='button' class="dropdown-item filterItem"
                                                onclick="sortItem(0,1,'importItemKodeItemIcon','sortImportItemIcon')">Ascending</button>
                                        </li>
                                        <li><button type='button' class="dropdown-item filterItem"
                                                onclick="sortItem(1,1,'importItemKodeItemIcon','sortImportItemIcon')">Descending</button>
                                        </li>
                                    </ul>
                                </div>
                            </th>
                            <th scope="col">
                                <div class="dropdown">
                                    <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                        style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                        <div class="d-flex">
                                            Nama Item
                                            <div class="sortImportItemIcon" id="importItemNamaItemIcon">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                    fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                                                    <path
                                                        d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                                                </svg>
                                            </div>
                                        </div>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="filterMenu">
                                        <li><button type='button' class="dropdown-item filterItem"
                                                onclick="sortItem(0,2,'importItemNamaItemIcon','sortImportItemIcon')">Ascending</button>
                                        </li>
                                        <li><button type='button' class="dropdown-item filterItem"
                                                onclick="sortItem(1,2,'importItemNamaItemIcon','sortImportItemIcon')">Descending</button>
                                        </li>
                                    </ul>
                                </div>
                            </th>
                            <th scope="col">Onhand All WRH</th>
                            <th scope="col">UOM</th>
                            @foreach ($gudang as $gdg)
                                <th scope="col">{{ $gdg }}</th>
                            @endforeach
                        </tr>
                    </thead>
                    <tbody class="small">
                        @foreach ($responseitem as $item)
                            <tr>
                                <td>
                                    <div class="form-check">
                                        <input type="checkbox" name="checkboxImport[]"
                                            class="form-check-input checkboxsemuaitem" value="{{ $item['ItemCode'] }}">
                                    </div>
                                </td>
                                <td>{{ $item['ItemCode'] }}</td>
                                <td>{{ $item['ItemName'] }}</td>
                                <td>{{ $item['OnHandAllWrh'] }}</td>
                                <td>{{ $item['uom'] }}</td>
                                <td hidden>{{ $item['hpp'] }}</td>
                                @foreach ($gudang as $gdg)
                                    @if (isset($item[$gdg]))
                                        <td gudang="{{ $gdg }}">{{ (float) $item[$gdg] }}</td>
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
    @if ($importedItem > 0)
        <div class="float-end d-flex">
            <button type="button" class="btn btn-primary float-end" id="buttonImpor" onclick="clickImpor(this)">Impor</button>
            <button type="button" class="ms-2 btn btn-primary float-end" data-bs-dismiss="modal" aria-label="Close"
                id="buttonKeluar">Keluar</button>
        </div>
    @endisset
</form>

@include('admin.penjadwalan.script.table-pull-import')
