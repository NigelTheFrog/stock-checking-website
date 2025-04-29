@extends('layouts.master')

@section('title', 'Cek Stok')
@section('styles')
    <style>
        .title-info {
            padding-top: 25px;
        }

        .page-break {
            page-break-after: always;
        }

        th {
            text-align: center;

            border: 1px solid;
            padding-left: 2px;
            padding-right: 2px;
            vertical-align: middle;
        }

        .th-content-cso {
            border-color: rgb(65, 65, 65);
            font-size: 9pt;
        }

        .th-content-noncso {
            border-color: rgb(65, 65, 65);
            font-size: 9pt;
            height: 1cm;
        }

        .tr-head {
            background-color: #1c1c1c;
            color: white;
            border-color: rgb(65, 65, 65);
        }

        td {
            border: 1px solid;
            vertical-align: middle;
            height: 1cm;
        }

        .td-persetujuan {
            vertical-align: middle;
            text-align: center;
            font-size: 9.5pt;
            font-weight: bold;
            width: 12.5%
        }

        .td-content {
            border-color: rgb(192, 192, 192);
        }

        .td-selisih-minus {
            color: red;
            border-color: rgb(192, 192, 192);
        }

        .td-non-itemname {
            text-align: center;
        }

        .tr-body:nth-child(odd) {
            background-color: rgb(233, 233, 233)
        }

        .tr-body:nth-child(even) {
            background-color: rgb(247, 247, 247)
        }

        .tr-body-divider {
            background-color: #fcba03;
            font-weight: bold;
            padding-left: 2cm;
            font-size: 9pt;
            border-color: rgb(192, 192, 192);
        }

        .tr-selisih {
            font-size: 8pt;
            line-height: 0.5cm
        }

        .tr-rekapitulasi-global {
            text-align: center;
            align-items: center;
            font-size: 9pt;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
        }

        h2 {
            font-family: Arial, sans-serif;
            text-align: justify;
        }
    </style>
@endsection

@section('content')
    <div class="content-wrapper mt-3">
        <!-- Main content -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row">
                    <div class="">
                        <div class="card card-secondary">
                            <div class="card-header bg-secondary text-white">
                                <div class="row justify-content-between">
                                    <div class="col-md-8">
                                        <h3 class="card-title">{{ $title }}</h3>
                                    </div>
                                    @if ($dataCso->statusdoc == 'P')
                                        <div class="col-md-2 text-end">
                                            {{-- <form method="POST" action="{{ route('exportExcel') }}">
                                                @csrf --}}
                                            <input type="text" name="trsidlaporan" value="{{ $trsidlaporan }}" hidden>
                                            <input type="text" name="type" value="3" hidden>
                                            <button type="submit" class="btn btn-success text-white" id="button_export"><i
                                                    class="fas fa-print pe-2"></i>Export Excel</button>
                                            {{-- </form> --}}
                                        </div>
                                        <div class="col-md-2 text-end">
                                            <form method="POST" action="{{ route('cek-stok.store') }}">
                                                @csrf
                                                <input type="text" name="trsidlaporan" value="{{ $trsidlaporan }}"
                                                    hidden>
                                                <input type="text" name="pdf" value="1" hidden>
                                                <input type="text" name="type" value="3" hidden>
                                                <button type="submit" class="btn btn-primary text-white"><i
                                                        class="fas fa-print pe-2"></i>Print Keseluruhan</button>
                                            </form>
                                        </div>
                                    @endif
                                </div>
                            </div>
                            <div class="card-body" style="background-color: #f8f8f8;">
                                <h2>
                                    {{ substr($dataCso->doccsoid, 0, 3) }} {{ $dataCoy->coycode }} TANGGAL:
                                    {{ Str::upper(\Carbon\Carbon::parse($dataCso->startcsodate)->translatedFormat('j F Y')) }}
                                </h2>
                                <h2>
                                    MATERIAL: {{ Str::upper($dataCso->csomaterial) }}
                                </h2>
                                <h2>
                                    LOKASI: {{ $dataCoy->description }}
                                </h2>

                                <div class="page-break"
                                    style="margin-top: 20px; max-width: 80vw; overflow-x: auto; overflow-y: auto">
                                    <table class="sticky-header" style="border-collapse: collapse;min-width: 200%;" id="tableid">
                                        <thead>
                                            <tr class="tr-head">
                                                @if (substr($dataCso->doccsoid, 0, 3) == 'CSS')
                                                    <th class="th-content-noncso" rowspan="2" style="width: 0.5cm">
                                                        Tanggal<br>Import</th>
                                                @endif
                                                <th class="th-content-noncso" rowspan="2" style="width: 0.5cm">No</th>
                                                <th class="th-content-noncso" rowspan="2" style="width: 1.25cm">Nama Item
                                                </th>
                                                <th class="th-content-noncso" rowspan="2" style="width: 0.25cm">Grade
                                                </th>
                                                <th class="th-content-noncso" rowspan="2" style="width: 0.5cm">UOM</th>
                                                <th class="th-content-noncso" rowspan="2" style="width: 0.75cm">
                                                    Analisator</th>
                                                @php
                                                    $count = count($dataWrh);
                                                @endphp
                                                @foreach ($dataWrh as $wrh)
                                                    <th class="th-content-noncso" rowspan="2" style="width: 0.5cm">
                                                        {{ $wrh->wrh }}</th>
                                                @endforeach
                                                <th class="th-content-noncso" rowspan="2" style="width: 0.75cm">Total
                                                </th>
                                                <th class="th-content-cso" colspan="5" style="width: 2.5cm">CSO 1</th>
                                                <th class="th-content-cso" colspan="5" style="width: 2.5cm">CSO 2</th>
                                                <th class="th-content-cso" colspan="5" style="width: 2.5cm">CSO 3</th>
                                                <th class="th-content-cso" colspan="3" style="width: 2cm">Trace</th>
                                                <th class="th-content-noncso" rowspan="2" style="width: 0.5cm">Warna</th>
                                                <th class="th-content-noncso" rowspan="2" style="width: 0.5cm">Keterangan
                                                </th>
                                                <th class="th-content-noncso" rowspan="2" style="width: 1cm">Pelaku</th>
                                            </tr>
                                            <tr class="tr-head">
                                                <th class="th-content-cso" style="width: 0.5cm">Realita Fisik</th>
                                                <th class="th-content-cso" style="width: 0.5cm">Selisih Fisik</th>
                                                <th class="th-content-cso" style="width: 0.25cm">Qty/lokasi</th>
                                                <th class="th-content-cso" style="width: 0.75cm">Lokasi</th>
                                                <th class="th-content-cso" style="width: 0.25cm">Kesimpulan</th>

                                                <th class="th-content-cso" style="width: 0.5cm">Realita Fisik</th>
                                                <th class="th-content-cso" style="width: 0.5cm">Selisih Fisik</th>
                                                <th class="th-content-cso" style="width: 0.25cm">Qty/lokasi</th>
                                                <th class="th-content-cso" style="width: 0.75cm">Lokasi</th>
                                                <th class="th-content-cso" style="width: 0.25cm">Kesimpulan</th>

                                                <th class="th-content-cso" style="width: 0.5cm">Realita Fisik</th>
                                                <th class="th-content-cso" style="width: 0.5cm">Selisih Fisik</th>
                                                <th class="th-content-cso" style="width: 0.25cm">Qty/lokasi</th>
                                                <th class="th-content-cso" style="width: 0.75cm">Lokasi</th>
                                                <th class="th-content-cso" style="width: 0.25cm">Kesimpulan</th>

                                                <th class="th-content-cso" style="width: 0.5cm">Realita Fisik</th>
                                                <th class="th-content-cso" style="width: 0.5cm">Selisih Fisik</th>
                                                <th class="th-content-cso" style="width: 0.5cm">Kesimpulan</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($dataLaporan as $laporan)
                                                <tr class="tr-rekapitulasi-global">
                                                    @if (substr($dataCso->doccsoid, 0, 3) == 'CSS')
                                                        <td class="td-content">
                                                            {{ \Carbon\Carbon::parse($laporan->createddate)->translatedFormat('d F Y') }}
                                                        </td>
                                                    @endif
                                                    <td class="td-content">{{ $loop->iteration }}</td>
                                                    <td class="td-content">{{ $laporan->itemname }}</td>
                                                    <td class="td-content">{{ $laporan->grade }}</td>
                                                    <td class="td-content">{{ $laporan->uom }}</td>
                                                    <td class="td-content">{{ $laporan->name }}</td>
                                                    @foreach ($dataWrh as $wrh)
                                                        <td class="td-content">
                                                            @foreach ($dataWrhQty as $qtyWrh)
                                                                @if ($qtyWrh->wrh == $wrh->wrh && $qtyWrh->trsdetid == $laporan->trsdetid)
                                                                    {{ $qtyWrh->qty }}
                                                                @endif
                                                            @endforeach
                                                        </td>
                                                    @endforeach
                                                    <td class="td-content">{{ $laporan->onhand }}</td>

                                                    <td class="td-content">{{ $laporan->qtycso1 }}</td>
                                                    <td class="td-content">{{ $laporan->qtycso1 - $laporan->onhand }}</td>
                                                    <td class="td-content">{{ $laporan->locqty1 }}</td>
                                                    <td class="td-content">{{ $laporan->loctcso1 }}</td>
                                                    @if ($laporan->qtycso1 != $laporan->onhand)
                                                        <td class="td-content"
                                                            style="background-color: #FE0000; color: white; font-weight: bolder;">
                                                            False
                                                        </td>
                                                    @else
                                                        <td class="td-content"
                                                            style="background-color: #00AF50; color: white; font-weight: bolder;">
                                                            True</td>
                                                    @endif


                                                    <td class="td-content">{{ $laporan->qtycso2 }}</td>
                                                    <td class="td-content">
                                                        @if ($laporan->qtycso1 != $laporan->onhand && ($laporan->qtycso2!=NULL ||$laporan->qtycso2!=''))
                                                            {{ $laporan->qtycso2 - $laporan->onhand }}
                                                        @endif
                                                    </td>
                                                    <td class="td-content">{{ $laporan->locqty2 }}</td>
                                                    <td class="td-content">{{ $laporan->loctcso2 }}</td>
                                                    @if ($laporan->qtycso1 != $laporan->onhand && $laporan->qtycso2 != $laporan->onhand)
                                                        <td class="td-content"
                                                            style="background-color: #FE0000; color: white; font-weight: bolder;">
                                                            False
                                                        </td>
                                                    @else
                                                        <td class="td-content"
                                                            style="background-color: #00AF50; color: white; font-weight: bolder;">
                                                            True</td>
                                                    @endif

                                                    <td class="td-content">{{ $laporan->qtycso3 }}</td>
                                                    <td class="td-content">
                                                        @if ($laporan->qtycso1 != $laporan->onhand && $laporan->qtycso2 != $laporan->onhand
                                                        && ($laporan->qtycso3!=NULL ||$laporan->qtycso3!=''))
                                                            {{ $laporan->qtycso3 - $laporan->onhand }}
                                                        @endif
                                                    </td>
                                                    <td class="td-content">{{ $laporan->locqty3 }}</td>
                                                    <td class="td-content">{{ $laporan->loctcso3 }}</td>
                                                    @if (
                                                        $laporan->qtycso1 != $laporan->onhand &&
                                                            $laporan->qtycso2 != $laporan->onhand &&
                                                            $laporan->qtycso3 != $laporan->onhand)
                                                        <td class="td-content"
                                                            style="background-color: #FE0000; color: white; font-weight: bolder;">
                                                            False
                                                        </td>
                                                    @else
                                                        <td class="td-content"
                                                            style="background-color: #00AF50; color: white; font-weight: bolder;">
                                                            True</td>
                                                    @endif
                                                    <td class="td-content">
                                                        {{ $laporan->trace }}
                                                    </td>
                                                    <td class="td-content">
                                                        @if (
                                                            $laporan->qtycso1 != $laporan->onhand &&
                                                                $laporan->qtycso2 != $laporan->onhand &&
                                                                $laporan->qtycso3 != $laporan->onhand 
                                                                && ($laporan->trace != NULL ||$laporan->trace !=''))
                                                            {{ $laporan->trace - $laporan->onhand }}
                                                        @endif
                                                    </td>

                                                    @if (
                                                        $laporan->qtycso1 != $laporan->onhand &&
                                                            $laporan->qtycso2 != $laporan->onhand &&
                                                            $laporan->qtycso3 != $laporan->onhand &&
                                                            $laporan->trace != $laporan->onhand)
                                                        <td class="td-content"
                                                            style="background-color: #FE0000; color: white; font-weight: bolder;">
                                                            False
                                                        </td>
                                                    @else
                                                        <td class="td-content"
                                                            style="background-color: #00AF50; color: white; font-weight: bolder;">
                                                            True</td>
                                                    @endif
                                                    <td class="td-content">{{ $laporan->color }}</td>
                                                    <td class="td-content">{{ $laporan->keterangan }}</td>
                                                    <td class="td-content">{{ $laporan->pelaku }}</td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </div>
    <script>
        $(".sticky-header").floatThead({ scrollingTop: 0 })
        // setInterval(function(event) {
        //     $('.sticky-header').floatThead('reflow');
        // }, 500);
        function html_table_to_excel(type) {


            // var data = document.getElementById('tableid');

            // var file = XLSX.utils.table_to_sheet(data, {sheet: "sheet1"});

            // XLSX.write(file, { bookType: type, bookSST: true, type: 'base64' });

            // XLSX.writeFile(file, 'file.' + type);


            const element = document.getElementById('tableid');

            element.insertRow(0);
            element.insertRow(0);
            element.insertRow(0);
            element.insertRow(0);

            const ws = XLSX.utils.table_to_sheet(element,{raw: true});
            // ws["A1"] = {
            //     font: {
            //         bold: true,
            //     }
            // };
            const myNewData = [
                [`{{ substr($dataCso->doccsoid, 0, 3) }} {{ $dataCoy->coycode }} TANGGAL:
        {{ Str::upper(\Carbon\Carbon::parse($dataCso->startcsodate)->translatedFormat('j F Y')) }}`],
                [`MATERIAL: {{ Str::upper($dataCso->csomaterial) }}`],
                [`LOKASI: {{ $dataCoy->description }}`]
            ];

            XLSX.utils.sheet_add_aoa(ws, myNewData);

            var caunt = parseInt(`{{ $count }}`);
            // console.log(caunt);

            if (`{{ substr($dataCso->doccsoid, 0, 3) }}` == 'CSS') {
                ws["!merges"] = [{
                        s: {
                            c: 0,
                            r: 0
                        },
                        e: {
                            c: 6,
                            r: 0
                        }
                    }, // A1
                    {
                        s: {
                            c: 0,
                            r: 1
                        },
                        e: {
                            c: 6,
                            r: 1
                        }
                    }, // A1:B2
                    {
                        s: {
                            c: 0,
                            r: 2
                        },
                        e: {
                            c: 6,
                            r: 2
                        }
                    },

                    {
                        s: {
                            c: 0,
                            r: 4
                        },
                        e: {
                            c: 0,
                            r: 5
                        }
                    }, //a5:a6
                    {
                        s: {
                            c: 1,
                            r: 4
                        },
                        e: {
                            c: 1,
                            r: 5
                        }
                    },
                    {
                        s: {
                            c: 2,
                            r: 4
                        },
                        e: {
                            c: 2,
                            r: 5
                        }
                    },
                    {
                        s: {
                            c: 3,
                            r: 4
                        },
                        e: {
                            c: 3,
                            r: 5
                        }
                    },
                    {
                        s: {
                            c: 4,
                            r: 4
                        },
                        e: {
                            c: 4,
                            r: 5
                        }
                    },
                    {
                        s: {
                            c: 5,
                            r: 4
                        },
                        e: {
                            c: 5,
                            r: 5
                        }
                    }
                ];

                for (let i = 0; i < caunt; i++) {
                    ws["!merges"].push({
                        s: {
                            c: 6 + i,
                            r: 4
                        },
                        e: {
                            c: 6 + i,
                            r: 5
                        }
                    })
                }

                ws["!merges"].push({
                        s: {
                            c: 6 + caunt,
                            r: 4
                        },
                        e: {
                            c: 6 + caunt,
                            r: 5
                        }
                    }, {
                        s: {
                            c: 6 + caunt + 1,
                            r: 4
                        },
                        e: {
                            c: 6 + caunt + 5,
                            r: 4
                        }
                    }, //a5:l115
                    {
                        s: {
                            c: 6 + caunt + 6,
                            r: 4
                        },
                        e: {
                            c: 6 + caunt + 10,
                            r: 4
                        }
                    }, {
                        s: {
                            c: 6 + caunt + 11,
                            r: 4
                        },
                        e: {
                            c: 6 + caunt + 15,
                            r: 4
                        }
                    }, {
                        s: {
                            c: 6 + caunt + 16,
                            r: 4
                        },
                        e: {
                            c: 6 + caunt + 18,
                            r: 4
                        }
                    }
                );

            } else {
                ws["!merges"] = [{
                        s: {
                            c: 0,
                            r: 0
                        },
                        e: {
                            c: 6,
                            r: 0
                        }
                    }, // A1
                    {
                        s: {
                            c: 0,
                            r: 1
                        },
                        e: {
                            c: 6,
                            r: 1
                        }
                    }, // A1:B2
                    {
                        s: {
                            c: 0,
                            r: 2
                        },
                        e: {
                            c: 6,
                            r: 2
                        }
                    },

                    {
                        s: {
                            c: 0,
                            r: 4
                        },
                        e: {
                            c: 0,
                            r: 5
                        }
                    }, //a5:a6
                    {
                        s: {
                            c: 1,
                            r: 4
                        },
                        e: {
                            c: 1,
                            r: 5
                        }
                    },
                    {
                        s: {
                            c: 2,
                            r: 4
                        },
                        e: {
                            c: 2,
                            r: 5
                        }
                    },
                    {
                        s: {
                            c: 3,
                            r: 4
                        },
                        e: {
                            c: 3,
                            r: 5
                        }
                    },
                    {
                        s: {
                            c: 4,
                            r: 4
                        },
                        e: {
                            c: 4,
                            r: 5
                        }
                    },
                ];

                for (let i = 0; i < caunt; i++) {
                    ws["!merges"].push({
                        s: {
                            c: 5 + i,
                            r: 4
                        },
                        e: {
                            c: 5 + i,
                            r: 5
                        }
                    })
                }

                ws["!merges"].push({
                        s: {
                            c: 5 + caunt,
                            r: 4
                        },
                        e: {
                            c: 5 + caunt,
                            r: 5
                        }
                    }, {
                        s: {
                            c: 5 + caunt + 1,
                            r: 4
                        },
                        e: {
                            c: 5 + caunt + 5,
                            r: 4
                        }
                    }, //a5:l115
                    {
                        s: {
                            c: 5 + caunt + 6,
                            r: 4
                        },
                        e: {
                            c: 5 + caunt + 10,
                            r: 4
                        }
                    }, {
                        s: {
                            c: 5 + caunt + 11,
                            r: 4
                        },
                        e: {
                            c: 5 + caunt + 15,
                            r: 4
                        }
                    }, {
                        s: {
                            c: 5 + caunt + 16,
                            r: 4
                        },
                        e: {
                            c: 5 + caunt + 18,
                            r: 4
                        }
                    }
                );
            }

            const wb = XLSX.utils.book_new();

            XLSX.utils.book_append_sheet(wb, ws, 'sheet1');

            XLSX.write(wb, {
                bookType: type,
                bookSST: true,
                type: 'base64'
            })
            XLSX.writeFile(wb,
                `{{ substr($dataCso->doccsoid, 0, 3) }} {{ $dataCoy->coycode }}-{{ Str::upper(\Carbon\Carbon::parse($dataCso->startcsodate)->translatedFormat('j F Y')) }}` +
                '.xlsx');

        }

        const export_button = document.getElementById('export_button');

        button_export.addEventListener('click', () => {
            html_table_to_excel('xlsx');
        });
    </script>
@endsection
