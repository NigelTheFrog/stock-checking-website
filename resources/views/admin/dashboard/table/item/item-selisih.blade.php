<div id='itemSelisih'>
    <div class='row'>
        <div class='col-sm-3'>

        </div>
        <div class='col-sm-6'>
            <h4 class="modal-title fs-5 text-center pb-3"> Item Selisih Plus</h4>
        </div>
        <div class="col-sm-3 d-inline-flex" style="margin-left:-20px">
            <input class="form-control itemSelisihPlusMinus" id="itemSelisihPlus" type="search" placeholder="Search"
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
                                <div class="sortItemSelisihPlusIcon" id="itemSelisihPlusItemNameIcon">
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
                                    onclick="sortItem(0,2,'tableSelisihPlus','itemSelisihPlusItemNameIcon','sortItemSelisihPlusIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,2,'tableSelisihPlus','itemSelisihPlusItemNameIcon','sortItemSelisihPlusIcon')">Descending</button>
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
                                <div class="sortItemSelisihPlusIcon" id="itemSelisihPlusSelisihIcon">
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
                                    onclick="sortItem(0,3,'tableSelisihPlus','itemSelisihPlusSelisihIcon','sortItemSelisihPlusIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,3,'tableSelisihPlus','itemSelisihPlusSelisihIcon','sortItemSelisihPlusIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusIcon" id="itemSelisihPlusOnHandIcon">
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
                                        onclick="sortItem(0,4,'tableSelisihPlus','itemSelisihPlusOnHandIcon','sortItemSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,4,'tableSelisihPlus','itemSelisihPlusOnHandIcon','sortItemSelisihPlusIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusIcon" id="itemSelisihPlusGradeIcon">
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
                                        onclick="sortItem(0,5,'tableSelisihPlus','itemSelisihPlusGradeIcon','sortItemSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,5,'tableSelisihPlus','itemSelisihPlusGradeIcon','sortItemSelisihPlusIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusIcon" id="itemSelisihPlusTotalCsoIcon">
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
                                        onclick="sortItem(0,6,'tableSelisihPlus','itemSelisihPlusTotalCsoIcon','sortItemSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,6,'tableSelisihPlus','itemSelisihPlusTotalCsoIcon','sortItemSelisihPlusIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusIcon" id="itemSelisihPlusKoreksiIcon">
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
                                        onclick="sortItem(0,7,'tableSelisihPlus','itemSelisihPlusKoreksiIcon','sortItemSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,7,'tableSelisihPlus','itemSelisihPlusKoreksiIcon','sortItemSelisihPlusIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusIcon" id="itemSelisihPlusDeviasiIcon">
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
                                        onclick="sortItem(0,8,'tableSelisihPlus','itemSelisihPlusDeviasiIcon','sortItemSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,8,'tableSelisihPlus','itemSelisihPlusDeviasiIcon','sortItemSelisihPlusIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusIcon" id="itemSelisihPlusStatusCsoIcon">
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
                                        onclick="sortItem(0,9,'tableSelisihPlus','itemSelisihPlusStatusCsoIcon','sortItemSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,9,'tableSelisihPlus','itemSelisihPlusStatusCsoIcon','sortItemSelisihPlusIcon')">Descending</button>
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
                                    {{-- <div class="sortItemSelisihMinusIcon" id="itemSelisihMinusGroupingIcon">
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
                                        onclick="sortItem(0,10,'tableSelisihMinus','itemSelisihMinusGroupingIcon','sortItemSelisihMinusIcon')">Ascending</button>
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
                                    <div class="sortItemSelisihPlusIcon" id="itemSelisihPlusGroupingIcon">
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
                                        onclick="sortItem(0,10,'tableSelisihPlus','itemSelisihPlusGroupingIcon','sortItemSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,10,'tableSelisihPlus','itemSelisihPlusGroupingIcon','sortIItemSelisihPlusIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusIcon" id="itemSelisihPlusAnalisatorIcon">
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
                                        onclick="sortItem(0,11,'tableSelisihPlus','itemSelisihPlusAnalisatorIcon','sortItemSelisihPlusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,11,'tableSelisihPlus','itemSelisihPlusAnalisatorIcon','sortItemSelisihPlusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
            </tr>
        </thead>
        <tbody>
             
            @foreach ($itemSelisihPlus as $barang)
                <tr>
                    <td class="align-middle text-center">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input checkboxitemselisih" value="{{ $barang->trsdetid }}">
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
            <input class="form-control itemSelisihPlusMinus" id="itemSelisihMinus" type="search" placeholder="Search"
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
                                <div class="sortItemSelisihMinusIcon" id="itemSelisihMinusItemNameIcon">
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
                                    onclick="sortItem(0,2,'tableSelisihMinus','itemSelisihMinusItemNameIcon','sortItemSelisihMinusIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,2,'tableSelisihMinus','itemSelisihMinusItemNameIcon','sortItemSelisihMinusIcon')">Descending</button>
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
                                <div class="sortItemSelisihMinusIcon" id="itemSelisihMinusSelisihIcon">
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
                                    onclick="sortItem(0,3,'tableSelisihMinus','itemSelisihMinusSelisihIcon','sortItemSelisihMinusIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,3,'tableSelisihMinus','itemSelisihMinusSelisihIcon','sortItemSelisihMinusIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusIcon" id="itemSelisihMinusOnHandIcon">
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
                                        onclick="sortItem(0,4,'tableSelisihMinus','itemSelisihMinusOnHandIcon','sortItemSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,4,'tableSelisihMinus','itemSelisihMinusOnHandIcon','sortItemSelisihMinusIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusIcon" id="itemSelisihMinusGradeIcon">
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
                                        onclick="sortItem(0,5,'tableSelisihMinus','itemSelisihMinusGradeIcon','sortItemSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,5,'tableSelisihMinus','itemSelisihMinusGradeIcon','sortItemSelisihMinusIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusIcon" id="itemSelisihMinusTotalCsoIcon">
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
                                        onclick="sortItem(0,6,'tableSelisihMinus','itemSelisihMinusTotalCsoIcon','sortItemSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,6,'tableSelisihMinus','itemSelisihMinusTotalCsoIcon','sortItemSelisihMinusIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusIcon" id="itemSelisihMinusKoreksiIcon">
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
                                        onclick="sortItem(0,7,'tableSelisihMinus','itemSelisihMinusKoreksiIcon','sortItemSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,7,'tableSelisihMinus','itemSelisihMinusKoreksiIcon','sortItemSelisihMinusIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusIcon" id="itemSelisihMinusDeviasiIcon">
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
                                        onclick="sortItem(0,8,'tableSelisihMinus','itemSelisihMinusDeviasiIcon','sortItemSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,8,'tableSelisihMinus','itemSelisihMinusDeviasiIcon','sortItemSelisihMinusIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusIcon" id="itemSelisihMinusStatusCsoIcon">
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
                                        onclick="sortItem(0,9,'tableSelisihMinus','itemSelisihMinusStatusCsoIcon','sortItemSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,9,'tableSelisihMinus','itemSelisihMinusStatusCsoIcon','sortItemSelisihMinusIcon')">Descending</button>
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
                                    {{-- <div class="sortItemSelisihMinusIcon" id="itemSelisihMinusGroupingIcon">
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
                                        onclick="sortItem(0,10,'tableSelisihMinus','itemSelisihMinusGroupingIcon','sortItemSelisihMinusIcon')">Ascending</button>
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
                                    <div class="sortItemSelisihMinusIcon" id="itemSelisihMinusGroupingIcon">
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
                                        onclick="sortItem(0,10,'tableSelisihMinus','itemSelisihMinusGroupingIcon','sortItemSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,10,'tableSelisihMinus','itemSelisihMinusGroupingIcon','sortIItemSelisihMinusIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusIcon" id="itemSelisihMinusAnalisatorIcon">
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
                                        onclick="sortItem(0,11,'tableSelisihMinus','itemSelisihMinusAnalisatorIcon','sortItemSelisihMinusIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,11,'tableSelisihMinus','itemSelisihMinusAnalisatorIcon','sortItemSelisihMinusIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
            </tr>
        </thead>
        <tbody>
             
            @foreach ($itemSelisihMinus as $barang)
                <tr>
                    <td class="align-middle text-center">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input checkboxitemselisih" value="{{ $barang->trsdetid }}">
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
