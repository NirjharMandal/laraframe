<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="csrf-token" content="{{ csrf_token() }}"/>
        @include('includes.assets')
        @php(date_default_timezone_set('Asia/Dhaka'))
        <link rel="shortcut icon" type="image/png" href="{{asset('public/img/logo.png')}}"/>
    </head>
    <body class="srcil-bg">
        @yield('content')
    </body>
    <script src="{{asset('public/js/LaraframeScript.js')}}"></script>
</html>
