<table class="table table-sm table-bordered table-hover table-responsive small table-striped">
    <thead class="table-dark">
        <tr class="text-center ">
            <th class="align-middle text-center" style="width: 2%">No</th>
            <th class="align-middle" style="width: 15%">Nama Item</th>
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
        <?php $index=0; ?>
        
        @foreach ($itemSdgProses as $barang)
            <tr>
                <td class="align-middle text-center">{{ $loop->iteration }}</td>
                <td>{{ $barang->itemname }}</td>
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
</table>
