 <table id='dataTable' class="table table-lg table-bordered table-hover table-responsive small table-striped " style="background-color:rgb(255, 255, 255)">
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
            <th class="align-middle" style="width: 12%">
                @if ($dataCoy!='LAB')Total Produksi
                @else Std Toleransi (%)@endif</th>
            <th class="align-middle" style="width: 7%">Submit</th>
            <th hidden>id</th>
        </tr>
    </thead>
    <tbody>                                
        @foreach ($item as $item)
        <tr class="text-center">
            <td class="align-middle">{{ $loop->iteration }}</td>
            <td class="align-middle">{{$item->itemcode}}</td>
            <td class="align-middle">{{$item->itemname}}</td>
            <td class="align-middle"><span class='d-none konversi_1'> {{$item->konversi_1}}</span>
                <input id='konversi_1' value='{{$item->konversi_1}}' type="number" class="form-control inputstyle" step='0.001'>
            </td>
            <td class="align-middle"><span class='d-none konversi-2'> {{$item->konversi_2}}</span>
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
                <button type="button" class="btn btn-danger" onclick="submit(this)">Submit</button></td>
            <td hidden>{{$item->itemcode}}</td>
        </tr>                                    
        @endforeach                                
    </tbody>
</table>                