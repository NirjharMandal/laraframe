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
                        <h2><i class="fa fa-home"></i> Property Entry</h2>
                        <div class="ibox-tools">
                            <a class="btn btn-info btn-xs" id="" href="{{url('property')}}"><i class="fa fa-edit" aria-hidden="true"></i> New Entry</a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form class="" id="basic_form" enctype="multipart/form-data" action="{{url('save-property-info')}}" method="post">
                            <div class="row py-2">
                                <div class="form-group col-md-3">
                                    <label class="form-label">Property Type</label>
                                    <?php
                                    $law_property_type_id = isset($property_data->law_property_type_id) && !empty($property_data) ? $property_data->law_property_type_id : '';
                                    $data_param = array(
                                        'selected_value' => $law_property_type_id
                                    );
                                    ?>
                                    {{__combo('property-type', $data_param)}}
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="form-label">Property Title</label>
                                    <input type="" name="law_properties_name" value="{{$property_data->law_properties_name ?? ''}}" id="" class="form-control">
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-9">
                                    <label class="form-label">Building Description</label>
                                    <textarea type="" name="property_description" id="" class="form-control" rows="1">{{$property_data->property_description ?? ''}}</textarea>
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
                            @include('Law.property_entry.land')
                            @include('Law.property_entry.toponymic')
                            @include('Law.property_entry.municipal')
                            @include('Law.property_entry.burden')
                            @include('Law.property_entry.map')
                            @include('Law.property_entry.fiscal')
                            @include('Law.property_entry.license')
                            @include('Law.property_entry.cityhall')
                            @include('Law.property_entry.energy')
                            @include('Law.property_entry.technical')
                            @include('Law.property_entry.infrastructures')
                            @include('Law.property_entry.constitutive')
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <input type="hidden" id="law_properties_id" name="law_properties_id" value="{{$property_data->law_properties_id ?? ''}}"/>
    <script>
        $(document).on('change', '.custom-file-input', function () {
            let fileName = $(this).val().split('\\').pop();
            $(this).next('.custom-file-label').addClass("selected").html(fileName);

        });
        /*****************************************/
        $(document).ready(function () {
            if($('#law_properties_id').val().length !== 0){
                $('.submit_info').prop('disabled', false);
            }else{
                $('.submit_info').prop('disabled', true);
            }
        });
        /*****************************************/
        $('.submit_button, .submit_basic').on('click', function (e) {
            Ladda.bind(this);
            var load = $(this).ladda();
            var form_id = $(this).closest('form').attr('id');
            var this_form = $('#'+form_id);
            var submit_url = $(this_form).attr('action');
            $(this_form).validator().on('submit', function (e) {
                if (!e.isDefaultPrevented()) {
                    e.preventDefault();
                    var formData = new FormData(this);
                    if($('#law_properties_id').val().length !== 0){
                        formData.append('law_properties_id', $('#law_properties_id').val());
                    }
                    makeAjaxPostText(formData, submit_url, load).done(function (response) {
                        console.log(response);
                        load.ladda('stop');
                        if(form_id == 'basic_form'){
                            $('#law_properties_id').val(response.data.law_properties_id);
                            $('.submit_info').prop('disabled', false);
                            var redirect_url = "{{url('property')}}"+'/'+response.data.law_properties_id;
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
                        table: 'law_properties',
                        key: 'law_properties_id',
                        value: id,
                        removerow: 0,
                        pathcolumn: pathcolumn,
                        pathvalue: path
                    };
                    makeAjaxPost(data, url, load).done(function(sresult){
                        $(obj).closest('.generalfilebox').remove();
                        $(this).closest('.custom-file-label').html('Choose File...');
                        swalSuccess('Deleted Successfully');
                    });
                }
            });
        });
    </script>
@endsection
