@extends('layouts.app')
@section('content')
    <style>
        .acc-heading{
            border-bottom: 1px solid #bbb;
            font-weight: initial;
            line-height: 2;
            cursor: pointer;
        }
    </style>
    <div class="wrapper wrapper-content animated fadeInUp">
        <div class="row">
            <div class="col-lg-12 no-padding">
                <div class="ibox ">
                    <div class="ibox-title">
                        <h2><i class="fa fa-users"></i> Buyer/Seller Entry</h2>
                        <div class="ibox-tools">
                            <a class="btn btn-info btn-xs" id="" href="{{url('client')}}"><i class="fa fa-edit" aria-hidden="true"></i> New Entry</a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form class="" id="basic_form" enctype="multipart/form-data" action="{{url('save-basic-info')}}" method="post">
                            <div class="row">
                                <div class="form-group col-md-3">
                                    <label class="form-label">Email</label>
                                    <input type="email" name="email" value="{{$user_data->email ?? ''}}" id="" class="form-control" required>
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Full Name</label>
                                    <input type="" name="law_app_users_name" value="{{$user_data->law_app_users_name ?? ''}}" id="" class="form-control" required>
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Mobile Phone</label>
                                    <input type="" name="mobile" value="{{$user_data->mobile ?? ''}}" id="" class="form-control">
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Individual/Company</label>
                                    @php($user_type_option = ['Individual'=>'Individual','Company'=>'Company'])
                                    {!! Form::select('user_type', $user_type_option, null, ['class' => 'form-control']) !!}
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Representative Lawyer</label>
                                    <?php
                                        $lawyer_id = isset($user_data->law_lawyers_id) && !empty($user_data->law_lawyers_id) ? $user_data->law_lawyers_id : '';
                                        $data_param = array(
                                            'selected_value' => $lawyer_id
                                        );
                                    ?>
                                    {{__combo('lawyer-list', $data_param)}}
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Marriage type</label>
                                    <input type="" name="marriage_type" value="{{$user_data->marriage_type ?? ''}}" id="" class="form-control">
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Marital status</label>
                                    @php($marrital_option = ['Married'=>'Married','Unmarried'=>'Unmarried','Single'=>'Single'])
                                    {!! Form::select('marital_status',  $marrital_option, null, ['class' => 'form-control']) !!}
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Bank account number</label>
                                    <input type="" name="bank_account_number" value="{{$user_data->bank_account_number ?? ''}}" id="" class="form-control">
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Tax number</label>
                                    <input type="" name="tax_number" value="{{$user_data->tax_number ?? ''}}" id="" class="form-control">
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <button class="btn btn-info submit_basic" data-style="zoom-in"><i class="fa fa-save"></i> SAVE ENTRY</button>
                                </div>
                            </div>
                        </form>
                        {{--------------------------}}
                        <div class="accordion mt-4" id="accordionExample">
                            @include('Law.client_entry.citizen')
                            @include('Law.client_entry.passport')
                            @include('Law.client_entry.certificate')
                            @include('Law.client_entry.legal')
                            @include('Law.client_entry.letter')
                            @include('Law.client_entry.transfer')
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <input type="hidden" id="law_app_users_id" name="law_app_users_id" value="{{$user_data->law_app_users_id ?? ''}}"/>
    <script>
        $(document).on('change', '.custom-file-input', function () {
            let fileName = $(this).val().split('\\').pop();
            $(this).next('.custom-file-label').addClass("selected").html(fileName);

        });
        /*****************************************/
        $(document).ready(function () {
            if($('#law_app_users_id').val().length !== 0){
                $('.submit_info').prop('disabled', false);
            }else{
                $('.submit_info').prop('disabled', true);
            }
        });
        /*****************************************/
        $('.submit_info, .submit_basic').on('click', function (e) {
            Ladda.bind(this);
            var load = $(this).ladda();
            var form_id = $(this).closest('form').attr('id');
            var this_form = $('#'+form_id);
            var submit_url = $(this_form).attr('action');
            $(this_form).validator().on('submit', function (e) {
                if (!e.isDefaultPrevented()) {
                    e.preventDefault();
                    var formData = new FormData(this);
                    if($('#law_app_users_id').val().length !== 0){
                        formData.append('law_app_users_id', $('#law_app_users_id').val());
                    }
                    makeAjaxPostText(formData, submit_url, load).done(function (response) {
                        load.ladda('stop');
                        if(form_id == 'basic_form'){
                            $('#law_app_users_id').val(response.data.client_id);
                            $('.submit_info').prop('disabled', false);
                            var client_url = "{{url('client')}}"+'/'+response.data.client_id;
                            window.history.pushState({},'', client_url);
                        }
                        var redirect_url = "{{Request::url()}}"
                        //swalSuccess(response.message);
                        swalRedirect(redirect_url, 'Data Saved Successfully', 'success')
                    })
                }
            });
        });
        /*****************************************/
        $('.delete_file_only').on('click', function (e) {
            e.preventDefault();
            Ladda.bind(this);
            var obj = $(this);
            var load = $(this).ladda();
            var id = $(this).data('id');
            var pathcolumn = $(this).data('pathcolumn');
            var path = $(this).data('path');
            var url = "{{url('remove-file-record')}}";
            swalConfirm('Are You sure to delete this file?').then(function (s) {
                if(s.value){
                    var data = {
                        table: 'law_app_users',
                        key: 'law_app_users_id',
                        value: id,
                        removerow: 0,
                        pathcolumn: pathcolumn,
                        pathvalue: path
                    };
                    makeAjaxPost(data, url, load).done(function(sresult){
                        $(obj).closest('.generalfilebox').remove();
                        swalSuccess('Deleted Successfully');
                    });
                }
            });
        });
    </script>
@endsection
