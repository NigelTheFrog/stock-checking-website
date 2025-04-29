    <script>
        var groupingId=undefined;
        const typecekstok = `{{ $typecekstok }}`;
        const coyCode = `{{$coyCode}}`;

        $(document).on('change','#groupingId',function(){
            
            if($('#groupingId').find(":selected").val()!=='' &&  $('#groupingId').find(":selected").val()!=0)
            {
                $('#groupValue').prop('disabled', false);
            }
            else 
            {
                $('#groupValue').prop('disabled', true).val('');
            }
        });
        // document.getElementById("warehouseCode").selectedIndex = -1;
        // VirtualSelect.init({
        //     ele: '#warehouseCode',
        //     maxWidth: '100%',
        //     multiple: true,
        //     placeholder: "Kode Gudang",
        //     search: true
        // });

        // document.getElementById("tipeSelect").selectedIndex = -1;
        // VirtualSelect.init({
        //     ele: '#tipeSelect',
        //     maxWidth: '70%',
        //     placeholder: "Tipe",
        //     multiple: true,
        //     search: false
        // });

        // function openModalDetailCSO(button, trsdetid, itemId, itemName,groupValue) {
        function openModalDetailCSO(itemName, dataItem) {
            document.getElementById("detailCsoHeader").innerText = `DETAIL ${itemName}`;
            $.ajax({
                url: "{{ route('item.detail-cso') }}",
                type: 'POST',
                data: {
                    // id: itemId,
                    // trsdetid: trsdetid,
                    param: JSON.stringify(dataItem),
                    typecekstok: typecekstok
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(data) {
                    // console.log(data);
                    $('#detailCso').html(data);
                    $('#formSubmitCso').attr('action', `{{ route('item.update-cso') }}`);
                    $("#buttonSubmit").attr('type', 'submit');
                    // $("#buttonCari").attr('onclick', `cariHistoryTransaksi(${itemId})`);
                    // showHistoryTransaksi(itemId, "", "", "");

                    if($('#groupingId').find(":selected").val()==='' ||  $('#groupingId').find(":selected").val()==0)
                    {
                        $('#groupValue').prop('disabled', true).val('');
                    }
                    else
                    {
                        // $('#groupValue').prop('disabled', false).val(groupValue);
                        $('#groupValue').prop('disabled', false).val(dataItem.groupValue);
                    }
                },
                error: function() {
                    alert("Error");
                    // Handle error cases if necessary
                    // Swal.fire({
                    //     icon: "error",
                    //     title: "Oops...",
                    //     text: "Tidak terdapat item pada gudang tersebut",
                    // });
                }

            });
            $('#ModalDetailCso').modal('show');
        }

        function csoUlang() {
        const itemIdParam = document.getElementById("itemid").value; // Get the selected gudang values
        const buttonCsoUlang = document.getElementById("csoulang");
        const keteranganCSOUlang = document.getElementsByName('checkboxketerangan');
        const trsdetIdParam = document.getElementById("trsdetidparam").value;
        let keteranganId = [];
        keteranganCSOUlang.forEach(element => {
            if (element.checked) keteranganId.push(element.value);
        });

        $.ajax({
            url: "{{ route('item.cso-ulang') }}",
            method: "POST",
            data: {
                itemid: itemIdParam,
                trsdetid: trsdetIdParam,
                keteranganCsoUlang: keteranganId,
                typecekstok: typecekstok

            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(data) {
                // console.log(data);  
                if (data['result'] == 1) {
                    // if (batchNoParam == null || batchNoParam == "") {
                    Swal.fire({
                        icon: "success",
                        title: "Berhasil",
                        text: `Item dengan id ${itemIdParam}\nberhasil di CSO Ulang`,
                    });

                    // } else {
                    //     Swal.fire({
                    //         icon: "success",
                    //         title: "Berhasil",
                    //         text: `Item dengan id ${itemIdParam} dan batch number ${batchNoParam}\nberhasil di CSO Ulang`,
                    //     });
                    // }
                    buttonCsoUlang.disabled = true;
                    filterItemDash(filterItems);
                    closeModalCsoUlang();
                } else {
                    Swal.fire({
                        icon: "error",
                        title: "Oops...",
                        text: data['message'],
                    });
                }
            },
            error: function() {
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Terjadi kesalahan pada sistem, segera laporkan pada tim IT",
                });
            }
        });
    }

        
        function openModalCsoUlang() {
            $('#ModalDetailCso').modal('hide');
            $('#ModalCsoUlang').modal('show');
        }

        function closeModalCsoUlang() {
            $('#ModalCsoUlang').modal('hide');
            $('#ModalDetailCso').modal('show');
        }

        // flatpickr('#startdatepicker', {});
        // flatpickr('#enddatepicker', {});

        // function cariHistoryTransaksi(itemId) {
        //     showHistoryTransaksi(
        //         itemId,
        //         document.getElementById('tipeSelect').value.toString(),
        //         document.getElementById('warehouseCode').value.toString(),
        //         `${document.getElementById('startdatepicker').value},${document.getElementById('enddatepicker').value}`
        //     );
        // }

        // function showHistoryTransaksi(itemId, tipe, warehouse, tanggal) {
        //     const tabelTransaksi = $('#tabel-transaksi').DataTable({
        //         ajax: {
        //             url: "{{ route('item.history-transaksi') }}",
        //             type: 'POST',
        //             data: {
        //                 itemid: itemId,
        //                 tipe: tipe,
        //                 warehouse: warehouse,
        //                 tanggal: tanggal

        //             },
        //             headers: {
        //                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        //             },
        //         },
        //         columnDefs: [{
        //             searchable: false
        //         }],
        //         // fixedHeader: true,
        //         searching: false,
        //         paging: false,
        //         bDestroy: true,
        //         serverSide: true,
        //         processing: true,
        //         order: [],
        //         pageLength: 20,
        //         lengthMenu: [5, 10, 15, 20],
        //         columns: [{
        //                 data: 'DT_RowIndex'
        //             },
        //             {
        //                 data: 'docnum'
        //             },
        //             {
        //                 data: 'PostingDate'
        //             },
        //             {
        //                 data: 'WhseCode',
        //                 render: function(data, type, row, meta) {
        //                     return `
        //                         <div class="font-weight-bolder">${ data }</div>
        //                         <div class="text-muted">${ row.whsename }</div>
        //                     `;
        //                 }
        //             },
        //             {
        //                 data: 'Quantity',
        //             },
        //             {
        //                 data: 'uom'
        //             },
        //             {
        //                 data: 'endbal'
        //             },
        //         ],
        //         fnDrawCallback: function() {
        //             document.getElementById("quantityData").innerText =
        //                 `Total Qty: ${this.api().column( 4, {page:'current'} ).data().sum()}`;
        //             document.getElementById("openBalanceData").innerText =
        //                 `Open Balance: ${this.api().row(0).data().openbal}`;
        //             document.getElementById("endBalanceData").innerText =
        //                 `End Balance: ${this.api().row(':last-child').data().endbal}`;
        //         }
        //     });
        // }

        function hapusItemTemuan(itemid, trsdetid) {
            $.ajax({
                url: "{{ url('admin/dashboard/item/hapus-temuan-item') }}",
                method: "POST",
                data: {
                    itemid: itemid,
                    trsdetid: trsdetid,
                    typecekstok: typecekstok
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(data) {
                    if (data['result'] == 1) {
                        Swal.fire({
                            icon: "success",
                            title: "Berhasil",
                            text: `Temuan item dengan id ${itemid}\nberhasil dihapus`,
                        });
                    } else {
                        Swal.fire({
                            icon: "error",
                            title: "Oops...",
                            text: "Terjadi kesalahan pada sistem, segera laporkan pada tim IT",
                        });
                    }

                },
                error: function() {
                    Swal.fire({
                        icon: "error",
                        title: "Oops...",
                        text: "Terjadi kesalahan pada sistem, segera laporkan pada tim IT",
                    });
                }
            });
        }

        function sortDetailCSO(order, columnIndex, iconSort) {
            const table = document.getElementById('tabelDetailItem');
            // console.log(table);
            const rows = Array.from(table.rows).slice(1); // Exclude the header row
            const isNumeric = !isNaN(rows[0].cells[columnIndex].textContent.trim());
            const allIconSortItem = document.getElementsByClassName('sortDetailItemIcon');
            const iconSortItem = document.getElementById(iconSort);

            for (let i = 0; i < allIconSortItem.length; i++) {
                allIconSortItem[i].innerHTML = `
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                    fill="currentColor" class="bi bi-filter" viewBox="0 0 16 16">
                    <path
                        d="M6 10.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-2-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5" />
                </svg>
            `;
            }

            rows.sort((a, b) => {
                const cellA = a.cells[columnIndex].textContent.trim();
                const cellB = b.cells[columnIndex].textContent.trim();

                if (isNumeric) {
                    return order == 0 ?
                        Number(cellA) - Number(cellB) :
                        Number(cellB) - Number(cellA);
                }
                return order == 0 ?
                    cellA.localeCompare(cellB) :
                    cellB.localeCompare(cellA);
            });

            iconSortItem.innerHTML = order == 0 ? '<i class="bi bi-arrow-up"></i>' : '<i class="bi bi-arrow-down"></i>';

            // Reorder rows in the table
            rows.forEach(row => table.tBodies[0].appendChild(row));

            resetRowNumbers('tabelDetailItem',0);
        }
    </script>
