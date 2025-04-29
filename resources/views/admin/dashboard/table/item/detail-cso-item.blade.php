@if (Auth::user()->level == 1 || Auth::user()->level == 2 || Auth::user()->level == 3)
    <div class="mb-3">
        @if ($checkItemType->statusitem == 'TR')
            <button type="button" class="btn btn-danger "
                onclick="hapusItemTemuan('{{ $itemid }}','{{ $trsdetid }}')"
                @if (Auth::user()->level == 3 && Auth::user()->userid != $checkItemType->analisatorid) disabled @endif><i class="fas fa-trash-alt"></i>
                Hapus Item</button>
        @endif
    </div>
@endif
{{-- @if (count($batchItem) == 0)
    <table class="table table-sm table-bordered small mb-3 text-center">
        <thead class="table-secondary">
            <tr>
                <th scope="col">Heat Number</th>
                <th scope="col">Dimension</th>
                <th scope="col">Tolerance</th>
                <th scope="col">Condition</th>
            </tr>

        </thead>
        <tbody>
            <tr>
                <td>
                    @if ($heatno != null)
                        {{ $heatno }}
                    @else
                        -
                    @endif

                </td>
                <td>
                    @if ($dimension != null)
                        {{ $dimension }}
                    @else
                        -
                    @endif
                </td>
                <td>
                    @if ($tolerance != null)
                        {{ $tolerance }}
                    @else
                        -
                    @endif
                </td>
                <td>
                    @if ($kondisi != null)
                        {{ $kondisi }}
                    @else
                        -
                    @endif
                </td>
            </tr> --}}
{{-- @endif
        {{-- </tbody>
    </table>
@else     --}}
{{-- <div >
        <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
            Detail Batch
          </a>
          <div class="collapse mt-2" id="collapseExample" style="max-height: 15vh; overflow-y: auto; overflow-x:hidden">
            <table class="table table-sm table-bordered small mb-3 text-center">
                <thead class="table-secondary">
                    <tr>
                        <th class="align-middle" scope="col">Heat Number</th>
                        <th class="align-middle" scope="col">Dimension</th>
                        <th class="align-middle" scope="col">Tolerance</th>
                        <th class="align-middle" scope="col">Condition</th>
                        <th class="align-middle" scope="col">On Hand <br>Batch</th>
                        <th class="align-middle" scope="col">On Hand <br>Second Batch</th>
                    </tr>
        
                </thead>
                <tbody>
                    @if (count($batchItem) > 0)
                        @foreach ($batchItem as $batch)
                            <tr>
                                <td>
                                    @if ($batch->heatno != null)
                                        {{ $batch->heatno }}
                                    @else
                                        -
                                    @endif
        
                                </td>
                                <td>
                                    @if ($batch->dimension != null)
                                        {{ $batch->dimension }}
                                    @else
                                        -
                                    @endif
                                </td>
                                <td>
                                    @if ($batch->tolerance != null)
                                        {{ $batch->tolerance }}
                                    @else
                                        -
                                    @endif
                                </td>
                                <td>
                                    @if ($batch->kondisi != null)
                                        {{ $batch->kondisi }}
                                    @else
                                        -
                                    @endif
                                </td>
                                <td>
                                    @if ($batch->onhandbatch != null)
                                        {{ $batch->onhandbatch }}
                                    @else
                                        -
                                    @endif
                                </td>
                                <td>
                                    @if ($batch->onhandsecbatch != null)
                                        {{ $batch->onhandsecbatch }}
                                    @else
                                        -
                                    @endif
                                </td>
                            </tr>
                        @endforeach        
                </tbody>
            </table>
          </div>
    </div>
    <hr> --}}
{{-- @endif --}}
<div id="warning" class="alert alert-warning d-none"></div>
<input type="text" name="itemid" class="d-none" value="{{ $itemid }}">
{{-- <input type="text" name="batchno" class="d-none" value="{{ $batchno }}"> --}}
<input type="text" name="trsdetid" id="trsdetidparam" class="d-none" value="{{ $trsdetid }}">

<div class="row g-3 mb-3">
    <div class="form-floating col">
        <input class="form-control text-center text-white bg-primary shadow-sm"
            value="{{ number_format($onhand, 2, ',', '.') }}" id="onHand" type="text" readonly>
        <label class="fw-bold" for="onHand">On Hand</label>
    </div>
    <div class="form-floating col">
        <input class="form-control text-center bg-warning shadow-sm" value="{{ number_format($totalcso, 2, ',', '.') }}"
            type="text" readonly>
        <label class="fw-bold">Qty CSO</label>
    </div>
    <div class="form-floating col">
        <input class="form-control text-center text-white bg-danger shadow-sm"
            value="{{ number_format($selisih, 2, ',', '.') }}" type="text" readonly>
        <label class="fw-bold" for="vselisih">Selisih</label>
    </div>
    <div class="form-floating col">
        <input class="form-control text-center shadow-sm" name="koreksi" value="{{ round($koreksi,2) }}" type="number"
            step="0.01">
        <label class="fw-bold" for="vkoreksi">Input Koreksi</label>
    </div>
    <div class="form-floating col">
        <input class="form-control text-center shadow-sm" name="deviasi" value="{{ round($deviasi,2) }}" type="number"
            step="0.01">
        <label class="fw-bold" for="vdeviasi">Input Deviasi</label>
    </div>
</div>

@php
$itemWrh = $wrhItem;
@endphp
<div style="max-height: 15vh; overflow-y: hidden; overflow-x:auto">
    <table class="table table-sm table-bordered  small mb-3 text-center" style=" table-layout: auto;">
        <thead style='column-width: auto' >
            <tr>
                <th class="align-middle" scope="col" style="width: 5%;background-color:	#E5E4E2;">Warehouse</th>
                @foreach($itemWrh as $wrhItem)
                    <th class="align-middle" scope="col" colspan="2"> {{ $wrhItem['wrhFullName'] }}</th>
                @endforeach
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="align-middle" style='white-space:nowrap;background-color:#E5E4E2;'>Qty</td>
                @foreach($itemWrh as $itemQty)
                    <td class="align-middle" style='white-space:nowrap;background-color:#e0f8ff'>
                        {{ number_format($itemQty['qty'],2,',','.') }} 
                    </td>
                    <td class="align-middle" style='white-space:nowrap;'>
                        <div class="d-flex justify-content-around">
                            <span>&nbsp;</span>
                            <span>{{ number_format($itemQty['check'],2,',','.') }}</span>
                            <span>
                                @if ( $itemQty['qty'] == $itemQty['check'])
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#06D001" class="bi bi-check-circle-fill" viewBox="0 0 16 16">
                                        <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0m-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
                                    </svg>
                                @elseif ( $itemQty['qty'] > $itemQty['check'] )
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#E52020" class="bi bi-dash-circle-fill" viewBox="0 0 16 16">
                                        <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0M4.5 7.5a.5.5 0 0 0 0 1h7a.5.5 0 0 0 0-1z"/>
                                    </svg>
                                @else
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#E52020" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
                                        <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3z"/>
                                    </svg>                  
                                @endif
                            </span>
                        </div>
                    </td>
                @endforeach
            </tr>
        </tbody>
    </table>
</div>

@php
    $totalCSO1 = 0;
    $totalCSO2 = 0;
    $totalCSO3 = 0;
    $totalCSO4 = 0;
@endphp
<div id="tbldetail" style="overflow-x: auto;">
    <table id="tabelDetailItem" class="table table-sm table-hover table-bordered table-responsive-md small shadow-sm">
        <thead class="table-secondary">
            <tr>
                <th scope="col" class="text-center align-middle">No</th>
                <th scope="col" class="text-center align-middle">Pelaku</th>
                <th scope="col" class="text-center align-middle">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    Lokasi
                                    <div class="sortDetailItemIcon" id="detailItemLokasiIcon">
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
                                        onclick="sortDetailCSO(0,2,'detailItemLokasiIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortDetailCSO(1,2,'detailItemLokasiIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
                <th scope="col" class="text-center align-middle">Color</th>
                <th scope="col" class="text-center align-middle">Qty/lokasi</th>
                <th scope="col" class="text-center align-middle">
                    <div class="dropdown">
                        <div class="dropdown">
                            <button class="btn btn-sm fw-bold text-center" type="button" id="buttonStatus"
                                style="height=50%;" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="d-flex">
                                    CSO Ke-
                                    <div class="sortDetailItemIcon" id="detailItemCsoCountIcon">
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
                                        onclick="sortDetailCSO(0,5,'detailItemCsoCountIcon')">Ascending</button>
                                </li>
                                <li><button type='button' class="dropdown-item filterItem"
                                        onclick="sortDetailCSO(1,5,'detailItemCsoCountIcon')">Descending</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </th>
                <th scope="col" class="text-center align-middle">Grade</th>
                <th scope="col" class="text-center align-middle">Remark</th>
                <th scope="col" class="text-center align-middle">History</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($tableDetailDashboard as $detail)
                @php
                    if ($detail->csocount == 1) {
                        $totalCSO1 += $detail->qty;
                    } elseif ($detail->csocount == 2) {
                        $totalCSO2 += $detail->qty;
                    } elseif ($detail->csocount == 3) {
                        $totalCSO3 += $detail->qty;
                    } else {
                        $totalCSO4 += $detail->qty;
                    }
                @endphp
                <tr>
                    <td class="text-center align-middle">{{ $loop->iteration }}</td>
                    <td class="text-center align-middle">{{ $detail->name }}</td>
                    <td class="align-middle">{{ $detail->locationname }}</td>
                    <td class="text-center align-middle">{{ $detail->color }}</td>
                    <td class="text-center align-middle">{{ number_format($detail->qty, 2, ',', '.') }}</td>
                    <td style="text-align: center">{{ $detail->csocount }}</td>
                    <td class="text-center align-middle">{{ $detail->grade }} @if ($detail->description != null) ({{ $detail->description }}) @endif</td>
                    <td class="text-center align-middle">{{ $detail->remark }}</td>
                    <td class="text-center align-middle">{{ $detail->history }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>

<div class="row mb-2">
    <div class="col-7">
        <table class="table table-sm table-responsive-md table-hover table-bordered shadow-sm small">
            <thead class="table-secondary">
                <tr>
                    <th scope="col">Pelaku</th>
                    <th scope="col">CSO 1</th>
                    <th scope="col">CSO 2</th>
                    <th scope="col">CSO 3</th>
                    <th scope="col">CSO 4</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($dataCso as $cso)
                    <tr>
                        <td>{{ $cso['name'] }}</td>
                        <td @if ($cso['cso1'] != 0) class="bg-info" @endif>
                            {{ number_format($cso['cso1'], 2, ',', '.') }}</td>
                        <td @if ($cso['cso2'] != 0) class="bg-info" @endif>
                            {{ number_format($cso['cso2'], 2, ',', '.') }}</td>
                        <td @if ($cso['cso3'] != 0) class="bg-info" @endif>
                            {{ number_format($cso['cso3'], 2, ',', '.') }}</td>
                        <td @if ($cso['cso4'] != 0) class="bg-info" @endif>
                            {{ number_format($cso['cso4'], 2, ',', '.') }}</td>
                    </tr>
                @endforeach
                <tr class="table-secondary">
                    <td>Total</td>
                    <td>{{ number_format($totalCSO1, 2, ',', '.') }}</td>
                    <td>{{ number_format($totalCSO2, 2, ',', '.') }}</td>
                    <td>{{ number_format($totalCSO3, 2, ',', '.') }}</td>
                    <td>{{ number_format($totalCSO4, 2, ',', '.') }}</td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="col-2">
        <input type="text" id="itemid" class="d-none" value="{{ $itemid }}">
        {{-- <input type="text" id="batchno" class="d-none" value="{{ $batchno }}"> --}}
        @if (Auth::user()->level == 1 || Auth::user()->level == 2)
            <button type="button" onclick="openModalCsoUlang()" class="btn btn-info mb-3" id="csoulang"
                @if ($checkCso == 0 || $checkItemType->statuscso == 4) disabled @endif>CSO Ulang</button>
        @elseif (Auth::user()->level == 3)
            <button type="button" onclick="openModalCsoUlang()" class="btn btn-info mb-3" id="csoulang"
                @if ($checkCso == 0 || $checkItemType->statuscso == 4 || Auth::user()->userid != $checkItemType->analisatorid) disabled @endif>CSO Ulang</button>
        @endif
        <div class="form-check">
            <input class="form-check-input" type="checkbox" id="checkkesalahanadmin" name="check_kesalahan_admin"
                @if ($dataAdminBatch->kesalahan_admin == 1) checked @endif @if (Auth::user()->level != 1 && Auth::user()->level != 2) disabled @endif>
            <label class="form-check-label small" for="checkkesalahanadmin">
                Kesalahan Admin
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" id="checkbatchTertukar" name="check_batch_tertukar"
                @if ($dataAdminBatch->batch_tertukar == 1) checked @endif @if (Auth::user()->level != 1 && Auth::user()->level != 2) disabled @endif>
            <label class="form-check-label small" for="checkbatchTertukar">
                Beda Batch
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" id="checkPemeriksaanAnalisator"
                name="check_pemeriksaan_analisator" @if ($dataAdminBatch->analisator_checked == 1) checked @endif
                @if (Auth::user()->level != 1 && Auth::user()->level != 2 && Auth::user()->level != 3) disabled @endif>
            <label class="form-check-label small" for="checkPemeriksaanAnalisator">
                Checked
            </label>
        </div>
        <div class="form-check">  {{-- // tidak di hitung --}}
             <input class="form-check-input" type="checkbox" id="checkTidakDiHitung"
                name="check_tidak_hitung" @if ($dataAdminBatch->tidak_hitung == 1) checked @endif
                @if (Auth::user()->level != 1 && Auth::user()->level != 2 && Auth::user()->level != 3) disabled @endif>
            <label class="form-check-label small" for="checkTidakDiHitung">
                Tidak di Hitung
            </label>
        </div>
    </div>
    <div class="col-3 small">
        <div class="w-100 mb-2">
            <label class="input-group-text small">Analisator</label>
            @if (Auth::user()->level == 1 || Auth::user()->level == 2)
                <select class="form-select form-select-sm" id="" name="analisator">
                @if (count($analisator) == 0)
                    <option value="" selected>--Pilih Analisator--</option>
                    @foreach ($dbxJob as $job)
                        <option value="{{ $job->userid }}">{{ $job->name }}</option>
                    @endforeach
                @else
                    <option value="">-</option>
                    @foreach ($dbxJob as $job)
                        <option value="{{ $job->userid }}"
                            @foreach ($analisator as $analis)
                            @if ($job->userid == $analis->analisatorid)
                            selected @endif
                @endforeach>
                {{ $job->name }}</option>
                @endforeach
                @endif
            </select>
        @else
            @if (count($analisator) == 0)
                <input type="text" class="form-select form-select-sm" value="Belum Ada" readonly>
            @else
                @foreach ($dbxJob as $job)
                    @foreach ($analisator as $analis)
                        @if ($job->userid == $analis->analisatorid)
                            <input type="text" value="{{ $job->userid }}" name="analisator" hidden>
                            <input type="text" class="form-select form-select-sm" value="{{ $job->name }}"
                                readonly>
                        @endif
                    @endforeach
                @endforeach
            @endif
            @endif

        </div>
        <div class="w-100 mb-2">
            <label class="input-group-text small">Grouping</label>
            <select class="form-select form-select-sm" id="groupingId" name="grouping">
                @if (count($tertukar) == 0)
                    <option value="" selected>--Pilih Group--</option>
                    @foreach ($group as $grup)
                        <option value="{{ $grup->groupid }}">{{ $grup->groupdesc }}</option>
                    @endforeach
                @else
                    <option value="0">-</option>
                    @foreach ($group as $grup)
                        <option value="{{ $grup->groupid }}"
                            @foreach ($tertukar as $tukar)
                                @if ($grup->groupid == $tukar->groupid)
                                selected                            
                                @endif @endforeach>
                            {{ $grup->groupdesc }}</option>
                    @endforeach
                @endif
            </select>
        </div>
        <div class="w-100 mb-2">
            <label class="input-group-text small">Group Value</label>
            <input type="number" class="form-control form-control-sm"
            name="groupValue" id='groupValue' disabled value=''>
        </div>
    </div>
</div>

<div class="">
    <label for="vketerangan" class="input-group-text">Keterangan Koreksi</label>
    <textarea class="form-control form-control-sm" name="keterangan" id="vketerangan"
        style="resize: none; max-height: 10vh;">{{ $keterangan }}</textarea>
</div>

<script>
    if ({{ Auth::user()->level }} == 3) {
        if ({{ Auth::user()->userid }} != {{ $checkItemType->analisatorid }}) document.getElementById('buttonSubmit')
            .disabled = true;
        else document.getElementById('buttonSubmit').disabled = false;
    } else document.getElementById('buttonSubmit').disabled = false;
</script>
