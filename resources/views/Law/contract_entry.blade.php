@extends('layouts.app')
@section('content')
    <div class="wrapper wrapper-content animated fadeInUp">
        <div class="row">
            <div class="col-lg-12 no-padding">
                <div class="ibox ">
                    <div class="ibox-title">
                        <h2><i class="fa fa-handshake-o"></i> Purchase Contract Entry</h2>
                        <div class="ibox-tools">
                            <a class="btn btn-info btn-xs" id="" href="{{url('contract')}}"><i class="fa fa-edit" aria-hidden="true"></i> New Contract</a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        @include('Law.contract_entry.basic_info')
                        {{--------------------------}}
                        <div class="accordion mt-4" id="accordionExample">
                            @include('Law.contract_entry.reservation')
                            @include('Law.contract_entry.deal')
                            @include('Law.contract_entry.promise')
                            @include('Law.contract_entry.payment_method')
                            @include('Law.contract_entry.annexed')
                            @include('Law.contract_entry.deed')
                            @include('Law.contract_entry.financial')
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <input type="hidden" id="law_contract_id" name="law_contract_id" value="{{$contract_data->law_contract_id ?? ''}}"/>
    <script>
        $(document).on('change', '.custom-file-input', function () {
            let fileName = $(this).val().split('\\').pop();
            let changedlabel = '<i class="fa fa-check"></i> File Selected';
            $(this).next('.custom-file-label').addClass("selected").html(changedlabel);
        });
        /*****************************************/
        $(document).ready(function () {
            if($('#law_contract_id').val().length !== 0){
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
                    if($('#law_contract_id').val().length !== 0){
                        formData.append('law_contract_id', $('#law_contract_id').val());
                    }
                    makeAjaxPostText(formData, submit_url, load).done(function (response) {
                        load.ladda('stop');
                        if(form_id == 'basic_form'){
                            $('#law_contract_id').val(response.data.client_id);
                            $('.submit_info').prop('disabled', false);
                            var redirect_url = "{{url('client')}}"+'/'+response.data.client_id;
                            window.history.pushState({},'', redirect_url);
                        }else{
                            var redirect_url = "{{Request::url()}}"
                        }
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
                        table: 'law_contract',
                        key: 'law_contract_id',
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
