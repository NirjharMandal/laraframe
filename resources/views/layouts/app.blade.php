<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="csrf-token" content="{{ csrf_token() }}"/>
        <title>LF : {{Session::get('MODULE_LANG')}}</title>
        <link rel="shortcut icon" type="image/png" href="{{asset('public/img/logo.png')}}"/>
        @include('includes.assets')
        @php(date_default_timezone_set('Asia/Dhaka'))
    </head>
    <body>
        <div id="wrapper">
            @include('includes.sidebar')
            <div id="page-wrapper" class="srcil-bg">
                @include('includes.header')
                @include('includes.notifications')
                @include('includes.password_notify')
                {{--@include('includes.breadcrumb')--}}
                @yield('content')
                @include('includes.flash-message')
                @include('includes.modal')
                @include('includes.footer')
            </div>
        </div>
    </body>
    <script src="{{asset('public/js/apsisScript.js')}}"></script>
</html>
