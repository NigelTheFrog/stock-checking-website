<div id='itemSelisih'>
    <div class='row'>
        <div class='col-sm-3'>

        </div>
        <div class='col-sm-6'>
            <h4 class="modal-title fs-5 text-center pb-3"> Item Selisih Plus</h4>
        </div>
        <div class="col-sm-3 d-inline-flex" style="margin-left:-20px">
            <input class="form-control itemSelisihPlusMinusNok" id="itemSelisihPlusNok" type="search" placeholder="Search"
            aria-label="Search" >
        </div>
    </div>
    <table class="table table-sm table-bordered table-hover table-responsive small table-striped" id="tableSelisihPlusNok">
        <thead class="table-dark">
            <tr class="text-center ">
                <th class="align-middle text-center" style="width: 2%"></th>
                <th class="align-middle text-center" style="width: 2%">No</th>
                <th class="align-middle" style="width: 15%">
                    <div class="dropdown">
                        <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                            style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                            <div class="d-flex">
                                Item Code
                                <div class="sortItemSelisihPlusNokIcon" id="itemSelisihPlusNokItemCodeIcon">
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
                                    onclick="sortItem(0,2,'tableSelisihPlusNok','itemSelisihPlusNokItemCodeIcon','sortItemSelisihPlusNokIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,2,'tableSelisihPlusNok','itemSelisihPlusNokItemCodeIcon','sortItemSelisihPlusNokIcon')">Descending</button>
                            </li>
                        </ul>
                    </div>
                </th>
                <th class="align-middle" style="width: 15%">
                    <div class="dropdown">
                        <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                            style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                            <div class="d-flex">
                                Nama Item
                                <div class="sortItemSelisihPlusNokIcon" id="itemSelisihPlusNokItemNameIcon">
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
                                    onclick="sortItem(0,3,'tableSelisihPlusNok','itemSelisihPlusNokItemNameIcon','sortItemSelisihPlusNokIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,3,'tableSelisihPlusNok','itemSelisihPlusNokItemNameIcon','sortItemSelisihPlusNokIcon')">Descending</button>
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
                                <div class="sortItemSelisihPlusNokIcon" id="itemSelisihPlusNokSelisihIcon">
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
                                    onclick="sortItem(0,4,'tableSelisihPlusNok','itemSelisihPlusNokSelisihIcon','sortItemSelisihPlusNokIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,4,'tableSelisihPlusNok','itemSelisihPlusNokSelisihIcon','sortItemSelisihPlusNokIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusNokIcon" id="itemSelisihPlusNokOnHandIcon">
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
                                        onclick="sortItem(0,5,'tableSelisihPlusNok','itemSelisihPlusNokOnHandIcon','sortItemSelisihPlusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,5,'tableSelisihPlusNok','itemSelisihPlusNokOnHandIcon','sortItemSelisihPlusNokIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
                {{-- <th class="align-middle" style="width: 2%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Grade
                                    <div class="sortItemSelisihPlusNokIcon" id="itemSelisihPlusNokGradeIcon">
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
                                        onclick="sortItem(0,5,'tableSelisihPlusNok','itemSelisihPlusNokGradeIcon','sortItemSelisihPlusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,5,'tableSelisihPlusNok','itemSelisihPlusNokGradeIcon','sortItemSelisihPlusNokIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>                
                </th> --}}
                <th class="align-middle" style="width: 2%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Total CSO
                                    <div class="sortItemSelisihPlusNokIcon" id="itemSelisihPlusNokTotalCsoIcon">
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
                                        onclick="sortItem(0,6,'tableSelisihPlusNok','itemSelisihPlusNokTotalCsoIcon','sortItemSelisihPlusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,6,'tableSelisihPlusNok','itemSelisihPlusNokTotalCsoIcon','sortItemSelisihPlusNokIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusNokIcon" id="itemSelisihPlusNokKoreksiIcon">
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
                                        onclick="sortItem(0,7,'tableSelisihPlusNok','itemSelisihPlusNokKoreksiIcon','sortItemSelisihPlusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,7,'tableSelisihPlusNok','itemSelisihPlusNokKoreksiIcon','sortItemSelisihPlusNokIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>                
                </th>
                {{-- <th class="align-middle" style="width: 3%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Deviasi
                                    <div class="sortItemSelisihPlusNokIcon" id="itemSelisihPlusNokDeviasiIcon">
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
                                        onclick="sortItem(0,8,'tableSelisihPlusNok','itemSelisihPlusNokDeviasiIcon','sortItemSelisihPlusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,8,'tableSelisihPlusNok','itemSelisihPlusNokDeviasiIcon','sortItemSelisihPlusNokIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th> --}}
                <th class="align-middle" style="width: 2%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Status CSO
                                    <div class="sortItemSelisihPlusNokIcon" id="itemSelisihPlusNokStatusCsoIcon">
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
                                        onclick="sortItem(0,8,'tableSelisihPlusNok','itemSelisihPlusNokStatusCsoIcon','sortItemSelisihPlusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,8,'tableSelisihPlusNok','itemSelisihPlusNokStatusCsoIcon','sortItemSelisihPlusNokIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusNokIcon" id="itemSelisihPlusNokGroupingIcon">
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
                                        onclick="sortItem(0,10,'tableSelisihPlusNok','itemSelisihPlusNokGroupingIcon','sortItemSelisihPlusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,10,'tableSelisihPlusNok','itemSelisihPlusNokGroupingIcon','sortIItemSelisihPlusNokIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusNokIcon" id="itemSelisihPlusNokAnalisatorIcon">
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
                                        onclick="sortItem(0,11,'tableSelisihPlusNok','itemSelisihPlusNokAnalisatorIcon','sortItemSelisihPlusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,11,'tableSelisihPlusNok','itemSelisihPlusNokAnalisatorIcon','sortItemSelisihPlusNokIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
            </tr>
        </thead>
        <tbody>
             
            @foreach ($itemSelisihPlusNok as $barang)
                <tr>
                    <td class="align-middle text-center">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input checkboxItemSelisihNok" value="{{ $barang->trsdetid }}">
                        </div>    
                    </td>
                    <td class="align-middle text-center">{{ $loop->iteration }}</td>
                    <td>{{ $barang->itemcode }}</td>
                    <td>{{ $barang->itemname }}</td>
                    <td class="align-middle text-center">{{ $barang->selisih }}</td>
                    <td class="align-middle text-center">{{ $barang->onhand }}</td>
                    {{-- <td class="align-middle text-center">
                        @if($barang->grade !='' && $barang->grade != NULL)
                            {{ $barang->grade }}    
                        @else
                            -
                        @endif
                    </td> --}}
                    <td class="align-middle text-center">{{ $barang->totalcso }}</td>
                    <td class="align-middle text-center">{{ $barang->koreksi }}</td>
                    {{-- <td class="align-middle text-center">{{ $barang->deviasi }}</td> --}}
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
            <input class="form-control itemSelisihPlusMinusNok" id="itemSelisihMinusNok" type="search" placeholder="Search"
            aria-label="Search">
        </div>
    </div>
    <table class="table table-sm table-bordered table-hover table-responsive small table-striped" id="tableSelisihMinusNok">
        <thead class="table-dark">
            <tr class="text-center ">
                <th class="align-middle text-center" style="width: 2%"></th>
                <th class="align-middle text-center" style="width: 2%">No</th>
                <th class="align-middle" style="width: 15%">
                    <div class="dropdown">
                        <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                            style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                            <div class="d-flex">
                                Item Code
                                <div class="sortItemSelisihMinusNokIcon" id="itemSelisihMinusNokItemCodeIcon">
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
                                    onclick="sortItem(0,2,'tableSelisihMinusNok','itemSelisihMinusNokItemCodeIcon','sortItemSelisihMinusNokIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,2,'tableSelisihMinusNok','itemSelisihMinusNokItemCodeIcon','sortItemSelisihMinusNokIcon')">Descending</button>
                            </li>
                        </ul>
                    </div>
                </th>
                <th class="align-middle" style="width: 15%">
                    <div class="dropdown">
                        <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                            style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                            <div class="d-flex">
                                Nama Item
                                <div class="sortItemSelisihMinusNokIcon" id="itemSelisihMinusNokItemNameIcon">
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
                                    onclick="sortItem(0,3,'tableSelisihMinusNok','itemSelisihMinusNokItemNameIcon','sortItemSelisihMinusNokIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,3,'tableSelisihMinusNok','itemSelisihMinusNokItemNameIcon','sortItemSelisihMinusNokIcon')">Descending</button>
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
                                <div class="sortItemSelisihMinusNokIcon" id="itemSelisihMinusNokSelisihIcon">
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
                                    onclick="sortItem(0,4,'tableSelisihMinusNok','itemSelisihMinusNokSelisihIcon','sortItemSelisihMinusNokIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,4,'tableSelisihMinusNok','itemSelisihMinusNokSelisihIcon','sortItemSelisihMinusNokIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusNokIcon" id="itemSelisihMinusNokOnHandIcon">
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
                                        onclick="sortItem(0,5,'tableSelisihMinusNok','itemSelisihMinusNokOnHandIcon','sortItemSelisihMinusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,5,'tableSelisihMinusNok','itemSelisihMinusNokOnHandIcon','sortItemSelisihMinusNokIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
                {{-- <th class="align-middle" style="width: 2%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Grade
                                    <div class="sortItemSelisihMinusNokIcon" id="itemSelisihMinusNokGradeIcon">
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
                                        onclick="sortItem(0,5,'tableSelisihMinusNok','itemSelisihMinusNokGradeIcon','sortItemSelisihMinusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,5,'tableSelisihMinusNok','itemSelisihMinusNokGradeIcon','sortItemSelisihMinusNokIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>                
                </th> --}}
                <th class="align-middle" style="width: 2%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Total CSO
                                    <div class="sortItemSelisihMinusNokIcon" id="itemSelisihMinusNokTotalCsoIcon">
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
                                        onclick="sortItem(0,6,'tableSelisihMinusNok','itemSelisihMinusNokTotalCsoIcon','sortItemSelisihMinusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,6,'tableSelisihMinusNok','itemSelisihMinusNokTotalCsoIcon','sortItemSelisihMinusNokIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusNokIcon" id="itemSelisihMinusNokKoreksiIcon">
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
                                        onclick="sortItem(0,7,'tableSelisihMinusNok','itemSelisihMinusNokKoreksiIcon','sortItemSelisihMinusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,7,'tableSelisihMinusNok','itemSelisihMinusNokKoreksiIcon','sortItemSelisihMinusNokIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>                
                </th>
                {{-- <th class="align-middle" style="width: 3%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Deviasi
                                    <div class="sortItemSelisihMinusNokIcon" id="itemSelisihMinusNokDeviasiIcon">
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
                                        onclick="sortItem(0,8,'tableSelisihMinusNok','itemSelisihMinusNokDeviasiIcon','sortItemSelisihMinusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,8,'tableSelisihMinusNok','itemSelisihMinusNokDeviasiIcon','sortItemSelisihMinusNokIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th> --}}
                <th class="align-middle" style="width: 2%">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm text-white fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Status CSO
                                    <div class="sortItemSelisihMinusNokIcon" id="itemSelisihMinusNokStatusCsoIcon">
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
                                        onclick="sortItem(0,8,'tableSelisihMinusNok','itemSelisihMinusNokStatusCsoIcon','sortItemSelisihMinusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,8,'tableSelisihMinusNok','itemSelisihMinusNokStatusCsoIcon','sortItemSelisihMinusNokIcon')">Descending</button>
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
                                    {{-- <div class="sortItemSelisihMinusNokIcon" id="itemSelisihMinusNokGroupingIcon">
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
                                        onclick="sortItem(0,10,'tableSelisihMinusNok','itemSelisihMinusNokGroupingIcon','sortItemSelisihMinusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,10,'tableSelisihMinusNok','itemSelisihMinusNokGroupingIcon','sortIItemSelisihMinusNokIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusNokIcon" id="itemSelisihMinusNokGroupingIcon">
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
                                        onclick="sortItem(0,10,'tableSelisihMinusNok','itemSelisihMinusNokGroupingIcon','sortItemSelisihMinusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,10,'tableSelisihMinusNok','itemSelisihMinusNokGroupingIcon','sortIItemSelisihMinusNokIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusNokIcon" id="itemSelisihMinusNokAnalisatorIcon">
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
                                        onclick="sortItem(0,11,'tableSelisihMinusNok','itemSelisihMinusNokAnalisatorIcon','sortItemSelisihMinusNokIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,11,'tableSelisihMinusNok','itemSelisihMinusNokAnalisatorIcon','sortItemSelisihMinusNokIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
            </tr>
        </thead>
        <tbody>
             
            @foreach ($itemSelisihMinusNok as $barang)
                <tr>
                    <td class="align-middle text-center">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input checkboxItemSelisihNok" value="{{ $barang->trsdetid }}">
                        </div>    
                    </td>
                    <td class="align-middle text-center">{{ $loop->iteration }}</td>
                    <td>{{ $barang->itemcode }}</td>
                    <td>{{ $barang->itemname }}</td>
                    <td class="align-middle text-center">{{ $barang->selisih }}</td>
                    <td class="align-middle text-center">{{ $barang->onhand }}</td>
                    {{-- <td class="align-middle text-center">
                        @if($barang->grade !='' && $barang->grade != NULL)
                            {{ $barang->grade }}    
                        @else
                            -
                        @endif
                    </td> --}}
                    <td class="align-middle text-center">{{ $barang->totalcso }}</td>
                    <td class="align-middle text-center">{{ $barang->koreksi }}</td>
                    {{-- <td class="align-middle text-center">{{ $barang->deviasi }}</td> --}}
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


{{-- <div id='itemSelisih'>
    <div class='row'>
        <div class='col-sm-3'>

        </div>
        <div class='col-sm-6'>
    <h4 class="modal-title fs-5 text-center pb-3"> Item Selisih Plus</h4>
        </div>
        <div class="col-sm-3 d-inline-flex" style="margin-left:-20px">
            <input class="form-control itemSelisihPlusMinus" id="itemSelisihPlus" type="search" placeholder="Search"
            aria-label="Search">
        </div>
    </div>
    <table class="table table-sm table-bordered table-hover table-responsive small table-striped" id='tableSelisihPlus'>
        <thead class="table-dark">
            <tr class="text-center ">
                <th class="align-middle" style="width: 2%">No</th>
                <th class="align-middle" style="width: 15%">Nama Item</th>
                <th class="align-middle" style="width: 5%">Selisih</th>
                <th class="align-middle" style="width: 5%">Onhand</th> --}}
                {{-- <th class="align-middle" style="width: 3%">Grade</th> --}}
                {{-- <th class="align-middle" style="width: 2%">Total CSO</th>
                <th class="align-middle" style="width: 3%">Koreksi</th> --}}
                {{-- <th class="align-middle" style="width: 3%">Deviasi</th> --}}
                {{-- <th class="align-middle" style="width: 2%">Status CSO</th>
                <th class="align-middle" style="width: 14%">Grouping</th>
                <th class="align-middle" style="width: 16%">Analisator</th>
            </tr>
        </thead>
        <tbody>
            <?php $index=0; ?>
            @foreach ($itemSelisihPlus as $barang)
                <tr>
                    <td class="align-middle text-center">{{ $loop->iteration }}</td>
                    <td>{{ $barang->itemname }}</td>
                    <td class="align-middle text-center">{{ $barang->selisih }}</td>
                    <td class="align-middle text-center">{{ $barang->onhand }}</td> --}}
                    {{-- <td class="align-middle text-center">
                        @if($barang->grade !='' && $barang->grade != NULL)
                            {{ $barang->grade }}    
                        @else
                            -
                        @endif
                    </td> --}}
                    {{-- <td class="align-middle text-center">{{ $barang->totalcso }}</td>
                    <td class="align-middle text-center">{{ $barang->koreksi }}</td> --}}
                    {{-- <td class="align-middle text-center">{{ $barang->deviasi }}</td> --}}
                    {{-- <td class="align-middle text-center">{{ $barang->statuscso }}</td>
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
    <table class="table table-sm table-bordered table-hover table-responsive small table-striped" id='tableSelisihMinus'>
        <thead class="table-dark">
            <tr class="text-center ">
                <th class="align-middle" style="width: 2%">No</th>
                <th class="align-middle" style="width: 15%">Nama Item</th>
                <th class="align-middle" style="width: 5%">Selisih</th>
                <th class="align-middle" style="width: 5%">Onhand</th> --}}
                {{-- <th class="align-middle" style="width: 3%">Grade</th> --}}
                {{-- <th class="align-middle" style="width: 2%">Total CSO</th>
                <th class="align-middle" style="width: 3%">Koreksi</th> --}}
                {{-- <th class="align-middle" style="width: 3%">Deviasi</th> --}}
                {{-- <th class="align-middle" style="width: 2%">Status CSO</th>
                <th class="align-middle" style="width: 14%">Grouping</th>
                <th class="align-middle" style="width: 16%">Analisator</th>
            </tr>
        </thead>
        <tbody>
            <?php $index=0; ?>
            @foreach ($itemSelisihMinus as $barang)
                <tr>
                    <td class="align-middle text-center">{{ $loop->iteration }}</td>
                    <td>{{ $barang->itemname }}</td>
                    <td class="align-middle text-center">{{ $barang->selisih }}</td>
                    <td class="align-middle text-center">{{ $barang->onhand }}</td> --}}
                    {{-- <td class="align-middle text-center">
                        @if($barang->grade !='' && $barang->grade != NULL)
                            {{ $barang->grade }}    
                        @else
                            -
                        @endif
                    </td> --}}
                    {{-- <td class="align-middle text-center">{{ $barang->totalcso }}</td>
                    <td class="align-middle text-center">{{ $barang->koreksi }}</td> --}}
                    {{-- <td class="align-middle text-center">{{ $barang->deviasi }}</td> --}}
                    {{-- <td class="align-middle text-center">{{ $barang->statuscso }}</td>
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
</div>
 --}}
