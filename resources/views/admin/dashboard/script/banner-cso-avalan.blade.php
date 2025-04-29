<script>
    let filterItems = 1;
    let countAnalisator = `{{ $countAnalisator }}`;
    function groupValueBanner(input,trsdetid) {
        
        var inputVal="groupValueBannerInput"+String(trsdetid);
        const groupBannerValue=document.getElementById(inputVal);
        if(input.value=='')
        {
            groupBannerValue.disabled=true
            groupBannerValue.value='';
        }
        else
        {
            groupBannerValue.disabled=false
        }
    }
        
    function openModalBlmProses(button) {
        $('#ModalBatchBlmProses').modal('show');
    }

    function closeModalBlmProses(button) {
        if (typeof myTimeout != undefined) clearTimeout(intervalItemBlmProses);
        $('#ModalBatchBlmProses').modal('hide');
    }

    function openModalOk(button) {
        $('#ModalBatchOk').modal('show');
    }

    function closeModalOk(button) {
        if (typeof myTimeout != undefined) clearTimeout(intervalItemOk);
        $('#ModalBatchOk').modal('hide');
    }

    function openModalSelisih(button) {
        $('#ModalBatchSelisih').modal('show');
    }

    function closeModalSelisih(button) {
        if (typeof myTimeout != undefined) clearTimeout(intervalItemSelisih);
        $('#ModalBatchSelisih').modal('hide');
    }

    function sortItem(order, columnIndex, tableid, iconSort, allIconSort) {
        const table = document.getElementById(tableid);
        const rows = Array.from(table.rows).slice(1); // Exclude the header row
        const isNumeric = !isNaN(rows[0].cells[columnIndex].textContent.trim());
        const allIconSortItem = document.getElementsByClassName(allIconSort);
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

        resetRowNumbers(tableid, 1);
    }

    function resetRowNumbers(tableid, col) {
        const table = document.getElementById(tableid);
        const rows = table.tBodies[0].rows;

        for (let i = 0; i < rows.length; i++) {
            rows[i].cells[col].textContent = i + 1;
        }
    }

    function checkAllItem(button, checkboxItemType) {
        button.addEventListener('change', (event) => {
            const checkboxes = document.querySelectorAll(checkboxItemType);
            if (event.currentTarget.checked) {
                checkboxes.forEach(function(checkbox) {
                    if(checkbox.closest('tr').style.display=='')
                    {
                        checkbox.checked = true;
                    }
                }, this);
            } else {
                checkboxes.forEach(function(checkbox) {
                    checkbox.checked = false;
                }, this);
            }
        });

    }

    function getCheckedItem(checkboxItemType) {
        let selectedItem = [];
        const checkboxes = document.querySelectorAll(checkboxItemType);
        checkboxes.forEach(checkbox => {
            if (checkbox.checked) {
                selectedItem.push(checkbox.value);
            }
        });
        return selectedItem;
    }

    function setAnalisatorItem(button, checkBoxClassItem, selectedAnalisator, type, tabelid, checkAllId) {
        // type:
        // 0 = Blm Proses
        // 1 = Item Ok
        // 2 = Item Selisih
        const analisator = document.getElementById(selectedAnalisator).value;  
        const checkbox =  document.getElementById(checkAllId);
        button.innerHTML = `<div class="spinner-border spinner-border-sm" role="status"></div>`;
        button.disabled = true;
        console.log(getCheckedItem(checkBoxClassItem));
        console.log(analisator);
        console.log(type);
        console.log(typecekstok);

        if (getCheckedItem(checkBoxClassItem).length == 0 || analisator == "") {
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Anda belum memilih item atau analisator",
            });
        } else {
            $.ajax({
                url: "{{ route('avalan.set-analisator') }}",
                type: 'POST',
                data: {
                    analisator: analisator,
                    item: JSON.stringify(getCheckedItem(checkBoxClassItem)),
                    type: type,
                    typecekstok: typecekstok,        
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(data) {
                    // console.log(data);
                    if (data.task == 1) {
                        Swal.fire({
                            icon: "success",
                            title: "Berhasil",
                            text: "Analisator berhasil diset pada item yang dipilih",
                        });
                        checkbox.checked = false;
                        document.getElementById(tabelid).innerHTML = data.view;
                        countAnalisator = data.countAnalisator;
                        filterItemDash(filterItems);
                    } else {
                        Swal.fire({
                            icon: "error",
                            title: "Oops...",
                            text: "Gagal set analisator",
                        });
                    }
                }
            });
        }
        button.innerHTML = 'Set Analisator';
        button.disabled = false;

    }


    $(document).ready(function() {
        $("#batchBelumProsesSearch").keyup(function() {
            var search = $('#batchBelumProsesSearch').val().toLowerCase();
            var table = $('#tableBlmProses').find('tr');
            for (i = 1; i < table.length; i++) {
                var tr = table[i];
                var td = $(tr).children('td');
                if (td[1] || td[2] || td[3] || td[4] || td[5] || td[6] || td[7]) {
                    if ($(td[1]).text().toLowerCase().includes(search) ||
                        $(td[2]).text().toLowerCase().includes(search) ||
                        $(td[3]).text().toLowerCase().includes(search) ||
                        $(td[4]).text().toLowerCase().includes(search) ||
                        $(td[5]).text().toLowerCase().includes(search) ||
                        $(td[6]).text().toLowerCase().includes(search) || $(td[7]).text().toLowerCase()
                        .includes(search)) {
                        tr.style.display = '';
                    } else tr.style.display = 'none';
                }
            }
        });

        $("#batchOkSearch").keyup(function() {
            var search = $('#batchOkSearch').val().toLowerCase();
            var table = $('#tableOk').find('tr');
            for (i = 1; i < table.length; i++) {
                var tr = table[i];
                var td = $(tr).children('td');
                if (td[1] || td[2] || td[3] || td[4] || td[5] || td[6] || td[7]) {
                    if ($(td[1]).text().toLowerCase().includes(search) ||
                        $(td[2]).text().toLowerCase().includes(search) ||
                        $(td[3]).text().toLowerCase().includes(search) ||
                        $(td[4]).text().toLowerCase().includes(search) ||
                        $(td[5]).text().toLowerCase().includes(search) ||
                        $(td[6]).text().toLowerCase().includes(search) || $(td[7]).text().toLowerCase()
                        .includes(search)) {
                        tr.style.display = '';
                    } else tr.style.display = 'none';
                }
            }
        });

        $("#batchSelisihPlus").keyup(function() {
            var search = $('#batchSelisihPlus').val().toLowerCase();
            var table = $('#tableSelisihPlus').find('tr');
            for (i = 1; i < table.length; i++) {
                var tr = table[i];
                var td = $(tr).children('td');
                if (td[1] || td[2] || td[3] || td[4] || td[5] || td[6] || td[7]) {
                    if ($(td[1]).text().toLowerCase().includes(search) ||
                        $(td[2]).text().toLowerCase().includes(search) ||
                        $(td[3]).text().toLowerCase().includes(search) ||
                        $(td[4]).text().toLowerCase().includes(search) ||
                        $(td[5]).text().toLowerCase().includes(search) ||
                        $(td[6]).text().toLowerCase().includes(search) || $(td[7]).text().toLowerCase()
                        .includes(search)) {
                        tr.style.display = '';
                    } else tr.style.display = 'none';
                }
            }
        });
        $("#batchSelisihMinus").keyup(function() {
            var search = $('#batchSelisihMinus').val().toLowerCase();
            var table = $('#tableSelisihMinus').find('tr');
            for (i = 1; i < table.length; i++) {
                var tr = table[i];
                var td = $(tr).children('td');
                if (td[1] || td[2] || td[3] || td[4] || td[5] || td[6] || td[7]) {
                    if ($(td[1]).text().toLowerCase().includes(search) ||
                        $(td[2]).text().toLowerCase().includes(search) ||
                        $(td[3]).text().toLowerCase().includes(search) ||
                        $(td[4]).text().toLowerCase().includes(search) ||
                        $(td[5]).text().toLowerCase().includes(search) ||
                        $(td[6]).text().toLowerCase().includes(search) || $(td[7]).text().toLowerCase()
                        .includes(search)) {
                        tr.style.display = '';
                    } else tr.style.display = 'none';
                }
            }
        });
    });
</script>
