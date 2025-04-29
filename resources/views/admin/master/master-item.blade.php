@extends('layouts.master')

@section('title','Master Item')
@section('styles')
    <style>
        .inputstyle{
            text-align: right;
            padding: 6px 6px 6px 6px
        }
        .bi-file-arrow-up
        {
            color:blue;
            transition: 0.3s;
            opacity:0.3;
        }
        .bi-file-arrow-up:hover
        {
            /* box-shadow: 0px 0px 0px 2px red; */
            color:red;
            opacity:1;
        }

        .table-hover tbody tr:hover td {
        background: #f2f2f2;
        }
    </style>
@endsection

@section('content')

<div class="container-fluid px-4">
    <h1 class="mt-4">Master Item {{$dataCoy}}</h1>   
    <div class="row justify-content-md-center">
        <div class="col-12">
            <div class="card mt-2">
                <div class="card-header bg-secondary text-white">
                    <h4 class="card-title pt-2">Daftar Item</h4>
                </div>

                <div class="d-flex justify-content-between" style="background-color:rgb(248, 248, 248)">
                    <div style="margin-left: 2vw">
                        <div class="form-group d-flex mt-3">
                            {{-- <div class="input-group">
                                <label class="input-group-text" for="inputGroupSelect01">Document</label>
                                <select class="form-select" aria-label="With textarea" name="lokasi" required>
                                    <option selected>Pilih Document</option>
                                        @foreach($location as $loc)
                                            <option value="">{{ $loc->doccsoid}}</option>
                                        @endforeach
                                </select>
                                <div class="invalid-feedback">
                                    Pilih lokasi
                                </div>
                            </div> --}}
                            <div class="input-group">
                                <span class="input-group-text">Doc</span>
                                <select class="form-select" aria-label="With textarea" id="document">
                                    <option selected>Pilih Document</option>
                                        @foreach($document as $doc)
                                            <option 
                                            value="{{$doc->trsid}},{{$doc->statusdoc}},{{$doc->typecekstok}}">
                                            {{ $doc->doccsoid}}</option>
                                        @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    {{-- <div style="margin-left: 3vw; width: 15vw;">
                        <div class="form-group d-flex mt-3">
                            <div style="height: 5vh; display: flex;align-items: center;">
                                Tampilkan
                            </div>
                            <div style="height: 5vh;margin-left: 1vw; margin-right: 1vw">
                                <select class="form-control" id="limit">
                                    <option value="25" selected>25</option>
                                    <option value="50">50</option>
                                    <option value="75">75</option>
                                    <option value="100">100</option>
                                </select>
                            </div>
                            <div style="height: 5vh; display: flex;align-items: center;">
                                entri
                            </div>
        
        
                        </div>
                    </div> --}}
                    
                    <div style="margin-right: 3vw">
                        {{-- <form action="" method="get"> --}}
                            <div class="form-group d-flex mt-3">
                                <div>
                                    <button type="button" class="mr-3 btn btn-primary" data-bs-toggle="modal" 
                                    data-bs-target="#exampleModal" id="button_import" disabled>
                                        Import excel
                                        {{-- <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor"
                                            class="bi bi-search" viewBox="0 0 16 16">
                                            <path
                                                d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
                                        </svg> --}}
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" 
                                            fill="currentColor" class="bi bi-upload" viewBox="0 0 16 16">
                                            <path d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5"/>
                                            <path d="M7.646 1.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 2.707V11.5a.5.5 0 0 1-1 0V2.707L5.354 4.854a.5.5 0 1 1-.708-.708z"/>
                                        </svg>
                                    </button>
                                </div>
                                {{-- <div>
                                    <input type="text" class="form-control ml-3" placeholder="Search" name="search"
                                        value="search" style="width: 20vw" />
                                </div> --}}
                                <div>
                                    <button type="button" class="ml-2 btn btn-success" id="button_export">
{{--         
                                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor"
                                            class="bi bi-x-lg" viewBox="0 0 16 16">
                                            <path
                                                d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                        </svg> --}}
                                        Export
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" 
                                            class="bi bi-download" viewBox="0 0 16 16">
                                            <path d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5"/>
                                            <path d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708z"/>
                                        </svg>
                                    </button>
                                </div>
        
                            </div>
                        {{-- </form> --}}
                    </div>
                </div>
                {{-- table                    --}}
                <div class="card-body" style="background-color:rgb(248, 248, 248);" id='table-konversi'>
                    @include('admin.master.table.table-konversi')                             
                </div>
            </div> 
        </div> 
    </div>
</div> 

{{-- modal import excel --}}
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">DTW Master Item</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="mb-3 me-3">
                    <label for="formFile" class="form-label">Update master item</label>
                    <input class="form-control" type="file" id="formFile" accept=".xls,.xlsx,.csv">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" id="updateButton" class="btn btn-primary" onclick="updateDB()" disabled>Update</button>
            </div>
        </div>
    </div>
</div>

<script>
    const coy = `{{$dataCoy}}`;
    let statusdoc = '';
    let id = 0;
    let resetTable='';
    let namaFile='';
    let typecekstok= '';
    
    $(document).ready(function() {
        console.log(`{{$dataCoy}}`)
        $('#dataTable').DataTable({
            fixedColumns: {
                start: 1,
                end: 1
            },
            paging: true,        // Enables pagination
            // searching: true,     // Enables search
            // ordering: true,      // Enables sorting
            info: true,           // Enables table information (e.g., "Showing 1 to 10 of 100 entries")
            responsive: true,
            autoWidth: false,
            pageLength: 50,
    //         scrollCollapse: true,
    // scrollX: true,
    // scrollY: 300
        });
        $(".dataTables_filter input").css({ "width" :"350px" });
    });

    function getCekStok(trsid,coy)
    {
        statusdoc = trsid[1];
        id = trsid[0];
        typecekstok = trsid[2].toUpperCase();
        $.ajax({ 
            url: "{{  url('admin/master/master-item/getDocKonversi')  }}",
            type: 'POST',
            data: {
                trsid: id,
                statusDoc: statusdoc,
                dataCoy: coy
            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(data) {
                if(statusdoc == 'A') $('#button_import').prop('disabled',false)
                else $('#button_import').prop('disabled',true)
                $('#table-konversi').html(data);
                $('#dataTable').DataTable({
                    fixedColumns: {
                    start: 1,
                    end: 1
                    },
                    paging: true,        
                    // ordering: true,      // Enables sorting
                    info: true,     
                    responsive: true,
                    autoWidth: false,
                    pageLength: 50,
    //                 scrollCollapse: true,
    // scrollX: true,
    // scrollY: 300
                });
                $(".dataTables_filter input").css({ "width" :"350px" });
            }
        });
    }

    $('#document').on('change',function(){
        // console.log($(this).find(":selected").val().split(","));
        resetTable = $(this).find(":selected").val().split(",");
        namaFile = $(this).find(":selected").text().replaceAll(/\s/g,''); 
        console.log(namaFile);
        getCekStok($(this).find(":selected").val().split(","),coy);

    })

    function submit(but)
    {
        var get = $(but).closest('tr');
        var konversi_1 = get.find('#konversi_1').val();
        var konversi_2 = get.find('#konversi_2').val();
        var konversi_3 = get.find('#konversi_3').val();
        var beratKemasan = get.find('#beratKemasan').val();
        var lossMinus = get.find('#materialLossMinus').val();
        var lossPlus = get.find('#materialLossPlus').val();
        var totalProduksi = get.find('#totalProduksi').val();
        var itemCode = get.find('td:nth-child(12)').text().split(",");

        const arrSubmit = {
            konversi_1: konversi_1,
            konversi_2: konversi_2,
            konversi_3: konversi_2 == 0 ? 0: konversi_3,
            beratKemasan: beratKemasan,
            minus: lossMinus,
            plus: lossPlus,
            totalProduksi: totalProduksi,
            trsdetid: itemCode[0],
            itemCode: itemCode[1],
            coy: coy
        }
        // console.log(arrSubmit);
        $.ajax({ 
            url: "{{  url('admin/master/master-item/submit')  }}",
            type: 'POST',
            data: {
                arr: arrSubmit,
                trsid: id,
                typecekstok: typecekstok
            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(data) {
                
                if(data['message']==1)
                {
                    get.find('#konversi_1').val(konversi_1);
                    if(konversi_1 != 0) get.find('#konversi_2').prop('disabled',false).val(konversi_2);
                    else get.find('#konversi_2').prop('disabled',true).val(konversi_2);
                    if(konversi_2 != 0) get.find('#konversi_3').prop('disabled',false).val(arrSubmit['konversi_3']);
                    else get.find('#konversi_3').prop('disabled',true).val(arrSubmit['konversi_3']);
                    get.find('#beratKemasan').val(beratKemasan);
                    get.find('#materialLossMinus').val(lossMinus);
                    get.find('#materialLossPlus').val(lossPlus);
                    get.find('#totalProduksi').val(totalProduksi);


                    Swal.fire({
                    icon: "success",
                    position: 'top-end',
                    title: 'item '+data['data']+" berhasil di update",
                    showConfirmButton: false,
                    timer: 1500
                    }); 
                }
                else
                {
                    Swal.fire({
                    position: 'top-end',
                    icon: "error",
                    title:"Item "+ data['data']+" gagal di update",
                    showConfirmButton: false,
                    timer: 1500
                    }); 
                }
                
            }
        });
    };

    let update = {};

    var csv_file_elm = document.getElementById("formFile")
    csv_file_elm.addEventListener('change', CSV_XLSX_File_Selected_Event)

    async function CSV_XLSX_File_Selected_Event() {
        var id = this.id
        var inputElement = document.getElementById(id)
        let ext = inputElement.value

        ext = ext.split(".")
        ext = ext[ext.length - 1]

        var files = inputElement.files || [];

        if (!files.length) return;
        var file = files[0];
        var reader = new FileReader();

        function extractHeader(ws) {
            const header = [];
            const columnCount = XLSX.utils.decode_range(ws['!ref']).e.c + 1;
            for (let i = 0; i < columnCount; ++i) {
                header[i] = ws[`${XLSX.utils.encode_col(i)}1`].v;
            }
            return header;
        }

        reader.onloadend = async function (event) {
            try {
                var arrayBuffer = reader.result;
                var options = { type: 'array' };
                var workbook = XLSX.read(arrayBuffer, options);
                //console.timeEnd();

                var sheetName = workbook.SheetNames;
                var sheet = workbook.Sheets[sheetName];
                const header = extractHeader(sheet); //header

                if(header.includes(
                    'Item Code',
                    'Nama Item',
                    'Konversi_1',
                    'Konversi_2',
                    'Konversi_3',
                    'Std Berat Kemasan',
                    'Material Loss Minus',
                    'Material Loss Plus',
                    'Total Produksi') && header.length == 9)
                {
                    var sheet_to_html = XLSX.utils.sheet_to_html(sheet)
                    var sheet_to_json = XLSX.utils.sheet_to_json(sheet)
                    
                    if (sheet_to_json.length === 0) {
                        var sheet_to_csv = [XLSX.utils.sheet_to_csv(sheet)]
                        var results = sheet_to_csv
                    }

                    if (sheet_to_json.length > 0) {
                        var results = sheet_to_json
                    }

                    update = {
                        "coy": coy,
                        "data": results,
                        "ext": ext,
                        "result": 'success'
                    }
                    // console.log('MASOK');
                    // console.log(update['data']);
                    $('#updateButton').prop('disabled',false);
                }
                else
                {
                    update = {
                        "data": [],
                        "ext": '',
                        "result": 'failed'
                    }
                    // console.log(update)
                    Swal.fire({
                        icon: "error",
                        position: 'top-end',
                        title: 'Kolom tidak sesuai',
                        showConfirmButton: false,
                        timer: 2000
                    }); 
                    $('#updateButton').prop('disabled',true);
                }
                // console.log('Parsed_File_Obj')
                // console.log(Parsed_File_Obj)
                // console.log(Parsed_File_Obj['results'])
                // console.log('test' in Parsed_File_Obj['results'])
            }
            catch(err) {
                // document.getElementById("demo").innerHTML = err.message;
                // console.log(err);
                alert('Format file salah atau kolom tidak sesuai dengan table');
                $('#formFile').val('');
                $('#updateButton').prop('disabled',true);

            }
        };
        reader.readAsArrayBuffer(file);
    }

    function updateDB()
    {
        // window.location.reload();
        // ajax untuk update all master item
        $.ajax({ 
            url: "{{  url('admin/master/master-item/update-excel')  }}",
            type: 'POST',
            data: {
                data: update['data'],
                coy: update['coy'],
                trsid: id,
                typecekstok: typecekstok
            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(data) {
                // console.log(data);

                if(data['message']==1)
                {
                    $("#exampleModal").modal('hide');
                    Swal.fire({
                    position: "top-end",
                    icon: "success",
                    title: 'data berhasil di update',
                    showConfirmButton: false,
                    timer: 1500,
                    didOpen: () => {
                        Swal.showLoading();
                        timerInterval = setInterval(() => {
                        }, 100);
                    },
                    willClose: () => {
                        clearInterval(timerInterval);
                    }
                    }).then((result) => {
                    /* Read more about handling dismissals below */
                        if (result.dismiss === Swal.DismissReason.timer) {
                            console.log("I was closed by the timer");
                            $('#formFile').val('');
                            getCekStok(resetTable,coy);

                            // window.location.reload();

                        }
                    });
                }
                else
                {
                    Swal.fire({
                    position: 'top-end',
                    icon: "error",
                    title:"Item "+ data['data']+" gagal di update",
                    showConfirmButton: false,
                    timer: 1500
                    }); 
                }
            }
        });
    }

    function clamp_range(range) {
        if(range.e.r >= (1<<20)) range.e.r = (1<<20)-1;
        if(range.e.c >= (1<<14)) range.e.c = (1<<14)-1;
        return range;
    }

    var crefregex = /(^|[^._A-Z0-9])([$]?)([A-Z]{1,2}|[A-W][A-Z]{2}|X[A-E][A-Z]|XF[A-D])([$]?)([1-9]\d{0,5}|10[0-3]\d{4}|104[0-7]\d{3}|1048[0-4]\d{2}|10485[0-6]\d|104857[0-6])(?![_.\(A-Za-z0-9])/g;

    /*
    deletes `ncols` cols STARTING WITH `start_col`
    usage: delete_cols(ws, 4, 3); // deletes columns E-G and shifts everything after G to the left by 3 columns
    */
    function delete_cols(ws, start_col, ncols) {
        if(!ws) throw new Error("operation expects a worksheet");
        var dense = Array.isArray(ws);
        if(!ncols) ncols = 1;
        if(!start_col) start_col = 0;

        /* extract original range */
        var range = XLSX.utils.decode_range(ws["!ref"]);
        var R = 0, C = 0;

        var formula_cb = function($0, $1, $2, $3, $4, $5) {
            var _R = XLSX.utils.decode_row($5), _C = XLSX.utils.decode_col($3);
            if(_C >= start_col) {
                _C -= ncols;
                if(_C < start_col) return "#REF!";
            }
            return $1+($2=="$" ? $2+$3 : XLSX.utils.encode_col(_C))+($4=="$" ? $4+$5 : XLSX.utils.encode_row(_R));
        };

        var addr, naddr;
        for(C = start_col + ncols; C <= range.e.c; ++C) {
            for(R = range.s.r; R <= range.e.r; ++R) {
                addr = XLSX.utils.encode_cell({r:R, c:C});
                naddr = XLSX.utils.encode_cell({r:R, c:C - ncols});
                if(!ws[addr]) { delete ws[naddr]; continue; }
                if(ws[addr].f) ws[addr].f = ws[addr].f.replace(crefregex, formula_cb);
                ws[naddr] = ws[addr];
            }
        }
        for(C = range.e.c; C > range.e.c - ncols; --C) {
            for(R = range.s.r; R <= range.e.r; ++R) {
                addr = XLSX.utils.encode_cell({r:R, c:C});
                delete ws[addr];
            }
        }
        for(C = 0; C < start_col; ++C) {
            for(R = range.s.r; R <= range.e.r; ++R) {
                addr = XLSX.utils.encode_cell({r:R, c:C});
                if(ws[addr] && ws[addr].f) ws[addr].f = ws[addr].f.replace(crefregex, formula_cb);
            }
        }

        /* write new range */
        range.e.c -= ncols;
        if(range.e.c < range.s.c) range.e.c = range.s.c;
        ws["!ref"] = XLSX.utils.encode_range(clamp_range(range));

        /* merge cells */
        if(ws["!merges"]) ws["!merges"].forEach(function(merge, idx) {
            var mergerange;
            switch(typeof merge) {
                case 'string': mergerange = XLSX.utils.decode_range(merge); break;
                case 'object': mergerange = merge; break;
                default: throw new Error("Unexpected merge ref " + merge);
            }
            if(mergerange.s.c >= start_col) {
                mergerange.s.c = Math.max(mergerange.s.c - ncols, start_col);
                if(mergerange.e.c < start_col + ncols) { delete ws["!merges"][idx]; return; }
                mergerange.e.c -= ncols;
                if(mergerange.e.c < mergerange.s.c) { delete ws["!merges"][idx]; return; }
            } else if(mergerange.e.c >= start_col) mergerange.e.c = Math.max(mergerange.e.c - ncols, start_col);
            clamp_range(mergerange);
            ws["!merges"][idx] = mergerange;
        });
        if(ws["!merges"]) ws["!merges"] = ws["!merges"].filter(function(x) { return !!x; });

        /* cols */
        if(ws["!cols"]) ws["!cols"].splice(start_col, ncols);
    }


    function html_table_to_excel(type) {
        const element = document.getElementById('dataTable');
        const ws = XLSX.utils.table_to_sheet(element,{raw: true});
        delete_cols(ws,0,1);
        if(statusdoc == "A") delete_cols(ws,9,2);
        else delete_cols(ws,9,1)
        const wb = XLSX.utils.book_new();
        XLSX.utils.book_append_sheet(wb, ws, 'sheet1');
        XLSX.write(wb, {
            bookType: type,
            bookSST: true,
            type: 'base64'
        })

        let today = new Date();
        let dd = String(today.getDate()).padStart(2, '0');
        let mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
        let yyyy = today.getFullYear();
        
        // today = `${dd}-${mm}-${yyyy} ${new Date(Date.now()).toLocaleTimeString()}`;
        // console.log(today);

        XLSX.writeFile(wb,
            `${namaFile} - Konversi` +'.xlsx');
    }

    button_export.addEventListener('click', () => {
    html_table_to_excel('xlsx');
    });







</script>
@endsection