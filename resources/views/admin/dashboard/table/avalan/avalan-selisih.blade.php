{{-- <div>
    <h4 class="modal-title fs-5"> Avalan Selisih Plus</h4>
    <table class="table table-sm table-bordered table-hover table-responsive small table-striped">
        <thead class="table-dark">
            <tr class="text-center ">
                <th class="align-middle" style="width: 15%">Nama Item</th>
                <th class="align-middle" style="width: 5%">Dimension</th>
                <th class="align-middle" style="width: 5%">Tolerance</th>
                <th class="align-middle" style="width: 5%">Selisih</th>
                <th class="align-middle" style="width: 5%">Onhand</th>
                <th class="align-middle" style="width: 2%">Total CSO</th>
                <th class="align-middle" style="width: 3%">Koreksi</th>
                <th class="align-middle" style="width: 3%">Deviasi</th>
                <th class="align-middle" style="width: 2%">Status CSO</th>
                <th class="align-middle" style="width: 14%">Grouping</th>
                <th class="align-middle" style="width: 16%">Analisator</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($avalanSelisihPlus as $barang)
                <tr>
                    <td>{{ $barang->itemname }}</td>
                    <td class="align-middle text-center">{{ $barang->dimension }}</td>
                    <td class="align-middle text-center">{{ $barang->tolerance }}</td>
                    <td class="align-middle text-center">{{ $barang->selisih }}</td>
                    <td class="align-middle text-center">{{ $barang->onhand }}</td>
                    <td class="align-middle text-center">{{ $barang->totalcso }}</td>
                    <td class="align-middle text-center">{{ $barang->koreksi }}</td>
                    <td class="align-middle text-center">{{ $barang->deviasi }}</td>
                    <td class="align-middle text-center">{{ $barang->statuscso }}</td>
                    <td class="align-middle text-center">
                        <select class="form-select" name="groupplus[]" id="">
                            <option value="" selected>--Pilih Group --</option>
                            @foreach ($dbmgroup as $group)
                                @if ($group->groupid == $barang->groupid)
                                    <option value="{{ $barang->trsdetid }},{{ $group->groupid }}" selected>
                                        {{ $group->groupdesc }}</option>
                                @else
                                    <option value="{{ $barang->trsdetid }},{{ $group->groupid }}">
                                        {{ $group->groupdesc }}</option>
                                @endif
                            @endforeach
                        </select>
                    </td>
                    <td class="align-middle text-center">
                        <select class="form-select" name="analisatorplus[]" id="">
                            <option value="" selected>--Pilih Analisator --</option>
                            @foreach ($dbxjob as $user)
                                @if ($user->userid == $barang->analisatorid)
                                    <option value="{{ $barang->trsdetid }},{{ $user->userid }}" selected>
                                        {{ $user->name }}</option>
                                @else
                                    <option value="{{ $barang->trsdetid }},{{ $user->userid }}">{{ $user->name }}
                                    </option>
                                @endif
                            @endforeach
                        </select>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>

<div class="pt-2">
    <h4 class="modal-title fs-5"> Avalan Selisih Minus</h4>
    <table class="table table-sm table-bordered table-hover table-responsive small table-striped">
        <thead class="table-dark">
            <tr class="text-center ">
                <th class="align-middle" style="width: 15%">Nama Item</th>
                <th class="align-middle" style="width: 5%">Dimension</th>
                <th class="align-middle" style="width: 5%">Tolerance</th>
                <th class="align-middle" style="width: 5%">Selisih</th>
                <th class="align-middle" style="width: 5%">Onhand</th>
                <th class="align-middle" style="width: 2%">Total CSO</th>
                <th class="align-middle" style="width: 3%">Koreksi</th>
                <th class="align-middle" style="width: 3%">Deviasi</th>
                <th class="align-middle" style="width: 2%">Status CSO</th>
                <th class="align-middle" style="width: 14%">Grouping</th>
                <th class="align-middle" style="width: 16%">Analisator</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($avalanSelisihMinus as $barang)
                <tr>
                    <td>{{ $barang->itemname }}</td>
                    <td class="align-middle text-center">{{ $barang->dimension }}</td>
                    <td class="align-middle text-center">{{ $barang->tolerance }}</td>
                    <td class="align-middle text-center">{{ $barang->selisih }}</td>
                    <td class="align-middle text-center">{{ $barang->onhand }}</td>
                    <td class="align-middle text-center">{{ $barang->totalcso }}</td>
                    <td class="align-middle text-center">{{ $barang->koreksi }}</td>
                    <td class="align-middle text-center">{{ $barang->deviasi }}</td>
                    <td class="align-middle text-center">{{ $barang->statuscso }}</td>
                    <td class="align-middle text-center">
                        <select class="form-select" name="groupminus[]" id="">
                            <option value="" selected>--Pilih Group --</option>
                            @foreach ($dbmgroup as $group)
                                @if ($group->groupid == $barang->groupid)
                                    <option value="{{ $barang->trsdetid }},{{ $group->groupid }}" selected>
                                        {{ $group->groupdesc }}</option>
                                @else
                                    <option value="{{ $barang->trsdetid }},{{ $group->groupid }}">
                                        {{ $group->groupdesc }}</option>
                                @endif
                            @endforeach
                        </select>
                    </td>
                    <td class="align-middle text-center">
                        <select class="form-select" name="analisatorminus[]" id="">
                            <option value="" selected>--Pilih Analisator --</option>
                            @foreach ($dbxjob as $user)
                                @if ($user->userid == $barang->analisatorid)
                                    <option value="{{ $barang->trsdetid }},{{ $user->userid }}" selected>
                                        {{ $user->name }}</option>
                                @else
                                    <option value="{{ $barang->trsdetid }},{{ $user->userid }}">{{ $user->name }}
                                    </option>
                                @endif
                            @endforeach
                        </select>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div> --}}

<div id='itemSelisih'>
    <div class='row'>
        <div class='col-sm-3'>

        </div>
        <div class='col-sm-6'>
            <h4 class="modal-title fs-5 text-center pb-3"> Item Selisih Plus</h4>
        </div>
        <div class="col-sm-3 d-inline-flex" style="margin-left:-20px">
            <input class="form-control batchSelisihPlusMinus" id="batchSelisihPlus" type="search" placeholder="Search"
            aria-label="Search" >
        </div>
    </div>
    <table class="table table-sm table-bordered table-hover table-responsive small table-striped" id="tableSelisihPlus">
        <thead class="table-dark">
            <tr class="text-center ">
                <th class="align-middle text-center" style="width: 2%"></th>
                <th class="align-middle text-center" style="width: 2%">No</th>
                <th class="align-middle" style="width: 15%">
                    <div class="dropdown">
                        <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                            style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                            <div class="d-flex">
                                Nama Item
                                <div class="sortBatchSelisihPlusIcon" id="batchSelisihPlusItemNameIcon">
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
                                    onclick="sortItem(0,2,'tableSelisihPlus','batchSelisihPlusItemNameIcon','sortBatchSelisihPlusIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,2,'tableSelisihPlus','batchSelisihPlusItemNameIcon','sortBatchSelisihPlusIcon')">Descending</button>
                            </li>
                        </ul>
                    </div>
                </th>
                <th class="align-middle" style="width: 5%">
                    <div class="dropdown">
                        <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                            style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                            <div class="d-flex">
                                Selisih
                                <div class="sortBatchSelisihPlusIcon" id="batchSelisihPlusSelisihIcon">
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
                                    onclick="sortItem(0,3,'tableSelisihPlus','batchSelisihPlusSelisihIcon','sortBatchSelisihPlusIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,3,'tableSelisihPlus','batchSelisihPlusSelisihIcon','sortBatchSelisihPlusIcon')">Descending</button>
                            </li>
                        </ul>
                    </div>
                </th>
                <th class="align-middle" style="width: 5%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    On Hand
                                    <div class="sortBatchSelisihPlusIcon" id="batchSelisihPlusOnHandIcon">
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
                                        onclick="sortItem(0,4,'tableSelisihPlus','batchSelisihPlusOnHandIcon','sortBatchSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,4,'tableSelisihPlus','batchSelisihPlusOnHandIcon','sortBatchSelisihPlusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
                <th class="align-middle" style="width: 2%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Grade
                                    <div class="sortBatchSelisihPlusIcon" id="batchSelisihPlusGradeIcon">
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
                                        onclick="sortItem(0,5,'tableSelisihPlus','batchSelisihPlusGradeIcon','sortBatchSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,5,'tableSelisihPlus','batchSelisihPlusGradeIcon','sortBatchSelisihPlusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>                
                </th>
                <th class="align-middle" style="width: 2%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Total CSO
                                    <div class="sortBatchSelisihPlusIcon" id="batchSelisihPlusTotalCsoIcon">
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
                                        onclick="sortItem(0,6,'tableSelisihPlus','batchSelisihPlusTotalCsoIcon','sortBatchSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,6,'tableSelisihPlus','batchSelisihPlusTotalCsoIcon','sortBatchSelisihPlusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>                
                </th>
                <th class="align-middle" style="width: 3%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Koreksi
                                    <div class="sortBatchSelisihPlusIcon" id="batchSelisihPlusKoreksiIcon">
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
                                        onclick="sortItem(0,7,'tableSelisihPlus','batchSelisihPlusKoreksiIcon','sortBatchSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,7,'tableSelisihPlus','batchSelisihPlusKoreksiIcon','sortBatchSelisihPlusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>                
                </th>
                <th class="align-middle" style="width: 3%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Deviasi
                                    <div class="sortBatchSelisihPlusIcon" id="batchSelisihPlusDeviasiIcon">
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
                                        onclick="sortItem(0,8,'tableSelisihPlus','batchSelisihPlusDeviasiIcon','sortBatchSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,8,'tableSelisihPlus','batchSelisihPlusDeviasiIcon','sortBatchSelisihPlusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
                <th class="align-middle" style="width: 2%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Status CSO
                                    <div class="sortBatchSelisihPlusIcon" id="batchSelisihPlusStatusCsoIcon">
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
                                        onclick="sortItem(0,9,'tableSelisihPlus','batchSelisihPlusStatusCsoIcon','sortBatchSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,9,'tableSelisihPlus','batchSelisihPlusStatusCsoIcon','sortBatchSelisihPlusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>                
                </th>
                <th class="align-middle" style="width: 14%">    
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Grouping <br> value
                                    {{-- <div class="sortBatchSelisihMinusIcon" id="itemSelisihMinusGroupingIcon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                            fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                                            <path
                                                d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                                        </svg>
                                    </div> --}}
                                </div>
                            </button>
                            {{-- <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="filterMenu">
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(0,10,'tableSelisihMinus','itemSelisihMinusGroupingIcon','sortBatchSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,10,'tableSelisihMinus','itemSelisihMinusGroupingIcon','sortIItemSelisihMinusIcon')">Descending</button>
                                </li>
                            </ul> --}}
                        </div>
                    </div>
                </th>
                <th class="align-middle" style="width: 14%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Grouping
                                    <div class="sortBatchSelisihPlusIcon" id="batchSelisihPlusGroupingIcon">
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
                                        onclick="sortItem(0,10,'tableSelisihPlus','batchSelisihPlusGroupingIcon','sortBatchSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,10,'tableSelisihPlus','batchSelisihPlusGroupingIcon','sortBatchSelisihPlusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
                <th class="align-middle" style="width: 16%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Analisator
                                    <div class="sortBatchSelisihPlusIcon" id="batchSelisihPlusAnalisatorIcon">
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
                                        onclick="sortItem(0,11,'tableSelisihPlus','batchSelisihPlusAnalisatorIcon','sortBatchSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,11,'tableSelisihPlus','batchSelisihPlusAnalisatorIcon','sortBatchSelisihPlusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
            </tr>
        </thead>
        <tbody>
             
            @foreach ($batchSelisihPlus as $barang)
                <tr>
                    <td class="align-middle text-center">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input checkboxBatchselisih" value="{{ $barang->trsdetid }}">
                        </div>    
                    </td>
                    <td class="align-middle text-center">{{ $loop->iteration }}</td>
                    <td>{{ $barang->itemname }}</td>
                    <td class="align-middle text-center">{{ $barang->selisih }}</td>
                    <td class="align-middle text-center">{{ $barang->onhand }}</td>
                    <td class="align-middle text-center">
                        @if($barang->grade !='' && $barang->grade != NULL)
                            {{ $barang->grade }}    
                        @else
                            -
                        @endif
                    </td>
                    <td class="align-middle text-center">{{ $barang->totalcso }}</td>
                    <td class="align-middle text-center">{{ $barang->koreksi }}</td>
                    <td class="align-middle text-center">{{ $barang->deviasi }}</td>
                    <td class="align-middle text-center">{{ $barang->statuscso }}</td>
                    <td class="align-middle text-center"><input type="number" class="form-control form-control-sm"
                        name="groupValuePlus[]" id='groupValueBannerInput{{$barang->trsdetid}}' 
                        @if($barang->groupid==0 || $barang->groupid==NULL) 
                        disabled value=''
                        @else
                        value='{{$barang->group_value}}'
                        @endif
                        ></td>
                    <td class="align-middle text-center">
                        <select class="form-select" name="groupplus[]" id="groupingIdBanner" onchange="groupValueBanner(this,{{$barang->trsdetid}})">
                            <option value="" selected>--Pilih Group --</option>
                            @foreach ($dbmgroup as $group)
                                @if ($group->groupid == $barang->groupid)
                                    <option value="{{ $barang->trsdetid }},{{ $group->groupid }}" selected>
                                        {{ $group->groupdesc }}</option>
                                @else
                                    <option value="{{ $barang->trsdetid }},{{ $group->groupid }}">
                                        {{ $group->groupdesc }}</option>
                                @endif
                            @endforeach
                        </select>
                    </td>
                    <td class="align-middle text-center">
                        <select class="form-select" name="analisatorplus[]" id="">
                            <option value="" selected>--Pilih Analisator --</option>
                            @foreach ($dbxjob as $user)
                                @if ($user->userid == $barang->analisatorid)
                                    <option value="{{ $barang->trsdetid }},{{ $user->userid }}" selected>
                                        {{ $user->name }}</option>
                                @else
                                    <option value="{{ $barang->trsdetid }},{{ $user->userid }}">{{ $user->name }}
                                    </option>
                                @endif
                            @endforeach
                        </select>

                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>

<div class="pt-2">
    <div class='row'>
        <div class='col-sm-3'>

        </div>
        <div class='col-sm-6'>
            <h4 class="modal-title fs-5 text-center pb-3"> Item Selisih Minus</h4>
        </div>
        <div class="col-sm-3 d-inline-flex" style="margin-left:-20px">
            <input class="form-control batchSelisihPlusMinus" id="batchSelisihMinus" type="search" placeholder="Search"
            aria-label="Search">
        </div>
    </div>
    <table class="table table-sm table-bordered table-hover table-responsive small table-striped" id="tableSelisihMinus">
        <thead class="table-dark">
            <tr class="text-center ">
                <th class="align-middle text-center" style="width: 2%"></th>
                <th class="align-middle text-center" style="width: 2%">No</th>
                <th class="align-middle" style="width: 15%">
                    <div class="dropdown">
                        <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                            style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                            <div class="d-flex">
                                Nama Item
                                <div class="sortBatchSelisihMinusIcon" id="batchSelisihMinusItemNameIcon">
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
                                    onclick="sortItem(0,2,'tableSelisihMinus','batchSelisihMinusItemNameIcon','sortBatchSelisihMinusIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,2,'tableSelisihMinus','batchSelisihMinusItemNameIcon','sortBatchSelisihMinusIcon')">Descending</button>
                            </li>
                        </ul>
                    </div>
                </th>
                <th class="align-middle" style="width: 5%">
                    <div class="dropdown">
                        <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                            style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                            <div class="d-flex">
                                Selisih
                                <div class="sortBatchSelisihMinusIcon" id="batchSelisihMinusSelisihIcon">
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
                                    onclick="sortItem(0,3,'tableSelisihMinus','batchSelisihMinusSelisihIcon','sortBatchSelisihMinusIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,3,'tableSelisihMinus','batchSelisihMinusSelisihIcon','sortBatchSelisihMinusIcon')">Descending</button>
                            </li>
                        </ul>
                    </div>
                </th>
                <th class="align-middle" style="width: 5%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    On Hand
                                    <div class="sortBatchSelisihMinusIcon" id="batchSelisihMinusOnHandIcon">
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
                                        onclick="sortItem(0,4,'tableSelisihMinus','batchSelisihMinusOnHandIcon','sortBatchSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,4,'tableSelisihMinus','batchSelisihMinusOnHandIcon','sortBatchSelisihMinusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
                <th class="align-middle" style="width: 2%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Grade
                                    <div class="sortBatchSelisihMinusIcon" id="batchSelisihMinusGradeIcon">
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
                                        onclick="sortItem(0,5,'tableSelisihMinus','batchSelisihMinusGradeIcon','sortBatchSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,5,'tableSelisihMinus','batchSelisihMinusGradeIcon','sortBatchSelisihMinusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>                
                </th>
                <th class="align-middle" style="width: 2%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Total CSO
                                    <div class="sortBatchSelisihMinusIcon" id="batchSelisihMinusTotalCsoIcon">
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
                                        onclick="sortItem(0,6,'tableSelisihMinus','batchSelisihMinusTotalCsoIcon','sortBatchSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,6,'tableSelisihMinus','batchSelisihMinusTotalCsoIcon','sortBatchSelisihMinusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>                
                </th>
                <th class="align-middle" style="width: 3%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Koreksi
                                    <div class="sortBatchSelisihMinusIcon" id="batchSelisihMinusKoreksiIcon">
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
                                        onclick="sortItem(0,7,'tableSelisihMinus','batchSelisihMinusKoreksiIcon','sortBatchSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,7,'tableSelisihMinus','batchSelisihMinusKoreksiIcon','sortBatchSelisihMinusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>                
                </th>
                <th class="align-middle" style="width: 3%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Deviasi
                                    <div class="sortBatchSelisihMinusIcon" id="batchSelisihMinusDeviasiIcon">
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
                                        onclick="sortItem(0,8,'tableSelisihMinus','batchSelisihMinusDeviasiIcon','sortBatchSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,8,'tableSelisihMinus','batchSelisihMinusDeviasiIcon','sortBatchSelisihMinusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
                <th class="align-middle" style="width: 2%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Status CSO
                                    <div class="sortBatchSelisihMinusIcon" id="batchSelisihMinusStatusCsoIcon">
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
                                        onclick="sortItem(0,9,'tableSelisihMinus','batchSelisihMinusStatusCsoIcon','sortBatchSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,9,'tableSelisihMinus','batchSelisihMinusStatusCsoIcon','sortBatchSelisihMinusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>                
                </th>
                <th class="align-middle" style="width: 14%">    
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Grouping <br> value
                                    {{-- <div class="sortBatchSelisihMinusIcon" id="batchSelisihMinusGroupingIcon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                            fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                                            <path
                                                d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                                        </svg>
                                    </div> --}}
                                </div>
                            </button>
                            {{-- <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="filterMenu">
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(0,10,'tableSelisihMinus','batchSelisihMinusGroupingIcon','sortBatchSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,10,'tableSelisihMinus','batchSelisihMinusGroupingIcon','sortIbatchSelisihMinusIcon')">Descending</button>
                                </li>
                            </ul> --}}
                        </div>
                    </div>
                </th>
                <th class="align-middle" style="width: 14%">    
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Grouping
                                    <div class="sortBatchSelisihMinusIcon" id="batchSelisihMinusGroupingIcon">
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
                                        onclick="sortItem(0,10,'tableSelisihMinus','batchSelisihMinusGroupingIcon','sortBatchSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,10,'tableSelisihMinus','batchSelisihMinusGroupingIcon','sortBatchSelisihMinusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
                <th class="align-middle" style="width: 16%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Analisator
                                    <div class="sortBatchSelisihMinusIcon" id="batchSelisihMinusAnalisatorIcon">
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
                                        onclick="sortItem(0,11,'tableSelisihMinus','batchSelisihMinusAnalisatorIcon','sortBatchSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,11,'tableSelisihMinus','batchSelisihMinusAnalisatorIcon','sortBatchSelisihMinusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
            </tr>
        </thead>
        <tbody>
             
            @foreach ($batchSelisihMinus as $barang)
                <tr>
                    <td class="align-middle text-center">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input checkboxBatchselisih" value="{{ $barang->trsdetid }}">
                        </div>    
                    </td>
                    <td class="align-middle text-center">{{ $loop->iteration }}</td>
                    <td>{{ $barang->itemname }}</td>
                    <td class="align-middle text-center">{{ $barang->selisih }}</td>
                    <td class="align-middle text-center">{{ $barang->onhand }}</td>
                    <td class="align-middle text-center">
                        @if($barang->grade !='' && $barang->grade != NULL)
                            {{ $barang->grade }}    
                        @else
                            -
                        @endif
                    </td>
                    <td class="align-middle text-center">{{ $barang->totalcso }}</td>
                    <td class="align-middle text-center">{{ $barang->koreksi }}</td>
                    <td class="align-middle text-center">{{ $barang->deviasi }}</td>
                    <td class="align-middle text-center">{{ $barang->statuscso }}</td>
                    <td class="align-middle text-center">
                        <input type="number" class="form-control form-control-sm"
                        name="groupValueMinus[]" id='groupValueBannerInput{{$barang->trsdetid}}' 
                        @if($barang->groupid==0 || $barang->groupid==NULL) 
                        disabled value=''
                        @else
                        value='{{$barang->group_value}}'
                        @endif
                        ></td>
                    <td class="align-middle text-center">
                        <select class="form-select" name="groupminus[]" id="groupingIdBanner" onchange="groupValueBanner(this,{{$barang->trsdetid}})">
                            <option value="" selected>--Pilih Group --</option>
                            @foreach ($dbmgroup as $group)
                                @if ($group->groupid == $barang->groupid)
                                    <option value="{{ $barang->trsdetid }},{{ $group->groupid }}" selected>
                                        {{ $group->groupdesc }}</option>
                                @else
                                    <option value="{{ $barang->trsdetid }},{{ $group->groupid }}">
                                        {{ $group->groupdesc }}</option>
                                @endif
                            @endforeach
                        </select>
                    </td>
                    <td class="align-middle text-center">
                        <select class="form-select" name="analisatorminus[]" id="">
                            <option value="" selected>--Pilih Analisator --</option>
                            @foreach ($dbxjob as $user)
                                @if ($user->userid == $barang->analisatorid)
                                    <option value="{{ $barang->trsdetid }},{{ $user->userid }}" selected>
                                        {{ $user->name }}</option>
                                @else
                                    <option value="{{ $barang->trsdetid }},{{ $user->userid }}">{{ $user->name }}
                                    </option>
                                @endif
                            @endforeach
                        </select>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
