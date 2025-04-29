{{-- <table class="table table-sm table-bordered table-hover table-responsive small table-striped">
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
        @foreach ($avalanBlmProses as $barang)
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
                    <select class="form-select" name="group[]" id="">
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
</table> --}}

<table class="table table-sm table-bordered table-hover table-responsive small table-striped" id="tableBlmProses">
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
                            <div class="sortBatchBlmProsesIcon" id="batchBlmProsesBatchNameIcon">
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
                                onclick="sortItem(0,2,'tableBlmProses','batchBlmProsesBatchNameIcon','sortBatchBlmProsesIcon')">Ascending</button>
                        </li>
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="sortItem(1,2,'tableBlmProses','batchBlmProsesBatchNameIcon','sortBatchBlmProsesIcon')">Descending</button>
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
                            <div class="sortBatchBlmProsesIcon" id="batchBlmProsesSelisihIcon">
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
                                onclick="sortItem(0,3,'tableBlmProses','batchBlmProsesSelisihIcon','sortBatchBlmProsesIcon')">Ascending</button>
                        </li>
                        <li><button type='button' class="dropdown-item filterItem"
                                onclick="sortItem(1,3,'tableBlmProses','batchBlmProsesSelisihIcon','sortBatchBlmProsesIcon')">Descending</button>
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
                                <div class="sortBatchBlmProsesIcon" id="batchBlmProsesOnHandIcon">
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
                                    onclick="sortItem(0,4,'tableBlmProses','batchBlmProsesOnHandIcon','sortBatchBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,4,'tableBlmProses','batchBlmProsesOnHandIcon','sortBatchBlmProsesIcon')">Descending</button>
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
                                <div class="sortBatchBlmProsesIcon" id="batchBlmProsesGradeIcon">
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
                                    onclick="sortItem(0,5,'tableBlmProses','batchBlmProsesGradeIcon','sortBatchBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,5,'tableBlmProses','batchBlmProsesGradeIcon','sortBatchBlmProsesIcon')">Descending</button>
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
                                <div class="sortBatchBlmProsesIcon" id="batchBlmProsesTotalCsoIcon">
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
                                    onclick="sortItem(0,6,'tableBlmProses','batchBlmProsesTotalCsoIcon','sortBatchBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,6,'tableBlmProses','batchBlmProsesTotalCsoIcon','sortBatchBlmProsesIcon')">Descending</button>
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
                                <div class="sortBatchBlmProsesIcon" id="batchBlmProsesKoreksiIcon">
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
                                    onclick="sortItem(0,7,'tableBlmProses','batchBlmProsesKoreksiIcon','sortBatchBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,7,'tableBlmProses','batchBlmProsesKoreksiIcon','sortBatchBlmProsesIcon')">Descending</button>
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
                                <div class="sortBatchBlmProsesIcon" id="batchBlmProsesDeviasiIcon">
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
                                    onclick="sortItem(0,8,'tableBlmProses','batchBlmProsesDeviasiIcon','sortBatchBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,8,'tableBlmProses','batchBlmProsesDeviasiIcon','sortBatchBlmProsesIcon')">Descending</button>
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
                                <div class="sortBatchBlmProsesIcon" id="batchBlmProsesStatusCsoIcon">
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
                                    onclick="sortItem(0,9,'tableBlmProses','batchBlmProsesStatusCsoIcon','sortBatchBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,9,'tableBlmProses','batchBlmProsesStatusCsoIcon','sortBatchBlmProsesIcon')">Descending</button>
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
                            </div>
                        </button>
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
                                <div class="sortBatchBlmProsesIcon" id="batchBlmProsesGroupingIcon">
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
                                    onclick="sortItem(0,10,'tableBlmProses','batchBlmProsesGroupingIcon','sortBatchBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,10,'tableBlmProses','batchBlmProsesGroupingIcon','sortBatchBlmProsesIcon')">Descending</button>
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
                                <div class="sortBatchBlmProsesIcon" id="batchBlmProsesAnalisatorIcon">
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
                                    onclick="sortItem(0,11,'tableBlmProses','batchBlmProsesAnalisatorIcon','sortBatchBlmProsesIcon')">Ascending</button>
                            </li>
                            <li><button type='button' class="dropdown-item filterItem"
                                    onclick="sortItem(1,11,'tableBlmProses','batchBlmProsesAnalisatorIcon','sortBatchBlmProsesIcon')">Descending</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </th>
        </tr>
    </thead>
    <tbody>
         
        
        @foreach ($batchBlmProses as $barang)
            <tr>
                <td class="align-middle text-center">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input checkboxBatchblmproses" value="{{ $barang->trsdetid }}">
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
                    name="groupValueBanner[]" id='groupValueBannerInput{{$barang->trsdetid}}' 
                    @if($barang->groupid==0 || $barang->groupid==NULL) 
                    disabled value=''
                    @else
                    value='{{$barang->group_value}}'
                    @endif
                    ></td>
                {{-- <td class="align-middle text-center"><button type="button" onclick="groupValueBanner()"
                    class="btn btn-primary">TEST</button></td> --}}
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
