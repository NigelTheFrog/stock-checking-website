<script>    
    // console.log(coyCode);
    Pusher.logToConsole=false;
    var pusher = new Pusher(`{{env('PUSHER_APP_KEY')}}`,{
        cluster:`{{env('PUSHER_APP_CLUSTER')}}`
    });

    var channel = pusher.subscribe(coyCode);
    channel.bind('App\\Events\\NewPusherEvent',function(data){
        // console.log('INI PUSHER');
        // console.log(data['data']);

        if(data['data']['message']==200)
        {
            var searchValue = $("#searchModItem").val();
            document.getElementsByName('searchCSO')[0].value = searchValue;
            $.ajax({
                url: "{{ url('admin/dashboard/main-table-item') }}",
                type: 'POST',
                data: {
                    search: searchValue,
                    filter: filterItems,
                    typecekstok: typecekstok,
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(data) {
                    countAnalisator = data.countAnalisator;
                    $('#main-table-item').html(data.view);
                    $(".sticky-header").floatThead({ scrollingTop: 0 })
                }
            });
            $.ajax({
            url: "{{ url('admin/dashboard/banner-item') }}",
            type: 'GET',
            data:{typecekstok: typecekstok},

            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(data) {
                $('#banner-item').html(data);
            }
        });
        }   
    });

    $(".sticky-header").floatThead({ scrollingTop: 0 })

    let timer;
    $("#searchModItem").on('keyup', function(){
        window.clearTimeout(timer);
        const valueSearch = $(this).val();
        document.getElementsByName('searchCSO')[0].value = valueSearch; //agar nama kolom filter tidak hilang
        timer = setTimeout(() => {
            $.ajax({
                url: "{{ url('admin/dashboard/main-table-item') }}",
                type: 'POST',
                data: {
                    search: valueSearch,
                    filter: filterItems,
                    typecekstok: typecekstok,
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(data) {
                    countAnalisator = data.countAnalisator;
                    // console.log(countAnalisator);
                    $('#main-table-item').html(data.view);
                    $(".sticky-header").floatThead({ scrollingTop: 0 })
                }
            });
        }, 3000);
    })

    // setInterval(function(event) {
    //     var searchValue = $("#searchModItem").val();
    //     document.getElementsByName('searchCSO')[0].value = searchValue;
    //     $.ajax({
    //         url: "{{ url('admin/dashboard/main-table-item') }}",
    //         type: 'POST',
    //         data: {
    //             search: searchValue,
    //             filter: filterItems,
    //             typecekstok: typecekstok
    //         },
    //         headers: {
    //             'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    //         },
    //         success: function(data) {
    //             countAnalisator = data.countAnalisator;
    //             $('#main-table-item').html(data.view);
    //             $(".sticky-header").floatThead({ scrollingTop: 0 })
    //         }
    //     });
    // }, 5000);

    // setInterval(function(event) {
    //     $.ajax({
    //         url: "{{ url('admin/dashboard/banner-item') }}",
    //         type: 'GET',
    //         data:{typecekstok: typecekstok},

    //         headers: {
    //             'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    //         },
    //         success: function(data) {
    //             $('#banner-item').html(data);
    //         }
    //     });
    // }, 10000);

    function filterItemDash(value) {

        var searchValue = $("#searchModItem").val();
        filterItems = value;
        $.ajax({
            url: "{{ url('admin/dashboard/main-table-item') }}",
            type: 'POST',
            data: {
                search: searchValue,
                filter: value,
                typecekstok: typecekstok
            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(data) {
            countAnalisator = data.countAnalisator;
            $('#main-table-item').html(data.view);
            $(".sticky-header").floatThead({ scrollingTop: 0 })
            }
        });
    }
</script>
