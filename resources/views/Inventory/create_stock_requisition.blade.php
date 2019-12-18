@extends('layouts.app')
@section('content')
@include('dropdown_grid.dropdown_grid')
@php
    if ($requisitions){
        foreach($requisitions as $requisition){
            @$purchase_categorys_id = $requisition->purchase_categorys_id;
            @$expected_delivery_date = $requisition->expected_delivery_date;
            @$requisition_date = $requisition->requisition_date;
            @$purpose = $requisition->purpose;
            @$remarks = $requisition->remarks;
            @$requisition_type = $requisition->requisition_type;
            @$out_warehouses_id = $requisition->out_warehouses_id;
            @$in_warehouses_id = $requisition->in_warehouses_id;
        }
    }
@endphp
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12 no-padding">
                <div class="ibox ">
                    <div class="ibox-title">
                        @if($type == 'Stock Out'||$type == 'Stock In')
                            <h2>{{__lang('Transfer_Requisition')}}</h2>
                        @else
                            <h2>{{__lang('Stock_Requisition')}}</h2>
                        @endif
                        <div class="ibox-tools">
                            <span id="requisition-code"></span>
                            <span id="requisition-status"></span>
                        </div>
                    </div>
                    <div class="ibox-content moduleForm">
                        <div class="col-md-12">
                            <form method="post" action="{{url('save-requisition')}}" id="requisition-form" data-toggle="validator" >
                                @if($type == 'Stock Out'||$type == 'Stock In')
                                    <div class="row">
                                        <div class="form-group col-md-4" id="data_1">
                                            <label class="font-bold">{{__lang('Requisition_For')}}<span class="required">*</span></label>
                                            <select class="form-control multi" name="requisition_type" id="requisition_type">
                                                <option {{@$requisition_type == 'Stock Out'?'selected':''}} value="Stock Out">Stock Out</option>
                                                <option {{@$requisition_type == 'Stock In'?'selected':''}} value="Stock In">Stock In</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-4" id="out_warehouse" style="display:{{@$requisition_type == 'Stock In'?'none':''}}">
                                            <label class="font-bold">{{__lang('Stock_Out_Warehouse')}}<span id="out_wh" class="required">*</span></label>
                                                {{__combo($slug = 'warehouses', $data = array(
                                                'selected_value'=>@$out_warehouses_id,'attributes'=>array('name'=>'out_warehouses_id','id'=>'out_warehouses_id','class'=>'from-control multi')))}}
                                        </div>
                                        <div class="form-group col-md-4" id="in_warehouse">
                                            <label class="font-bold">{{__lang('Stock_In_Warehouse')}}<span class="required">*</span></label>
                                            {{__combo($slug = 'warehouses', $data = array(
                                            'selected_value'=>@$in_warehouses_id,'attributes'=>array('name'=>'in_warehouses_id','id'=>'in_warehouses_id','class'=>'from-control multi')))}}
                                        </div>
                                    </div>
                                @endif
                                <div class="row">
                                    @if($type == 'Office use'||$type == 'Production')
                                        <div class="form-group col-md-3" id="data_1">
                                            <label class="font-bold">{{__lang('Requisition_For')}}<span class="required">*</span></label>
                                            <select class="form-control multi" name="requisition_type" id="requisition_type">
                                                <option {{@$requisition_type == 'Office use'?'selected':''}} value="Office use">Office use</option>
                                                <option {{@$requisition_type == 'Production'?'selected':''}} value="Production">Production</option>
                                            </select>
                                        </div>
                                        <input type="hidden" value="{{$type == 'Production'?0:1}}" id="is_trackable">
                                    @endif
                                    <div class="form-group col-md-3">
                                        <label class="font-bold">{{__lang('Product_Type')}}<span class="required">*</span></label>
                                        {{__combo($slug = 'purchase_category', $data = array('selected_value'=>@$purchase_categorys_id))}}
                                    </div>
                                    <div class="form-group col-md-3" id="data_1">
                                        <label class="font-bold">{{__lang('Requisition Date')}}</label>
                                        <div class="input-group date">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <input
                                                    type="text"
                                                    id="requisition_date"
                                                    name="requisition_date"
                                                    class="form-control"
                                                    data-error="Please enter valid date"
                                                    required = "required"
                                                    readonly=""
                                                    value="{{!empty(@$requisition_date) ? @$requisition_date : date('Y-m-d')}}">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-3" id="data_1">
                                        <label class="font-bold">{{__lang('Expected_Delivery_Date')}}</label>
                                        <div class="input-group date">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <input
                                                type="text"
                                                id="expected_delivery_date"
                                                name="expected_delivery_date"
                                                class="form-control"
                                                data-error="Please enter valid date"
                                                required = "required"
                                                readonly
                                                value="{{!empty(@$expected_delivery_date) ? @$expected_delivery_date : date('Y-m-d')}}">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="pull-left font-bold">{{__lang('Purpose')}}</label>
                                    <textarea class="form-control" id="purpose" name="purpose" cols="" rows="">{{@$purpose}}</textarea>
                                </div>
                                </div>
                            </form>

                            <div class="form-group">
                                <?php $vvv = "sirr"; ?>
                                {{__dropdown_grid($slug = 'products_list',$data = array(
                                    'selected_value'=>'',
                                    'addbuttonid'=>'products_list_selection',
                                    'name'=>"<i class='fa fa-plus-circle'></i> ".__lang('Add_Product')."",
                                    'dependent_data'=>array(array('id'=>'purchase_categorys_id', 'required'=>true,'dbcolumn'=>'notable.product_category_id'), array('id'=>'is_trackable', 'required'=>true,'dbcolumn'=>'products.is_trackable')),
                                    'attributes'=>array('class'=>'btn btn-primary','id'=>'btn_add_products_list'))
                                    )}}
                            </div>

                            <div id="item-list">
                                <form method="post" action="{{url('saveRequisitionDetails')}}" id="requisition-details-form">
                                    <input type="hidden" id="last_requisition_id" name="stock_requisitions_id" value="">
                                    <div class="table-responsive">
                                        <table class="table table-bordered items">
                                            <thead>
                                                <tr>
                                                    <th>{{__lang('Product')}}</th>
                                                    <th >{{__lang('Qty')}}</th>
                                                    <th width="120">{{__lang('UoM')}}</th>
                                                    @if($type == 'Office use')
                                                        <th id="Allocate_Ratio">{{__lang('Allocate_Ratio')}}</th>
                                                    @endif
                                                    <th width="1%">{{__lang('Action')}}</th>
                                                </tr>
                                            </thead>
                                            <tbody id="requisition-item-container">
                                            </tbody>
                                        </table>
                                    </div>
                                </form>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="pull-left font-bold">{{__lang('Remarks')}}</label>
                                    <textarea class="form-control" id="remarks" name="remarks" cols="" rows="">{{@$remarks}}</textarea>
                                </div>
                            </div>
                            @include('Attachment.attachment',array('reference'=>'stock_requisition','reference_id'=>!empty($requisition_id) ? $requisition_id : ''))
                            <button type="button" class="btn btn-primary confirm-requisition-form">{{__lang('Confirm')}} </button>
                            <button type="button" class="btn btn-warning cancel-requisition">{{__lang('Cancel')}} </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="product_ids" style="display: none"></div>
    <input type="hidden" name="stock_requisition_details_id" id="stock_requisition_details_id" value="">
    <script>
        var existing_selected_products = [];
        var requisition_id = '<?php echo $requisition_id;?>';
        if(requisition_id > 0){
            $('.confirm-requisition-form').prop('disabled',false);
        }else{
            $('.confirm-requisition-form').prop('disabled',true);
        }
        var mem = $('#data_1 .input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true,
            format: "yyyy-mm-dd"
        });
        $('#data_1 .input-group.date').on("keypress cut copy paste",function(e) {
            e.preventDefault();
        });

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('input[name="_token"]').val()
            }
        });

        /***********On load Get Requisition Items************/
        var selected_option = '<?php echo @$purchase_categorys_id;?>';
        $(document).ready(function(){
            if(selected_option){
                $('#purchase_categorys_id option:not(:selected)').attr('disabled',true);
                $('#requisition_type option:not(:selected)').attr('disabled',true);
            }

        });
        $(window).on("load", function () {
            if(requisition_id > 0){
                $('#last_requisition_id').val(requisition_id);
                $.ajax({
                    type: 'POST',
                    cache: false,
                    url: '<?php echo URL::to('get-exist-stock-requisition-items');?>',
                    data: {'requisition_id':requisition_id},
                    success: function (success) {
                        var obj = jQuery.parseJSON(JSON.stringify(success));
                        $('#requisition-item-container').html(obj.req_item);
                        $('#btn_add_products_list').data('selected_value',obj.existing_selected_products);
                    }
                });
                $.ajax({
                    type: 'POST',
                    cache: false,
                    url: '<?php echo URL::to('get-stock-req-data');?>',
                    data: {'requisition_id':requisition_id},
                    success: function (success) {
                        $('#requisition-code').html('Requisition Code: <strong>'+success[0].stock_requisitions_code+'</strong>')
                        $('#requisition-status').html('Requisition Status: <strong>'+success[0].status_flows_name+'</strong>')
                    }
                });
            }
        });
        /*****Item Add*****/
        $(document).on('click','#btn_add_products_list', function (e) {
            var expected_delivery_date = $('#expected_delivery_date').val();
            var product_type = $('#purchase_categorys_id').val();

            @if($type == 'Transfer')
            if(($('#requisition_type').val() == 'Stock Out')){
                if($('#out_warehouses_id').val() == ''){
                    swalWarning("{{__lang('Select_Out_Warehouse')}}");
                    return true;
                }
            }
            if($('#in_warehouses_id').val() == ''){
                swalWarning("{{__lang('Select_Stock_In_Warehouse')}}");
                return true;
            }
             @endif

            if(product_type) {
                var last_requisition_id = $('#last_requisition_id').val();
                var existing_product_ids = $('#product_ids').text();

                // call grid function to show modal
                grid_modal_show($(this));

                if (last_requisition_id > 0) {
                    return true;
                } else {
                    var req_url = '<?php echo URL::to('save-stock-requisition');?>';
                    var requisitionData = $('#requisition-form').serialize() + '&remarks=' + $.trim($("#remarks").val());
                    $.ajax({
                        type: 'POST',
                        cache: false,
                        url: req_url,
                        data: requisitionData,
                        success: function (data) {
                            $('#last_requisition_id').val(data.stock_requisitions_id);
                            $('#requisition-code').html('Requisition Code: <strong>' + data.stock_requisitions_code + '</strong>');
                            $('#requisition-status').html('Requisition Status: <strong>' + data.requisition_status + '</strong>');
                            $('.confirm-requisition-form').prop('disabled', false);
                        }
                    });
                }
            }else{
                swalWarning("{{__lang('Select_Product_Type')}}");
            }
        });

        /*******selected-products*******/
        $(document).on('click','#products_list_selection',function () {
            Ladda.bind(this);
            var l = $(this).ladda();
            var stock_requisitions_id = $('#last_requisition_id').val();
            var requisition_type = $('#requisition_type').val();
            var requisition_type = $('#requisition_type').val();

            // call common function for get selected item ids
            var selected_products = getSelectedItems();

            $('#btn_add_products_list').data('selected_value',selected_products);

            var data = {'selected_products': selected_products, 'stock_requisitions_id': stock_requisitions_id};

            if(selected_products.length > 0){
                $.ajax({
                    type: 'POST',
                    cache: false,
                    url: '<?php echo URL::to('get-stock-requisition-items');?>',
                    data: data,
                    beforeSend: function () {
                        l.ladda( 'start' );
                    },
                    success: function (success) {
                        $('#requisition-item-container').append(success);
                        l.ladda('stop');
                        selected_products = [];

                        window.location.replace('{{url('create-stock-requisition')}}/'+requisition_type+'/' + stock_requisitions_id);
                    }
                });
            }else{
                swalWarning("{{__lang('Select_Product')}}");
            }
        });

        /************** Remove requisition item **********************/
        $(function () {
            $("body").on("click", ".remove", function (e) {
                e.preventDefault();
                var obj = $(this);
                swalConfirm("{{__lang('Are_you_sure?')}}").then(function (e) {
                    if(e.value){
                        var stock_requisition_details_id = obj.data('stock_requisition_details_id');
                        var product_id = obj.data('products_id');
                        var url = '<?php echo URL::to('delete-stock-requisition-item');?>';
                        $.ajax({
                            type: 'POST',
                            cache: false,
                            url: url,
                            data: {'stock_requisition_details_id':stock_requisition_details_id},
                            success: function (response) {
                                if(response == 'success'){
                                    obj.closest("tr").remove();
                                    var all_products = $('#btn_add_products_list').data('selected_value');
                                    all_products = all_products.split(',');
                                    list = jQuery.grep(all_products, function(n){ return (n); });
                                    var input = product_id.toString();
                                    var position = list.indexOf(input);
                                    list.splice(position,1)
                                    $('#btn_add_products_list').data('selected_value',list.toString());
                                }
                            }
                        });
                    }
                })

            });
        });

        /************** Remove spec **********************/
        $(function () {
            $("body").on("click", ".remove-spec", function (e) {
                e.preventDefault();
                var obj = $(this);
                swalConfirm("{{__lang('Are_you_sure?')}}").then(function (e) {
                    if(e.value){
                        obj.closest("tr").remove();
                    }
                });

            });
        });

        /************** Remove spec others **********************/
        $(function () {
            $("body").on("click", ".remove-spec-others", function (e) {
                e.preventDefault();
                var obj = $(this);
                swalConfirm("{{__lang('Are_you_sure?')}}").then(function (e) {
                    if(e.value){
                        obj.closest("tr").remove();
                    }
                });
            });
        });

        /******************* Item qty calculation *************************/
        (function() {
            //"use strict";
            $("table").on("input", "input, #uom_name", function() {
                var row = $(this).closest("tr");
                var stock_requisition_details_id = parseInt(row.find("a").attr('href'));
                var qty = parseFloat(row.find(".request_qty").val());
                qty = qty > 0 ? qty : 1;
                row.find(".request_qty").val(qty)
                $.ajax({
                    type: 'POST',
                    cache: false,
                    url: '<?php echo URL::to('update-stock-requisition-details');?>',
                    data: {'request_qty':qty,'stock_requisition_details_id':stock_requisition_details_id},
                    success: function (requisitionDetails) {

                    }
                });
            });
        })();

        /*******get default spec by product*******/
        $(document).on('click','.product-spec', function (e) {
            e.preventDefault();
            Ladda.bind(this);
            var l = $(this).ladda();
            $('#products-id').val(product_id);
            var stock_requisition_details_id = $(this).attr('href');
            $('#stock_requisition_details_id').val(stock_requisition_details_id);
            var product_id = $(this).attr('title');
            $('#products-id').val(product_id);
            var data = {'products_id':product_id, 'stock_requisition_details_id':stock_requisition_details_id};
         //   console.log(stock_requisition_details_id);
            $.ajax({
                type: 'POST',
                cache: false,
                url: '<?php echo URL::to('get-stock-spec-standards-and-others');?>',
                data: data,
                beforeSend: function () {
                    l.ladda( 'start' );
                },
                success: function (success) {
                    $('#large_modal .modal-content').html(success);
                    $('#large_modal').modal('show')
                    l.ladda('stop');
                }
            });
        });

        /***********Add new Spec**************/
        $(document).on('click', '#add-new-spec', function () {
            var new_spec = '<tr><td><input name = "standards_name[]" autocomplete="off" type="text" placeholder="" value = "" class="form-control"></td>' +
                '<td><input name = "spec_unit[]" type="text" autocomplete="off" placeholder="" value = "" class="form-control" /></td>' +
                '<td><input name = "default_spec[]" type="text" autocomplete="off" placeholder="" value = "" class="form-control"></td>' +
                '<td><input name = "analysis_value[]" type="text" autocomplete="off" placeholder="" value = "" class="form-control"></td>' +
                '<td align="right"><button type="button" class="btn btn-danger btn-xs remove-spec"><i class="glyphicon glyphicon-remove-sign"></i></button></td></tr>';
            $("#TextBoxContainerForSpecification").append(new_spec);
        });

        /***********Add new Spec others**************/
        $(document).on('click', '#add-new-spec-others', function () {
            var new_spec_others = '<tr><td><input name = "product_spec_others_name[]" type="text" autocomplete="off" placeholder="" value = "" class="form-control"></td>' +
                '<td><input name = "product_spec_others_value[]" type="text" placeholder="" autocomplete="off" value = "" class="form-control"></td>' +
                '<td align="right"><button type="button" class="btn btn-danger btn-xs remove-spec-others"><i class="glyphicon glyphicon-remove-sign"></i></button></td></tr>';
            $("#TextBoxContainerForOtherInfo").append(new_spec_others);
        });

        /************************ Purchase requisition update on input **************************/
        $('#remarks, #purpose, #expected_delivery_date,#requisition_date, #in_warehouses_id, #out_warehouses_id').on('change', function () {

            var purpose = $('#purpose').val();
            var expected_delivery_date = $('#expected_delivery_date').val();
            var remarks = $('#remarks').val();
            var stock_requisitions_id = $('#last_requisition_id').val();
            var in_warehouses_id = $('#in_warehouses_id').val();
            var out_warehouses_id = $('#out_warehouses_id').val();
            var requisition_date = $('#requisition_date').val();

            $.ajax({
                type: 'POST',
                cache: false,
                url: '<?php echo URL::to('update-stock-requisition');?>',
                data: {
                    'stock_requisitions_id':stock_requisitions_id,
                    'purpose':purpose,
                    'expected_delivery_date':expected_delivery_date,
                    'requisition_date':requisition_date,
                    'in_warehouses_id':in_warehouses_id,
                    'out_warehouses_id':out_warehouses_id,
                    'remarks':remarks
                },
                success: function (data) {
                }
            });
        });

        /**************** Start View confirm page *****************************/
        $(document).on('click','.confirm-requisition-form', function (e) {
            Ladda.bind(this);
            var l = $(this).ladda();
            var complete = 1;
            var requisition_id = $('#last_requisition_id').val();
            $('.allocate_ratio_percent').each(function(){
                if(parseInt($(this).text())<100){
                    complete = 0;
                }
            })
            if(complete == 0){
                swalConfirm("{{__lang('Please_add_100%_Product_Allocation_Ratio.')}}").then(function (e) {
                    if(e.value){
                        var data = {'requisition_id':requisition_id,'preview_mode':'confirm'};
                        $.ajax({
                            type: 'POST',
                            cache: false,
                            url: '<?php echo URL::to('get-confirm-stock-requisition');?>',
                            data: data,
                            beforeSend: function () {
                                l.ladda( 'start' );
                            },
                            success: function (success) {
                                $('#large_modal .modal-content').html(success);
                                $('#large_modal').modal('show')
                                l.ladda('stop');
                            }
                        });
                    }
                });

            }else{
                var data = {'requisition_id':requisition_id,'preview_mode':'confirm'};
                $.ajax({
                    type: 'POST',
                    cache: false,
                    url: '<?php echo URL::to('get-confirm-stock-requisition');?>',
                    data: data,
                    beforeSend: function () {
                        l.ladda( 'start' );
                    },
                    success: function (success) {
                        $('#large_modal .modal-content').html(success);
                        $('#large_modal').modal('show')
                        l.ladda('stop');
                    }
                });
            }
        });

        /***************** Start Update requisition status************************/
        $(document).on('click','#save-purchase-requisition', function (e) {
            var requisition_id = $('#last_requisition_id').val();
            var data = {'requisition_id':requisition_id};
            $.ajax({
                type: 'POST',
                cache: false,
                url: '<?php echo URL::to('update-requisition-status');?>',
                data: data,
                success: function (requisition) {
                    window.location = '<?php echo URL::to('stock-requisitions');?>';
                }
            });
        });

        /***************** Cancel Requisition************************/
        $(document).on('click','.cancel-requisition', function (e) {
            window.location = '<?php echo URL::to('stock-requisitions');?>';
        });
        $(document).on('click','.confirm-requisition', function (e) {
            swalConfirm("{{__lang('Stock_Requisition_Confirm_Successfully.')}}").then(function (e) {
                if(e.value){
                    window.location = '<?php echo URL::to('stock-requisitions');?>';
                }
            })
        });

        $(document).on('click','.product-alloc', function (e) {
            e.preventDefault();
            Ladda.bind(this);
            var l = $(this).ladda();
            var product_id = $(this).data('products_id');
            var products_name = $(this).data('products_name');
            var request_qty = $(this).parent().parent().find('.request_qty').val();
            var stock_requisition_details_id = $(this).data('stock_requisition_details_id');
            var stock_requisitions_id = $(this).data('stock_requisitions_id');
            var default_unit_price = $(this).data('default_unit_price');

            var data = {'products_id':product_id,'products_name':products_name, 'stock_requisitions_id':stock_requisitions_id,'stock_requisition_details_id':stock_requisition_details_id,request_qty:request_qty,default_unit_price:default_unit_price};
            $.ajax({
                type: 'POST',
                cache: false,
                url: '<?php echo URL::to('get-stock-allocation');?>',
                data: data,
                beforeSend: function () {
                    l.ladda( 'start' );
                },
                success: function (success) {
                    $('#large_modal .modal-content').html(success);
                    $('#large_modal').modal('show');

                    l.ladda('stop');
                }
            });
        });

        $(document).on('change','.allocation_for', function (e) {
            var allocate_for = $("input.allocation_for:checked").val();
            if(allocate_for == 'department'){
                $('body').find('.departments').show();

            }else{
                $('body').find('.departments').hide();
            }
        });

        $(document).on('submit','#stockAllocationForm', function (e) {
            e.preventDefault();

            var total = 0;

            $('.allocation_ratio_p').each(function (i,v){
                total+=parseFloat($(this).val());
            });
            if(total>100){
                swalWarning("{{__lang('Total_Allocation_Ratio_will_100')}}");
                return false;
            }

            var data = $(this).serialize();
            $.ajax({
                type: 'POST',
                cache: false,
                url: $(this).attr('action'),
                data: data,
                beforeSend: function () {
                },
                success: function (response) {
                    var url = window.location;
                    $('#large_modal').modal('hide');
                    if(response.status == 'success'){
                        swalRedirect(url,response.message,'success');
                    }else{
                        swalRedirect(url,response.message,'error');
                    }

                }
            });
        });

        $(document).on('click', '.add_new_allocation', function () {
            var allocate_for = $("input.allocation_for:checked").val();
            if(allocate_for == 'branch'){

                var tr = '<tr style="text-align: center">\n' +
                    '\n' +
                    '                <td>\n' +
                    '                <div class="col-sm-12 row">\n' +
                    '<div class="col-sm-6">'+
                    ' <input type="hidden" name="stock_allocation_id[]" value="">'+
                    '    {{ __combo("branchs", array("selected_value"=>"","attributes"=>array("name"=>"branchs_id[]","class"=>"form-control branchs", "required"=>'')))}}'+
                        '<input type="hidden" class="br_ids" value="">'+
                    '</div>'+
                    '<div class="col-sm-6 departments" style="display:none">'+
                    '    {{ __combo("departments", array("selected_value"=>"","attributes"=>array("name"=>"departments_id[]","class"=>"form-control departments")))}}'+
                    '</div>'+
                    '</div>'+
                    '                </td>\n' +
                    '                <td><input name="allocation_ratio_p[]" class="form-control allocation_ratio_p" required max="100" type="number" value=""></td>\n' +
                    '<td><input name="allocation_ratio_amnt[]" class="form-control allocation_ratio_amnt" min="0" type="number" readonly="" value="0"></td>'+
                    '                <td><button type="button" title="Allocation Remove"\n' +
                    '        class="btn btn-danger btn-sm remove_allocation"><i\n' +
                    '        class="fa fa-times-circle"></i>\n' +
                    '                </button></td>\n' +
                    '            </tr>';

            }else{
                var tr = '<tr style="text-align: center">\n' +
                    '\n' +
                    '                <td>\n' +
                    '                <div class="col-sm-12 row">\n' +
                    '<div class="col-sm-6">'+
                    ' <input type="hidden" name="stock_allocation_id[]" value="">'+
                    '    {{ __combo("branchs", array("selected_value"=>"","attributes"=>array("name"=>"branchs_id[]","class"=>"form-control branchs", "required"=>'')))}}'+
                    '<input type="hidden" class="br_ids" value="">'+
                    '</div>'+
                    '<div class="col-sm-6 departments">'+
                    '    {{ __combo("departments", array("selected_value"=>"","attributes"=>array("name"=>"departments_id[]","class"=>"form-control departments")))}}'+
                    '</div>'+
                    '</div>'+
                    '                </td>\n' +
                    '                <td><input name="allocation_ratio_p[]" class="form-control allocation_ratio_p" required max="100" type="number" value=""></td>\n' +
                    '<td><input name="allocation_ratio_amnt[]" class="form-control allocation_ratio_amnt" min="0" type="number" readonly="" value="0"></td>'+
                    '                <td><button type="button" title="Allocation Remove"\n' +
                    '        class="btn btn-danger btn-sm remove_allocation"><i\n' +
                    '        class="fa fa-times-circle"></i>\n' +
                    '                </button></td>\n' +
                    '            </tr>';
            }

            $('#allocation_area').parent().append(tr);


        });
        $(document).on('input','.branchs', function (e) {
            var dpt = $(this).parent().next().find('.departments').val();
            var br = $(this).val();
            $(this).parent().prev().find('.br_ids').val(br+','+dpt);
            $('.br_ids').each(function (i,v){
                if((br+','+dpt)==$(this).val()){
                    alert('dup');
                }
            });
        });
        $(document).on('input','.departments', function (e) {
            var br = $(this).parent().prev().find('.branchs').val();
            var dpt = $(this).val();
            $(this).parent().prev().find('.br_ids').val(br+','+dpt);
        });
        $(document).on('input','.allocation_ratio_p', function (e) {
            var total = 0;
            var default_price = parseFloat($('#default_unit_price').val());
            var request_qty = parseFloat($('#request_qty').val());
            var total_amount = (((default_price*parseFloat($(this).val()))/100)*request_qty).toFixed(2);
            $(this).parent().next().find('.allocation_ratio_amnt').val(total_amount);
            $('.allocation_ratio_p').each(function (i,v){
                total+=parseFloat($(this).val());
            });
            if(total>100){
                swalWarning("{{__lang('Total_Allocation_Ratio_will_100%')}}");
                $(this).addClass('error').val($(this).val());
            }
        });

        /*
         * Remove  item
         */
            $(document).on("click", ".remove_allocation", function (e) {
                e.preventDefault();
                var row = $(this).parent().parent();
                swalConfirm("{{__lang('Are_you_sure?')}}").then(function (e) {
                    if(e.value){
                        row.remove();
                    }
                });
            });

        $(document).on('change','#requisition_type',function () {
            if($(this).val() == 'Stock In'){
                $('#out_warehouse').hide();
                $('#out_wh').hide();
            }else{
                $('#out_warehouse').show();
                $('#out_wh').show();
            }
        });


        /* Customize code by Abu Bakar @ 26-08-2019 */
        (function ($) {
            $('#requisition_type').change(function (e) {
                var  req_type = $(this).val();
                if (req_type =='Production') {
                    $('#Allocate_Ratio').hide();
                    $('#is_trackable').val(0);
                }else{
                    $('#Allocate_Ratio').show();
                    $('#is_trackable').val(1);
                }
            });
        })(jQuery);
    </script>
@endsection
