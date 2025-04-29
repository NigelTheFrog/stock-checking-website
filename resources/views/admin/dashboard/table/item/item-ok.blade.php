<table class="table table-sm table-bordered table-hover table-responsive small table-striped" id="tableOk">
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
                            <div class="sortItemOkIcon" id="itemOkItemNameIcon">
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
                                onclick="sortItem(0,2,'tableOk','itemOkItemNameIcon','sortItemOkIcon')">Ascending</button>
                        </li>
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="sortItem(1,2,'tableOk','itemOkItemNameIcon','sortItemOkIcon')">Descending</button>
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
                            <div class="sortItemOkIcon" id="itemOkSelisihIcon">
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
                                onclick="sortItem(0,3,'tableOk','itemOkSelisihIcon','sortItemOkIcon')">Ascending</button>
                        </li>
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="sortItem(1,3,'tableOk','itemOkSelisihIcon','sortItemOkIcon')">Descending</button>
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
                                <div class="sortItemOkIcon" id="itemOkOnHandIcon">
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
                                    onclick="sortItem(0,4,'tableOk','itemOkOnHandIcon','sortItemOkIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,4,'tableOk','itemOkOnHandIcon','sortItemOkIcon')">Descending</button>
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
                                <div class="sortItemOkIcon" id="itemOkGradeIcon">
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
                                    onclick="sortItem(0,5,'tableOk','itemOkGradeIcon','sortItemOkIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,5,'tableOk','itemOkGradeIcon','sortItemOkIcon')">Descending</button>
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
                                <div class="sortItemOkIcon" id="itemOkTotalCsoIcon">
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
                                    onclick="sortItem(0,6,'tableOk','itemOkTotalCsoIcon','sortItemOkIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,6,'tableOk','itemOkTotalCsoIcon','sortItemOkIcon')">Descending</button>
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
                                <div class="sortItemOkIcon" id="itemOkKoreksiIcon">
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
                                    onclick="sortItem(0,7,'tableOk','itemOkKoreksiIcon','sortItemOkIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,7,'tableOk','itemOkKoreksiIcon','sortItemOkIcon')">Descending</button>
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
                                <div class="sortItemOkIcon" id="itemOkDeviasiIcon">
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
                                    onclick="sortItem(0,8,'tableOk','itemOkDeviasiIcon','sortItemOkIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,8,'tableOk','itemOkDeviasiIcon','sortItemOkIcon')">Descending</button>
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
                                <div class="sortItemOkIcon" id="itemOkStatusCsoIcon">
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
                                    onclick="sortItem(0,9,'tableOk','itemOkStatusCsoIcon','sortItemOkIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,9,'tableOk','itemOkStatusCsoIcon','sortItemOkIcon')">Descending</button>
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
                                <div class="sortItemOkIcon" id="itemOkGroupingIcon">
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
                                    onclick="sortItem(0,10,'tableOk','itemOkGroupingIcon','sortItemOkIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,10,'tableOk','itemOkGroupingIcon','sortItemOkIcon')">Descending</button>
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
                                <div class="sortItemOkIcon" id="itemOkAnalisatorIcon">
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
                                    onclick="sortItem(0,11,'tableOk','itemOkAnalisatorIcon','sortItemOkIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,11,'tableOk','itemOkAnalisatorIcon','sortItemOkIcon')">Descending</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </th>
        </tr>
    </thead>
    <tbody>


        @foreach ($itemSelesai as $barang)
            <tr>
                <td class="align-middle text-center">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input checkboxitemok" value="{{ $barang->trsdetid }}">
                    </div>    
                </td>
                <td class="align-middle text-center">{{ $loop->iteration }}</td>
                <td>{{ $barang->itemname }}</td>
                <td class="align-middle text-center">{{ $barang->selisih }}</td>
                <td class="align-middle text-center">{{ $barang->onhand }}</td>
                <td class="align-middle text-center">
                    @if ($barang->grade != '' && $barang->grade != null)
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
                    name="groupValueBanner[]" id='groupValueBannerInput{{$barang->trsdetid}}' 
                    @if($barang->groupid==0 || $barang->groupid==NULL) 
                    disabled value=''
                    @else
                    value='{{$barang->group_value}}'
                    @endif
                    ></td>
                <td class="align-middle text-center">
                    <select class="form-select" name="group[]" onchange="groupValueBanner(this,{{$barang->trsdetid}})">
                        <option value="" selected>--Pilih Group --</option>
                        @foreach ($dbmgroup as $group)
                            @if ($group->groupid == $barang->groupid)
                                <option value="{{ $barang->trsdetid }},{{ $group->groupid }}" selected>
                                    {{ $group->groupdesc }}</option>
                            @else
                                <option value="{{ $barang->trsdetid }},{{ $group->groupid }}">
                                    {{ $group->groupdesc }}
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
