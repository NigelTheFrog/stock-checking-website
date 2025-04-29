<table class="table table-sm table-bordered table-hover sticky-header table-responsive small" style="min-height: 40vh">
    <thead class="table-dark">
        <tr class="text-center ">
            <th class="align-middle" style="width: 1%">No</th>
            {{-- <th class="align-middle" style="width: 36%">Nama Item</th>
            <th class="align-middle" style="width: 10%">Status</th>
            <th class="align-middle" style="width: 5%">Selisih</th>
            <th class="align-middle" style="width: 5%">Onhand</th>
            <th class="align-middle" style="width: 5%">Total CSO</th>
            <th class="align-middle" style="width: 5%">Koreksi</th>
            <th class="align-middle" style="width: 5%">Deviasi</th>
            <th class="align-middle" style="width: 5%">Status CSO</th>
            <th class="align-middle" style="width: 5%">Grouping</th>
            <th class="align-middle" style="width: 5%">Group <br>value</th>
            <th class="align-middle" style="width: 18%">Analisator</th> --}}
            <th style="width: 36%">
                <div class='row my-2 mx-2 align-middle'>
                    <div class="dropdown">
                        <button class="btn btn-sm text-white text-center fw-bold" type="button" id="filterMenu"
                            style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false"> Nama Item
                            @if ($filter == 1)
                                <i class="bi bi-arrow-up"></i>
                            @elseif ($filter == 2)
                                <i class="bi bi-arrow-down"></i>
                            @else
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                    fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                                    <path
                                        d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                                </svg>
                            @endif
                        </button>
                        <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="filterMenu">
                            {{-- <li><button class="dropdown-item">Action</button></li> --}}
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="filterItemDash(1)">Ascending</button></li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="filterItemDash(2)">Descending</button></li>
                        </ul>
                    </div>
                </div>
            </th>
            <th class="align-middle" style="width: 10%">
                <div class="dropdown">
                    <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                        style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">Status
                        @if ($filter == 3)
                            <i class="bi bi-arrow-up"></i>
                        @elseif ($filter == 4)
                            <i class="bi bi-arrow-down"></i>
                        @else
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor"
                                class="bi bi-filter" viewBox="0 0 16 16">
                                <path
                                    d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                            </svg>
                        @endif
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="filterMenu">
                        {{-- <li><button class="dropdown-item">Action</button></li> --}}
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(3)">Ascending</button></li>
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(4)">Descending</button></li>
                        <li><button type='button' class="dropdown-item filterItem" onclick="filterItemDash(21)">Item
                                Belum Proses</button></li>
                        <li><button type='button' class="dropdown-item filterItem" onclick="filterItemDash(22)">Item
                                Selisih (Plus & Minus)</button></li>
                        <li><button type='button' class="dropdown-item filterItem" onclick="filterItemDash(23)">Item
                                Selisih Minus</button></li>
                        <li><button type='button' class="dropdown-item filterItem" onclick="filterItemDash(24)">Item
                                Selisih Plus</button></li>
                        <li><button type='button' class="dropdown-item filterItem" onclick="filterItemDash(25)">Item
                                Ok</button></li>
                    </ul>
                </div>
            </th>
            <th class="align-middle" style="width: 5%">
                <div class="dropdown">
                    <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonSelisih"
                        style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">Selisih
                        @if ($filter == 5)
                            <i class="bi bi-arrow-up"></i>
                        @elseif ($filter == 6)
                            <i class="bi bi-arrow-down"></i>
                        @else
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor"
                                class="bi bi-filter" viewBox="0 0 16 16">
                                <path
                                    d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                            </svg>
                        @endif
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="filterMenu">
                        {{-- <li><button class="dropdown-item">Action</button></li> --}}
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(5)">Ascending</button></li>
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(6)">Descending</button></li>
                    </ul>
                </div>
            </th>
            <th class="align-middle" style="width: 5%">
                <div class="dropdown">
                    <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonOnHand"
                        style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">Onhand
                        @if ($filter == 7)
                            <i class="bi bi-arrow-up"></i>
                        @elseif ($filter == 8)
                            <i class="bi bi-arrow-down"></i>
                        @else
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                                <path
                                    d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                            </svg>
                        @endif
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="filterMenu">
                        {{-- <li><button class="dropdown-item">Action</button></li> --}}
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(7)">Ascending</button></li>
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(8)">Descending</button></li>
                    </ul>
                </div>
            </th>
            <th class="align-middle" style="width: 5%">
                <div class="dropdown">
                    <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonTotalCSO"
                        style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">Total<br>CSO
                        @if ($filter == 9)
                            <i class="bi bi-arrow-up"></i>
                        @elseif ($filter == 10)
                            <i class="bi bi-arrow-down"></i>
                        @else
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                                <path
                                    d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                            </svg>
                        @endif
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="filterMenu">
                        {{-- <li><button class="dropdown-item">Action</button></li> --}}
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(9)">Ascending</button></li>
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(10)">Descending</button></li>
                    </ul>
                </div>
            </th>
            <th class="align-middle" style="width: 5%">
                <div class="dropdown">
                    <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonKoreksi"
                        style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">Koreksi
                        @if ($filter == 11)
                            <i class="bi bi-arrow-up"></i>
                        @elseif ($filter == 12)
                            <i class="bi bi-arrow-down"></i>
                        @else
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                                <path
                                    d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                            </svg>
                        @endif
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="filterMenu">
                        {{-- <li><button class="dropdown-item">Action</button></li> --}}
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(11)">Ascending</button></li>
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(12)">Descending</button></li>
                    </ul>
                </div>
            </th>
            <th class="align-middle" style="width: 5%">
                <div class="dropdown">
                    <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonDeviasi"
                        style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">Deviasi
                        @if ($filter == 13)
                            <i class="bi bi-arrow-up"></i>
                        @elseif ($filter == 14)
                            <i class="bi bi-arrow-down"></i>
                        @else
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                                <path
                                    d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                            </svg>
                        @endif
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="filterMenu">
                        {{-- <li><button class="dropdown-item">Action</button></li> --}}
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(13)">Ascending</button></li>
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(14)">Descending</button></li>
                    </ul>
                </div>
            </th>
            <th class="align-middle" style="width: 5%">
                <div class="dropdown">
                    <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatusCSO"
                        style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">Status <br>CSO
                        @if ($filter == 15)
                            <i class="bi bi-arrow-up"></i>
                        @elseif ($filter == 16)
                            <i class="bi bi-arrow-down"></i>
                        @else
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                                <path
                                    d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                            </svg>
                        @endif
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="filterMenu">
                        {{-- <li><button class="dropdown-item">Action</button></li> --}}
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(15)">Ascending</button></li>
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(16)">Descending</button></li>
                    </ul>
                </div>
            </th>
            <th class="align-middle" style="width: 5%">
                <div class="dropdown">
                    <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonGrouping"
                        style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">Grouping
                        @if ($filter == 17)
                            <i class="bi bi-arrow-up"></i>
                        @elseif ($filter == 18)
                            <i class="bi bi-arrow-down"></i>
                        @else
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                                <path
                                    d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                            </svg>
                        @endif
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="filterMenu">
                        {{-- <li><button class="dropdown-item">Action</button></li> --}}
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(17)">Ascending</button></li>
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(18)">Descending</button></li>
                    </ul>
                </div>
            </th>
            <th class="align-middle" style="width: 5%">
                <div class="dropdown">
                    <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonGrouping"
                        style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">Group <br>Value
                    </button>
                </div>
            </th>
            <th class="align-middle" style="width: 18%">
                <div class="dropdown">
                    <button class="btn btn-sm text-white fw-bold text-center" type="button" id="filterMenu"
                        style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">Analisator
                        @if ($filter == 19)
                            <i class="bi bi-arrow-up"></i>
                        @elseif ($filter == 20)
                            <i class="bi bi-arrow-down"></i>
                        @else
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                                <path
                                    d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                            </svg>
                        @endif
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="filterMenu">
                        {{-- <li><button class="dropdown-item">Action</button></li> --}}
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(19)">Ascending</button></li>
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="filterItemDash(20)">Descending</button></li>
                    </ul>
                </div>
            </th>
            @if($typecekstok == 'CSS')
                <th class="align-middle" style="width: 18%">
                    <div class="dropdown">
                        <button class="btn btn-sm text-white fw-bold text-center" type="button" id="filterMenu"
                            style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">Tanggal
                            {{-- @if ($filter == 19)
                                <i class="bi bi-arrow-up"></i>
                            @elseif ($filter == 20)
                                <i class="bi bi-arrow-down"></i>
                            @else
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                    fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                                    <path
                                        d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                                </svg>
                            @endif --}}
                        </button>
                        {{-- <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="filterMenu">
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="filterItemDash(19)">Ascending</button></li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="filterItemDash(20)">Descending</button></li>
                        </ul> --}}
                    </div>
                </th>
            @endif
        </tr>
    </thead>
    <tbody>
        @foreach ($item as $barang)
            <tr @class([
                'table-warning' => $barang->statusitem == 'TR',
                'table-danger' => in_array($barang->status, [1, 2]),
                'table-light' =>
                    !in_array($barang->status, [1, 2]) && $barang->statusitem != 'TR',
            ])>

                <td hidden>
                    {{ $barang->itemid }}
                </td>
                <td hidden>
                    {{ $barang->itemname }}
                </td>
                <td class="align-middle text-center"> {{ $loop->iteration }}</td>
                <td class="align-middle">
                    <div class="d-flex my-0 align-items-center">
                        <div class="mr-3">
                            <button type="button" class="btn btn-sm" id="detailcsoitem"
                                onclick="openModalDetailCSO(`{{ addslashes($barang->itemname) }}`, {
                                itemid: `{{ $barang->itemid }}`,
                                trsdetid: `{{ $barang->trsdetid }}`,
                                onhand: `{{ $barang->onhand }}`,
                                totalcso: `{{ $barang->totalcso }}`,
                                selisih: `{{ $barang->selisih }}`,
                                koreksi: `{{ $barang->koreksi }}`,
                                deviasi: `{{ $barang->deviasi }}`,
                                keterangan: `{{ $barang->keterangan }}`, 
                                groupValue: `{{ $barang->group_value }}`,                               
                            })"
                                @if ($barang->analisator_checked) style="color: #007cf7" 
                                @else
                                style="color: rgb(81, 81, 81)" @endif
                                id="viewlistcso"><i class="fas fa-eye"></i></button>
                        </div>
                        <div>
                            {{-- @if ($barang->batchno != null)
                                {{ $barang->itemname }} - {{ $barang->batchno }}
                            @else --}}
                            {{ $barang->itemname }}
                            {{-- @endif --}}
                        </div>
                    </div>
                </td>
                <td class="align-middle text-center">
                    @if ($barang->status == 1)
                        <span class='badge  rounded-pill text-bg-danger text-wrap' style='width: 5rem'>selisih min
                        @elseif ($barang->status == 2)
                            <span class='badge  rounded-pill text-bg-danger text-wrap' style='width: 5rem'>selisih plus
                            @elseif ($barang->status == 3)
                                <span class='badge rounded-pill text-bg-success text-wrap' style='width: 5rem'>selesai
                                @else
                                    <span class='badge rounded-pill text-bg-warning text-wrap' style='width: 5rem'>belum
                                        proses
                    @endif
                    </span>
                </td>
                <td class="align-middle text-center">{{ number_format($barang->selisih, 2, ',', '.') }}</td>
                <td class="align-middle text-center">{{ number_format($barang->onhand, 2, ',', '.') }}</td>
                <td class="align-middle text-center">{{ number_format($barang->totalcso, 2, ',', '.') }}</td>
                <td class="align-middle text-center">{{ number_format($barang->koreksi, 2, ',', '.') }}</td>
                <td class="align-middle text-center">{{ number_format($barang->deviasi, 2, ',', '.') }}</td>
                <td class="align-middle text-center">{{ $barang->statuscso }}</td>
                <td class="align-middle text-center">{{ $barang->groupid }}</td>
                <td class="align-middle text-center">{{ $barang->group_value}}</td>
                <td class="align-middle text-center">{{ $barang->analisator }}</td>
                @if($typecekstok == 'CSS')
                    <td class="align-middle text-center" style="font-size:13px">{{ $barang->createddate }}</td>
                @endif
            </tr>
        @endforeach
    </tbody>
</table>
