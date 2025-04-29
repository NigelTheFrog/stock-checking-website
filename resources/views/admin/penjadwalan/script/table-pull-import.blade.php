<script>
    function sortItem(order, columnIndex, iconSort, allIconSort) {
        const table = document.getElementById('tableImport');
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

        resetRowNumbers();
    }

    function resetRowNumbers() {
        const table = document.getElementById('tableImport');
        const rows = table.tBodies[0].rows;

        for (let i = 0; i < rows.length; i++) {
            rows[i].cells[1].textContent = i + 1;
        }
    }

   function checkAllItem(button) {
        button.addEventListener('change', (event) => {
            const checkboxes = document.querySelectorAll('.checkboxsemuaitem');
            if (event.currentTarget.checked) {
                checkboxes.forEach(function(checkbox) {
                    checkbox.checked = true;
                }, this);
            } else {
                checkboxes.forEach(function(checkbox) {
                    checkbox.checked = false;
                }, this);
            }
        });

    }

    function getCheckedItem() {
        let selectedItem = [];
        const checkboxes = document.querySelectorAll('.checkboxsemuaitem');
        checkboxes.forEach(checkbox => {
            if (checkbox.checked) {
                const row = $(checkbox).closest('tr');
                const tempData = {
                    ITEMID: checkbox.value,
                    itemcode: row.find('td:nth-child(3)').text(),
                    NamaItem: row.find('td:nth-child(4)').text(),
                    ProductID: row.find('td:nth-child(6)').text(),
                    Product: row.find('td:nth-child(7)').text(),
                    subproductid: row.find('td:nth-child(8)').text(),
                    SubProduct: row.find('td:nth-child(9)').text(),
                    Onhand: row.find('td:nth-child(10)').text(),
                    UOM: row.find('td:nth-child(11)').text(),
                    itemcost: row.find('td:nth-child(12)').text(),
                    gudang: []
                };
                for (let i = 13; i <= row[0].children.length; i++) {
                    const gudangVar = row.find(`td:nth-child(${i})`).attr('gudang');
                    const gudangVal = row.find(`td:nth-child(${i})`).text();
                    tempData.gudang.push({
                        namaGudang: gudangVar,
                        qty: gudangVal
                    });
                }
                selectedItem.push(tempData);
            }
        });
        return selectedItem;
    }

    function submitImpor(button) {
        button.innerHTML = `<div class="spinner-border spinner-border-sm" role="status"></div>`;
        button.disabled = true;
        const typestok= `@if (isset($typestok)) {{$typestok}} @endif`;
        $.ajax({
            url: "{{ route('import-stok.store') }}",
            type: 'POST',
            data: {
                type: 1,
                csotype: typestok,
                data: JSON.stringify(getCheckedItem())
            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(data) {
                console.log(data);
                if (data.task == 1)
                    window.location.reload();
                else {
                    Swal.fire({
                        icon: "error",
                        title: "Oops...",
                        text: data.message,
                    });
                    button.innerHTML = 'Impor';
                    button.disabled = false;
                }
                    
            },
            error: function() {
                // Handle error cases if necessary

            }

        });
    }
</script>