<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" id="csrf" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Shops') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" />
<link ref="stylesheet" href="{{asset('css/style.css')}}">
    <script src="{{asset('js/get-user-location.js')}}"></script>

</head>
<body>
<script>getLocation();</script>
    <div id="app">
      
       
        <main class="py-4">
            @yield('content')
        </main>
    </div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>


<script>
function likeShop(uid, sid) {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        type: "POST",
        url: '{{URL::to("/like-shop")}}',
        data: {
            user_id: uid,
            shop_id: sid
        },
        datatype: 'html',
        success: function (response) {
            toastAndRedirect(response);
        }
    });
}

function dislikeShop(uid, sid) {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        type: "POST",
        url: '{{URL::to("/dislike-shop")}}',
        data: {
            user_id: uid,
            shop_id: sid
        },
        datatype: 'html',
        success: function (response) {
            toastAndRedirect(response);
        }
    });
}

function deleteShop(uid, sid) {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        type: "DELETE",
        url: '{{URL::to("/delete-liked-shop")}}',
        data: {
            user_id: uid,
            shop_id: sid
        },
        datatype: 'html',
        success: function (response) {

            toastAndRedirect(response);

        }
    });
}


function toastAndRedirect(mess) {
    toastr.success(mess);
    setTimeout(() => {
        location.reload();
    }, 100);
}

</script>
</body>
</html>
