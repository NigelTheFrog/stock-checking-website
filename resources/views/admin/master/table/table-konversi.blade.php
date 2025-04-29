 {{-- <table id='dataTable' class="table table-lg table-bordered table-hover table-responsive small table-striped " 
 style="background-color:rgb(255, 255, 255)"> --}}
 <table id='dataTable' class="table table-lg table-hover table-responsive small" 
 style="background-color:rgb(255, 255, 255)">    
     <thead class="table-dark">
        <tr class="text-center ">
            <th class="align-middle" style="width: 2%">No</th>
            <th class="align-middle" style="width: 10%">Item Code</th>
            <th class="align-middle" style="width: 10%">Nama Item</th>
            <th class="align-middle" style="width: 10%">Konversi_1</th>
            <th class="align-middle" style="width: 10%">Konversi_2</th>
            <th class="align-middle" style="width: 10%">Konversi_3</th>
            <th class="align-middle" style="width: 10%">Std Berat Kemasan</th>
            <th class="align-middle" style="width: 10%">
                @if ($dataCoy != 'LAB') Material Loss Minus
                @else Toleransi Minus (%) @endif </th>
            <th class="align-middle" style="width: 10%">
                @if ($dataCoy!='LAB')Material Loss Plus
                @else Toleransi Plus (%)@endif </th>
            <th class="align-middle" style="width: 15%">
                @if ($dataCoy!='LAB')Total Produksi
                @else Std Toleransi (%)@endif</th>
            @if($statusDoc == "A")
                <th class="align-middle" style="width: 5%">Submit</th>
            @endif
            <th hidden>id</th>
        </tr>
    </thead>
    <tbody>                                
        @foreach ($item as $item)
        <tr class="text-center">
            <td class="align-middle">{{ $loop->iteration }}</td>
            <td class="align-middle">{{$item->itemcode}}</td>
            <td class="align-middle">{{$item->itemname}}</td>
            @if($statusDoc == 'A')

                <td class="align-middle"><span class='d-none konversi_1'> {{$item->konversi_1}}</span>
                    <input id='konversi_1' value='{{$item->konversi_1}}' type="number" class="form-control inputstyle" step='0.001'>
                </td>
                <td class="align-middle"><span class='d-none konversi_2'> {{$item->konversi_2}}</span>
                    <input id='konversi_2' value='{{$item->konversi_2}}' type="number" class="form-control inputstyle" step='0.001'
                    @if($item->konversi_1 == 0) disabled @endif>
                </td>
                <td class="align-middle"><span class='d-none konversi_3'> {{$item->konversi_3}}</span>
                    <input id='konversi_3' value='{{$item->konversi_3}}' type="number" class="form-control inputstyle" step='0.001'
                    @if($item->konversi_2 == 0) disabled @endif>
                </td>
                <td class="align-middle"><span class='d-none beratKemasan'> {{$item->std_berat_kemasan}}</span>
                    <input id='beratKemasan' value='{{$item->std_berat_kemasan}}' type="number" class="form-control inputstyle" step='0.001'>
                </td>
                <td class="align-middle"><span class='d-none materialLossMinus'> {{$item->std_material_loss_minus}}</span>
                    <input id='materialLossMinus' 
                    @if ($dataCoy != 'LAB') value='{{$item->std_material_loss_minus}}'
                    @else value='{{$item->toleransi_minus}}' @endif type="number" class="form-control inputstyle" step='0.001'>
                </td>
                <td class="align-middle"> <span class='d-none materialLossPlus'> {{$item->std_material_loss_plus}}</span>
                    <input id='materialLossPlus' 
                    @if ($dataCoy != 'LAB') value='{{$item->std_material_loss_plus}}'
                    @else value='{{$item->toleransi_plus}}' @endif type="number" class="form-control inputstyle" step='0.001'>
                </td>
                <td class="align-middle"><span class='d-none totalProduksi'> {{$item->total_produksi}}</span>
                    <input id='totalProduksi' 
                    @if ($dataCoy != 'LAB') value='{{$item->total_produksi}}'
                    @else value='{{$item->std_toleransi}}' @endif type="number" class="form-control inputstyle" step='0.001'>
                </td>

                    <td class="align-middle">
                        <span onclick="submit(this)">
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="30" fill="currentColor" class="bi bi-file-arrow-up" viewBox="8 0 0.5 16">
                                <path d="M8 11a.5.5 0 0 0 .5-.5V6.707l1.146 1.147a.5.5 0 0 0 .708-.708l-2-2a.5.5 0 0 0-.708 0l-2 2a.5.5 0 1 0 .708.708L7.5 6.707V10.5a.5.5 0 0 0 .5.5"/>
                                <path d="M4 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zm0 1h8a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1"/>
                              </svg>                                  
                            </sapn>
                    </td>
            @else
                <td class="align-middle"><span class='konversi_1'> {{$item->konversi_1}}</span>
                    {{-- <input style="text-align: right;" id='konversi_1' value='{{$item->konversi_1}}' type="number" class="form-control" step='0.001'> --}}
                </td>
                <td class="align-middle"><span class='konversi_2'> {{$item->konversi_2}}</span>
                    {{-- <input style="text-align: right;" id='konversi_2' value='{{$item->konversi_2}}' type="number" class="form-control" step='0.001'
                    @if($item->konversi_1 == 0) disabled @endif> --}}
                </td>
                <td class="align-middle"><span class='konversi_3'> {{$item->konversi_3}}</span>
                    {{-- <input style="text-align: right;" id='konversi_3' value='{{$item->konversi_3}}' type="number" class="form-control" step='0.001'
                    @if($item->konversi_2 == 0) disabled @endif> --}}
                </td>
                <td class="align-middle"><span class='beratKemasan'> {{$item->std_berat_kemasan}}</span>
                    {{-- <input style="text-align: right;" id='beratKemasan' value='{{$item->std_berat_kemasan}}' type="number" class="form-control" step='0.001'> --}}
                </td>
                <td class="align-middle"><span class='materialLossMinus'> {{$item->std_material_loss_minus}}</span>
                    {{-- <input style="text-align: right;" id='materialLossMinus' 
                    @if ($dataCoy != 'LAB') value='{{$item->std_material_loss_minus}}'
                    @else value='{{$item->toleransi_minus}}' @endif type="number" class="form-control" step='0.001'> --}}
                </td>
                <td class="align-middle"> <span class='materialLossPlus'> {{$item->std_material_loss_plus}}</span>
                    {{-- <input style="text-align: right;" id='materialLossPlus' 
                    @if ($dataCoy != 'LAB') value='{{$item->std_material_loss_plus}}'
                    @else value='{{$item->toleransi_plus}}' @endif type="number" class="form-control" step='0.001'> --}}
                </td>
                <td class="align-middle"><span class='totalProduksi'> {{$item->total_produksi}}</span>
                    {{-- <input style="text-align: right;" id='totalProduksi' 
                    @if ($dataCoy != 'LAB') value='{{$item->total_produksi}}'
                    @else value='{{$item->std_toleransi}}' @endif type="number" class="form-control" step='0.001'> --}}
                </td>
            @endif

            <td hidden>{{$item->trsdetid}},{{$item->itemcode}}</td>
        </tr>                                    
        @endforeach                                
    </tbody>
</table>                