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
                            $('#law_contract_id').val(response.data.contract_id);
                            $('.submit_info').prop('disabled', false);
                            var redirect_url = "{{url('contract')}}"+'/'+response.data.contract_id;
                            window.history.pushState({},'', redirect_url);
                        }else{
                            var redirect_url = "{{Request::url()}}"
                        }
                        swalSuccess(response.message);
                        //swalRedirect(redirect_url, 'Data Saved Successfully', 'success')
                    })
                }
            });
        });
        /*****************************************/
        $('.delete_file_only').on('click', function (e) {
            e.preventDefault();
            var obj = $(this);
            Ladda.bind(obj);
            var load = $(obj).ladda();
            var removerow = 0
            var table = $(obj).data('table');
            var key = $(obj).data('key');
            var id = $(obj).data('id');
            var path_column = $(obj).data('pathcolumn');
            var path = $(obj).data('path');
            if($(obj).hasClass('row_rm')){
                var removerow = 1;
            }
            var url = "{{url('remove-file-record')}}";
            swalConfirm('Are You sure to delete this file?').then(function (s) {
                if(s.value){
                    var data = {table: table, key: key, value: id, removerow: removerow, pathcolumn: path_column, pathvalue: path};
                    console.log(data);
                    makeAjaxPost(data, url, load).done(function(sresult){
                        if($(obj).hasClass('property_file')){
                            $(obj).parent('div').replaceWith('N/A');
                        }else if($(obj).hasClass('row_rm')){
                            $('#record_'+id).remove();
                        }else{
                            $(obj).closest('.generalfilebox').remove();
                        }
                        swalSuccess('Deleted Successfully');
                    });
                }
            });
        });
    </script>
@endsection
