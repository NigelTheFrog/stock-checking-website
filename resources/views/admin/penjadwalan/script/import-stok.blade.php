
<script>
    VirtualSelect.init({
        ele: '#itemSelect',
        maxWidth: '70%'
    });


    function searchItem(input) {
        const tabel = document.getElementById("tabelItem");
        const tr = tabel.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            const td = tr[i].getElementsByTagName("td");
            if (td[2] || td[3] || td[4] || td[5] || td[6] || td[7]) {
                const itemCode = td[2].innerText.toLowerCase();
                const namaItem = td[3].innerText.toLowerCase();
                const statusBatch = td[4].innerText.toLowerCase();
                const jumlahItem = td[5].innerText.toLowerCase();
                const satuanItem = td[6].innerText.toLowerCase();
                // const tanggalImport = td[7].innerText.toLowerCase();
                if (itemCode.includes(input) || namaItem.includes(input) || statusBatch.includes(input) || jumlahItem
                    .includes(input) || satuanItem.includes(input)) tr[i].style
                    .display = "";
                else tr[i].style.display = "none";
            }
        }
    }

    function closeModalDelete() {
        $('#modalDeleteItem').modal('hide');
    }

    function tarikItem(button) {
        var selectedGudang = $("#itemSelect").val(); // Get the selected gudang values
        var search = $("#searchItem").val();
        // Make an AJAX request to fetch data from the server
        $.ajax({
            url: "{{ url('admin/penjadwalan/import-stok/pull-import') }}",
            method: "POST",
            data: {
                gudang: selectedGudang,
                search: search,
                type: 1,
                typestok: `{{ $csoType }}`
            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(data) {
                // console.log(data);

                $('#tableItem').html(data);
            },
            error: function() {
                // Handle error cases if necessary
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Tidak terdapat item pada gudang tersebut",
                });
            }
        });
    }

    setInterval(function(event) {
        $('.sticky-header').floatThead('reflow');
    }, 500);

    $(document).ready(function() {

        $(".sticky-header").floatThead({ scrollingTop: 0 })

        $(".cekdelete").click(function() {
            if ($(".cekboxdelete").prop("checked")) {
                $(".cekboxdelete").prop("checked", false);
            } else {
                $(".cekboxdelete").prop("checked", true);
            }
        });
        $("#openNav").click(function() {
            $('#push-btn').addClass('d-none');
            $("#mySidenav").removeClass('d-none');
            $("#mySidenav").stop().animate({
                width: "29%"
            }, 500); // 500 milliseconds (0.5 seconds) animation duration
            $("#main").stop().animate({
                width: "70%"
            }, 500); // 500 milliseconds (0.5 seconds) animation duration
        });

        /* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
        $("#closeNav").click(function() {
            $("#mySidenav").stop().animate({
                width: "0%"
            }, 500); // 500 milliseconds (0.5 seconds) animation duration
            $("#main").stop().animate({
                width: "96%"
            }, 500); // 500 milliseconds (0.5 seconds) animation duration
            setTimeout(function() {
                $("#push-btn").removeClass('d-none');
                $("#mySidenav").addClass('d-none');
            }, 500); // Delay for 0.5 seconds (500 milliseconds)
        });
    });
</script>