<div id='itemSelisih'>
    <div class='row'>
        <div class='col-sm-3'>

        </div>
        <div class='col-sm-6'>
            <h4 class="modal-title fs-5 text-center pb-3"> Item Selisih Plus</h4>
        </div>
        <div class="col-sm-3 d-inline-flex" style="margin-left:-20px">
            <input class="form-control itemSelisihPlusMinusFalse" id="itemSelisihPlusFalse" type="search" placeholder="Search"
            aria-label="Search" >
        </div>
    </div>
    <table class="table table-sm table-bordered table-hover table-responsive small table-striped" id="tableSelisihPlusFalse">
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
                                <div class="sortItemSelisihPlusFalseIcon" id="itemSelisihPlusFalseItemNameIcon">
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
                                    onclick="sortItem(0,2,'tableSelisihPlusFalse','itemSelisihPlusFalseItemNameIcon','sortItemSelisihPlusFalseIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,2,'tableSelisihPlusFalse','itemSelisihPlusFalseItemNameIcon','sortItemSelisihPlusFalseIcon')">Descending</button>
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
                                <div class="sortItemSelisihPlusFalseIcon" id="itemSelisihPlusFalseItemNameIcon">
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
                                    onclick="sortItem(0,3,'tableSelisihPlusFalse','itemSelisihPlusFalseItemNameIcon','sortItemSelisihPlusFalseIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,3,'tableSelisihPlusFalse','itemSelisihPlusFalseItemNameIcon','sortItemSelisihPlusFalseIcon')">Descending</button>
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
                                <div class="sortItemSelisihPlusFalseIcon" id="itemSelisihPlusFalseSelisihIcon">
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
                                    onclick="sortItem(0,4,'tableSelisihPlusFalse','itemSelisihPlusFalseSelisihIcon','sortItemSelisihPlusFalseIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,4,'tableSelisihPlusFalse','itemSelisihPlusFalseSelisihIcon','sortItemSelisihPlusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusFalseIcon" id="itemSelisihPlusFalseOnHandIcon">
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
                                        onclick="sortItem(0,5,'tableSelisihPlusFalse','itemSelisihPlusFalseOnHandIcon','sortItemSelisihPlusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,5,'tableSelisihPlusFalse','itemSelisihPlusFalseOnHandIcon','sortItemSelisihPlusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusFalseIcon" id="itemSelisihPlusFalseGradeIcon">
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
                                        onclick="sortItem(0,5,'tableSelisihPlusFalse','itemSelisihPlusFalseGradeIcon','sortItemSelisihPlusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,5,'tableSelisihPlusFalse','itemSelisihPlusFalseGradeIcon','sortItemSelisihPlusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusFalseIcon" id="itemSelisihPlusFalseTotalCsoIcon">
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
                                        onclick="sortItem(0,6,'tableSelisihPlusFalse','itemSelisihPlusFalseTotalCsoIcon','sortItemSelisihPlusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,6,'tableSelisihPlusFalse','itemSelisihPlusFalseTotalCsoIcon','sortItemSelisihPlusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusFalseIcon" id="itemSelisihPlusFalseKoreksiIcon">
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
                                        onclick="sortItem(0,7,'tableSelisihPlusFalse','itemSelisihPlusFalseKoreksiIcon','sortItemSelisihPlusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,7,'tableSelisihPlusFalse','itemSelisihPlusFalseKoreksiIcon','sortItemSelisihPlusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusFalseIcon" id="itemSelisihPlusFalseDeviasiIcon">
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
                                        onclick="sortItem(0,8,'tableSelisihPlusFalse','itemSelisihPlusFalseDeviasiIcon','sortItemSelisihPlusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,8,'tableSelisihPlusFalse','itemSelisihPlusFalseDeviasiIcon','sortItemSelisihPlusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusFalseIcon" id="itemSelisihPlusFalseStatusCsoIcon">
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
                                        onclick="sortItem(0,8,'tableSelisihPlusFalse','itemSelisihPlusFalseStatusCsoIcon','sortItemSelisihPlusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,8,'tableSelisihPlusFalse','itemSelisihPlusFalseStatusCsoIcon','sortItemSelisihPlusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusFalseIcon" id="itemSelisihPlusFalseGroupingIcon">
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
                                        onclick="sortItem(0,10,'tableSelisihPlusFalse','itemSelisihPlusFalseGroupingIcon','sortItemSelisihPlusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,10,'tableSelisihPlusFalse','itemSelisihPlusFalseGroupingIcon','sortIItemSelisihPlusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihPlusFalseIcon" id="itemSelisihPlusFalseAnalisatorIcon">
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
                                        onclick="sortItem(0,11,'tableSelisihPlusFalse','itemSelisihPlusFalseAnalisatorIcon','sortItemSelisihPlusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,11,'tableSelisihPlusFalse','itemSelisihPlusFalseAnalisatorIcon','sortItemSelisihPlusFalseIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
            </tr>
        </thead>
        <tbody>
             
            @foreach ($itemSelisihPlusFalse as $barang)
                <tr>
                    <td class="align-middle text-center">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input checkboxItemSelisihFalse" value="{{ $barang->trsdetid }}">
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
            <input class="form-control itemSelisihPlusMinusFalse" id="itemSelisihMinusFalse" type="search" placeholder="Search"
            aria-label="Search">
        </div>
    </div>
    <table class="table table-sm table-bordered table-hover table-responsive small table-striped" id="tableSelisihMinusFalse">
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
                                <div class="sortItemSelisihMinusFalseIcon" id="itemSelisihMinusFalseItemNameIcon">
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
                                    onclick="sortItem(0,2,'tableSelisihMinusFalse','itemSelisihMinusFalseItemNameIcon','sortItemSelisihMinusFalseIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,2,'tableSelisihMinusFalse','itemSelisihMinusFalseItemNameIcon','sortItemSelisihMinusFalseIcon')">Descending</button>
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
                                <div class="sortItemSelisihMinusFalseIcon" id="itemSelisihMinusFalseItemNameIcon">
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
                                    onclick="sortItem(0,3,'tableSelisihMinusFalse','itemSelisihMinusFalseItemNameIcon','sortItemSelisihMinusFalseIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,3,'tableSelisihMinusFalse','itemSelisihMinusFalseItemNameIcon','sortItemSelisihMinusFalseIcon')">Descending</button>
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
                                <div class="sortItemSelisihMinusFalseIcon" id="itemSelisihMinusFalseSelisihIcon">
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
                                    onclick="sortItem(0,4,'tableSelisihMinusFalse','itemSelisihMinusFalseSelisihIcon','sortItemSelisihMinusFalseIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,4,'tableSelisihMinusFalse','itemSelisihMinusFalseSelisihIcon','sortItemSelisihMinusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusFalseIcon" id="itemSelisihMinusFalseOnHandIcon">
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
                                        onclick="sortItem(0,5,'tableSelisihMinusFalse','itemSelisihMinusFalseOnHandIcon','sortItemSelisihMinusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,5,'tableSelisihMinusFalse','itemSelisihMinusFalseOnHandIcon','sortItemSelisihMinusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusFalseIcon" id="itemSelisihMinusFalseGradeIcon">
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
                                        onclick="sortItem(0,5,'tableSelisihMinusFalse','itemSelisihMinusFalseGradeIcon','sortItemSelisihMinusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,5,'tableSelisihMinusFalse','itemSelisihMinusFalseGradeIcon','sortItemSelisihMinusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusFalseIcon" id="itemSelisihMinusFalseTotalCsoIcon">
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
                                        onclick="sortItem(0,6,'tableSelisihMinusFalse','itemSelisihMinusFalseTotalCsoIcon','sortItemSelisihMinusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,6,'tableSelisihMinusFalse','itemSelisihMinusFalseTotalCsoIcon','sortItemSelisihMinusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusFalseIcon" id="itemSelisihMinusFalseKoreksiIcon">
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
                                        onclick="sortItem(0,7,'tableSelisihMinusFalse','itemSelisihMinusFalseKoreksiIcon','sortItemSelisihMinusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,7,'tableSelisihMinusFalse','itemSelisihMinusFalseKoreksiIcon','sortItemSelisihMinusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusFalseIcon" id="itemSelisihMinusFalseDeviasiIcon">
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
                                        onclick="sortItem(0,8,'tableSelisihMinusFalse','itemSelisihMinusFalseDeviasiIcon','sortItemSelisihMinusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,8,'tableSelisihMinusFalse','itemSelisihMinusFalseDeviasiIcon','sortItemSelisihMinusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusFalseIcon" id="itemSelisihMinusFalseStatusCsoIcon">
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
                                        onclick="sortItem(0,8,'tableSelisihMinusFalse','itemSelisihMinusFalseStatusCsoIcon','sortItemSelisihMinusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,8,'tableSelisihMinusFalse','itemSelisihMinusFalseStatusCsoIcon','sortItemSelisihMinusFalseIcon')">Descending</button>
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
                                    {{-- <div class="sortItemSelisihMinusFalseIcon" id="itemSelisihMinusFalseGroupingIcon">
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
                                        onclick="sortItem(0,10,'tableSelisihMinusFalse','itemSelisihMinusFalseGroupingIcon','sortItemSelisihMinusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,10,'tableSelisihMinusFalse','itemSelisihMinusFalseGroupingIcon','sortIItemSelisihMinusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusFalseIcon" id="itemSelisihMinusFalseGroupingIcon">
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
                                        onclick="sortItem(0,10,'tableSelisihMinusFalse','itemSelisihMinusFalseGroupingIcon','sortItemSelisihMinusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,10,'tableSelisihMinusFalse','itemSelisihMinusFalseGroupingIcon','sortIItemSelisihMinusFalseIcon')">Descending</button>
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
                                    <div class="sortItemSelisihMinusFalseIcon" id="itemSelisihMinusFalseAnalisatorIcon">
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
                                        onclick="sortItem(0,11,'tableSelisihMinusFalse','itemSelisihMinusFalseAnalisatorIcon','sortItemSelisihMinusFalseIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortItem(1,11,'tableSelisihMinusFalse','itemSelisihMinusFalseAnalisatorIcon','sortItemSelisihMinusFalseIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
            </tr>
        </thead>
        <tbody>
             
            @foreach ($itemSelisihMinusFalse as $barang)
                <tr>
                    <td class="align-middle text-center">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input checkboxItemSelisihFalse" value="{{ $barang->trsdetid }}">
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
