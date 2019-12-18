@extends('layouts.clean_template')
@section('content')
    @inject('moduleController', 'App\Http\Controllers\ModuleController')
    <div id="parent-module-shade">
        <div class="animated fadeInDown pt-5">
            {{--<button onclick="createAnimate()">createAnimate</button>--}}
            <div class="parent-module-widget text-center" id="site_logo" style="">
                <img id="site_logo" style="width: 200px" alt="image" class="" src="{{asset('public/img/logo.png')}}">
            </div>
            @php($bg_class=['bg-cyan', 'bg-green', 'bg-teal', 'bg-red', 'bg-orange', 'bg-indigo'])
            dd($bg_class)
            <div class="parent-module-widget pt-5 mt-2 mx-1 text-center">
                @foreach ($moduleController->getModuleList() as $val)
                    {{--{{URL::to("/moduleChanger/".$val->id)}}--}}
                    <a href="{{URL::to("/moduleChanger/".$val->id)}}" class="custom-module-widget py-3 px-5 m-2 {{array_random($bg_class)}} text-center text-light">
                        <i class="{{$val->modules_icon}} fa-2x"></i><br/>{{strtoupper($val->name)}}
                    </a>
                @endforeach
            </div>
        </div>
        <div class="footer">
            <div class="text-center">
                <strong>Copyright</strong> Apsis Solutions Limited © 2018
            </div>
        </div>
    </div>
    <script>
        //alert('aaa');

/*        var el = document.getElementById("site_logo");
        function createAnimate() {
            var posl = 0;
            var posr = 350;
            setInterval(function () {
                if (posl == 350) {
                    posr--;
                    el.style.left = posr + "px";
                    el.style.top = posr + "px";
                    if(posr == 0) {
                        posl = 0;
                        posr = 350;
                    }
                }else{
                    posl++;
                    el.style.left = posl + "px";
                    el.style.top = posl + "px";
                }
            }, 1);
        }*/

    </script>
    <style>
        #parent-module-shade{
            background-color: #aaaaaa90;
            min-height: 100vh;
            overflow-x: hidden;
        }
        .parent-module-widget{
            display: block;
        }
        .custom-module-widget{
            font-size: 2rem;
            display: inline-block;
            border-radius: 4px;
            box-shadow: 2px 3px 3px #888;
        }
    </style>
@endsection
