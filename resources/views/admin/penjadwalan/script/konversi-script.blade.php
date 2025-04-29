<script>
    const coy = `{{$dataCoy}}`;
    let typecekstok = '';
    $(document).ready(function() {
        // console.log(`{{$dataCoy}}`)
        $('#dataTable').DataTable({
            paging: true,        // Enables pagination
            // searching: true,     // Enables search
            // ordering: true,      // Enables sorting
            info: true,           // Enables table information (e.g., "Showing 1 to 10 of 100 entries")
            responsive: true,
            autoWidth: false,
            pageLength: 50
        });
        $(".dataTables_filter input").css({ "width" :"350px" });
    });

    function getCekStok(type,coy)
    {
        $.ajax({ 
            url: "{{  url('admin/penjadwalan/konversi/submit')  }}",
            type: 'POST',
            data: {
                typecekstok: type,
                dataCoy:coy
            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(data) {
                // console.log(data);
                $('#table-konversi').html(data);
                $('#dataTable').DataTable({
                    paging: true,        // Enables pagination
                    // searching: true,     // Enables search
                    // ordering: true,      // Enables sorting
                    info: true,           // Enables table information (e.g., "Showing 1 to 10 of 100 entries")
                    responsive: true,
                    autoWidth: false,
                    pageLength: 50
                });
                $(".dataTables_filter input").css({ "width" :"350px" });
            }
        });
    }

    $(".typecekstok").on('click', function(){
        const allIconSortItem = document.getElementsByClassName('typecekstok');
        console.log(allIconSortItem.length)
        for (let i = 0; i < allIconSortItem.length; i++) {
            allIconSortItem[i].style.opacity=1;
        }
        $(this).css({'opacity':'0.7','outline':'none',"box-shadow": "none"});
        typecekstok = $(this).text().replaceAll(/\s/g,'').toUpperCase();
        console.log(typecekstok);
        getCekStok(typecekstok,coy);
        $("#button_export").prop('disabled',false);
        $("#button_import").prop('disabled',false);
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
        var itemCode = get.find('td:nth-child(12)').text();

        const arrSubmit = {
            konversi_1: konversi_1,
            konversi_2: konversi_2,
            konversi_3: konversi_3,
            beratKemasan: beratKemasan,
            minus: lossMinus,
            plus: lossPlus,
            totalProduksi: totalProduksi,
            itemCode: itemCode,
            coy: coy
        }
        console.log(arrSubmit);
        $.ajax({ 
            url: "{{  url('admin/penjadwalan/konversi/updateKonversi')  }}",
            type: 'POST',
            data: {
                arr: arrSubmit,
                typecekstok:typecekstok
            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(data) {
                // console.log(data);
                if(data['message']==1)
                {
                    get.find('#konversi_1').val(konversi_1);
                    if(konversi_1 != 0) get.find('#konversi_2').prop('disabled',false).val(konversi_2);
                    if(konversi_2 != 0) get.find('#konversi_3').prop('disabled',false).val(konversi_3);
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
                    $('#updateButton').prop('disabled',false);
                }
                else
                {
                    update = {
                        "data": [],
                        "ext": '',
                        "result": 'failed'
                    }
                    Swal.fire({
                        icon: "error",
                        position: 'top-end',
                        title: 'Kolom tidak sesuai',
                        showConfirmButton: false,
                        timer: 2000
                    }); 
                    $('#updateButton').prop('disabled',true);
                }
            }
            catch(err) {
                console.log(err);
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
            url: "{{  url('admin/penjadwalan/konversi/update-excel')  }}",
            type: 'POST',
            data: {
                data: update['data'],
                coy: update['coy'],
                typecekstok:typecekstok
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
                            getCekStok(typecekstok,coy);
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
        delete_cols(ws,10,2);
        const wb = XLSX.utils.book_new();
        XLSX.utils.book_append_sheet(wb, ws, 'sheet1');
        // XLSX.utils.book_append_sheet(wb, ws, 'sheet2'); BISA TAMBAH SHEETS
        XLSX.write(wb, {
            bookType: type,
            bookSST: true,
            type: 'base64'
        })

        let today = new Date();
        let dd = String(today.getDate()).padStart(2, '0');
        let mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
        let yyyy = today.getFullYear();
        
        today = `${typecekstok.toUpperCase()} - ${dd}-${mm}-${yyyy} ${new Date(Date.now()).toLocaleTimeString()}`;
        console.log(today);

        XLSX.writeFile(wb,
            `MASTER_ITEM_${today}` +'.xlsx');
    }

    button_export.addEventListener('click', () => {
    html_table_to_excel('xlsx');
    });
</script>