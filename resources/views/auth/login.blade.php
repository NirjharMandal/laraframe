<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laraframe</title>
    <link rel="shortcut icon" type="image/png" href="{{asset('public/img/logo.png')}}"/>
    <link href="{{asset('public/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('public/font-awesome/css/font-awesome.css')}}" rel="stylesheet">
    <link href="{{asset('public/css/animate.css')}}" rel="stylesheet">
    <link href="{{asset('public/css/style.css')}}" rel="stylesheet">
    <link href="{{asset('public/css/Laraframe.css')}}" rel="stylesheet newest">
</head>
<body class="apsis-bg">
<div class="loginscreen">
    <div class="login-container animated fadeInDownBig">
        <h1 class="brand-logo">
            <img alt="image" class="img-responsive" style="max-width: 80px" src="{{asset('public/img/logo.png')}}"/>
        </h1>
        <h2 class="logo-name"><strong>LARA</strong> FRAME</h2>
        <span class="subtitle">Dynamic Backend</span>

        <form class="m-t" role="form" method="POST" action="{{ route('login') }}" id="loginFrm">
            {{ csrf_field() }}
            <div class="input-group m-b">
                <div class="input-group-prepend">
                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                </div>
                <input id="email" type="email" placeholder="username or email" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>
                @if ($errors->has('email'))
                    <span class="invalid-feedback">
                            <strong>{{ $errors->first('email') }}</strong>
                        </span>
                @endif
            </div>
            <div class="input-group m-b">
                <div class="input-group-prepend">
                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                </div>
                <input id="password" type="password" placeholder="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>
                @if ($errors->has('password'))
                    <span class="invalid-feedback">
                        <strong>{{ $errors->first('password') }}</strong>
                    </span>
                @endif
            </div>
            @if(session()->get('multi_log_message'))
                <div class="alert alert-danger alert-dismissible">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <span class="error_message_multi">{{ session()->get('multi_log_message') }}</span>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success multi_log_action" action_type="no" data-dismiss="modal">No</button>
                        <a class="btn btn-primary btn-ok multi_log_action" action_type="yes">Yes</a>
                    </div>
                </div>
            @endif

            <div class="remember_me text-center">
                <input class="custom-check" type="checkbox" tabindex="3" value="remember-me" id="remember_me">
                <label for="remember_me">Remember Me</label>
            </div>
            <div class="row">
                <div class="col-sm-8 offset-sm-2">
                    <button type="submit" class="btn btn-primary btn-block">{{ __('Login') }}</button>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <a class="forget-pass" href="{{ route('password.request') }}">{{ __('Forgot Your Password?') }}</a>
                </div>
            </div>
        </form>
    </div>
</div>

<p class="copyright"> <small>Apsis Solutions © 2018</small> </p>

<script src="{{asset('public/js/jquery-3.1.1.min.js')}}"></script>
<script src="{{asset('public/js/bootstrap.js')}}"></script>
<script>
    $(document).on('click','.multi_log_action',function(e){
        e.preventDefault();
        var action_type = $(this).attr('action_type');
        if(action_type == 'no'){
            $('.alert').hide();
        }else{
            $.ajax({
                type: "POST",
                url: '{{URL::to("multi-login-action")}}',
                data: $('#loginFrm').serialize(),
                success: function (response) {
                    if(response == true){
                        $('#loginFrm').submit();
                    }else{
                        $('.alert').show();
                        $('.error_message_multi').text('You are not this person.');
                    }
                }
            });
        }
    });

    //remember me section
    $(function() {
        if (localStorage.chkbx && localStorage.chkbx != '') {
            $('#remember_me').attr('checked', 'checked');
            $('#email').val(localStorage.usrname);
        } else {
            $('#remember_me').removeAttr('checked');
            $('#loginEmail').val('');
        }

        $('#remember_me').click(function() {
            if ($('#remember_me').is(':checked')) {
                localStorage.usrname = $('#email').val();
                localStorage.chkbx = $('#remember_me').val();
            } else {
                localStorage.usrname = '';
                localStorage.chkbx = '';
            }
        });
    });
</script>
</body>
</html>



