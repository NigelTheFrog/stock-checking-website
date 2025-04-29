<table class="table table-sm table-bordered table-hover table-responsive small table-striped" id='tableBlmProses'>
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
                        <div class="sortItemBlmProsesIcon" id="itemBlmProsesItemCodeIcon">
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
                            onclick="sortItem(0,2,'tableBlmProses','itemBlmProsesItemCodeIcon','sortItemBlmProsesIcon')">Ascending</button>
                    </li>
                    <li><button type='button' class="dropdown-item filterItem"
                            onclick="sortItem(1,2,'tableBlmProses','itemBlmProsesItemCodeIcon','sortItemBlmProsesIcon')">Descending</button>
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
                            <div class="sortItemBlmProsesIcon" id="itemBlmProsesItemNameIcon">
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
                                onclick="sortItem(0,3,'tableBlmProses','itemBlmProsesItemNameIcon','sortItemBlmProsesIcon')">Ascending</button>
                        </li>
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="sortItem(1,3,'tableBlmProses','itemBlmProsesItemNameIcon','sortItemBlmProsesIcon')">Descending</button>
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
                            <div class="sortItemBlmProsesIcon" id="itemBlmProsesSelisihIcon">
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
                                onclick="sortItem(0,4,'tableBlmProses','itemBlmProsesSelisihIcon','sortItemBlmProsesIcon')">Ascending</button>
                        </li>
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="sortItem(1,4,'tableBlmProses','itemBlmProsesSelisihIcon','sortItemBlmProsesIcon')">Descending</button>
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
                                <div class="sortItemBlmProsesIcon" id="itemBlmProsesOnHandIcon">
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
                                    onclick="sortItem(0,5,'tableBlmProses','itemBlmProsesOnHandIcon','sortItemBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,5,'tableBlmProses','itemBlmProsesOnHandIcon','sortItemBlmProsesIcon')">Descending</button>
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
                                <div class="sortItemBlmProsesIcon" id="itemBlmProsesGradeIcon">
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
                                    onclick="sortItem(0,5,'tableBlmProses','itemBlmProsesGradeIcon','sortItemBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,5,'tableBlmProses','itemBlmProsesGradeIcon','sortItemBlmProsesIcon')">Descending</button>
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
                                <div class="sortItemBlmProsesIcon" id="itemBlmProsesTotalCsoIcon">
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
                                    onclick="sortItem(0,6,'tableBlmProses','itemBlmProsesTotalCsoIcon','sortItemBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,6,'tableBlmProses','itemBlmProsesTotalCsoIcon','sortItemBlmProsesIcon')">Descending</button>
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
                                <div class="sortItemBlmProsesIcon" id="itemBlmProsesKoreksiIcon">
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
                                    onclick="sortItem(0,7,'tableBlmProses','itemBlmProsesKoreksiIcon','sortItemBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,7,'tableBlmProses','itemBlmProsesKoreksiIcon','sortItemBlmProsesIcon')">Descending</button>
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
                                <div class="sortItemBlmProsesIcon" id="itemBlmProsesDeviasiIcon">
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
                                    onclick="sortItem(0,8,'tableBlmProses','itemBlmProsesDeviasiIcon','sortItemBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,8,'tableBlmProses','itemBlmProsesDeviasiIcon','sortItemBlmProsesIcon')">Descending</button>
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
                                <div class="sortItemBlmProsesIcon" id="itemBlmProsesStatusCsoIcon">
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
                                    onclick="sortItem(0,8,'tableBlmProses','itemBlmProsesStatusCsoIcon','sortItemBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,8,'tableBlmProses','itemBlmProsesStatusCsoIcon','sortItemBlmProsesIcon')">Descending</button>
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
                                <div class="sortItemBlmProsesIcon" id="itemBlmProsesGroupingIcon">
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
                                    onclick="sortItem(0,10,'tableBlmProses','itemBlmProsesGroupingIcon','sortItemBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,10,'tableBlmProses','itemBlmProsesGroupingIcon','sortItemBlmProsesIcon')">Descending</button>
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
                                <div class="sortItemBlmProsesIcon" id="itemBlmProsesAnalisatorIcon">
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
                                    onclick="sortItem(0,11,'tableBlmProses','itemBlmProsesAnalisatorIcon','sortItemBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,11,'tableBlmProses','itemBlmProsesAnalisatorIcon','sortItemBlmProsesIcon')">Descending</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </th>
        </tr>
    </thead>
    <tbody>
        @foreach ($itemBlmProses as $barang)
            <tr>
                <td class="align-middle text-center">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input checkboxitemblmproses" value="{{ $barang->trsdetid }}">
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
                    name="groupValueBanner[]" id='groupValueBannerInput{{$barang->trsdetid}}' 
                    @if($barang->groupid==0 || $barang->groupid==NULL) 
                    disabled value=''
                    @else
                    value='{{$barang->group_value}}'
                    @endif
                    ></td>
                <td class="align-middle text-center">
                    <select class="form-select" name="group[]" id="groupingIdBanner" onchange="groupValueBanner(this,{{$barang->trsdetid}})">
                        <option value="" selected>--Pilih Group --</option>
                        @foreach ($dbmgroup as $group)
                            @if ($group->groupid == $barang->groupid)
                                <option value="{{ $barang->trsdetid }},{{ $group->groupid }}" selected>
                                    {{ $group->groupdesc }}</option>
                            @else
                                <option value="{{ $barang->trsdetid }},{{ $group->groupid }}">{{ $group->groupdesc }}
                                </option>
                            @endif
                        @endforeach
                    </select>
                </td>
                <td class="align-middle text-center">
                    <select class="form-select" name="analisator[]" id="">
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