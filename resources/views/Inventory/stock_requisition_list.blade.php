@extends('layouts.app')
@section('content')
    <link href="{{asset('public/css/plugins/dataTables/datatables.min.css')}}" rel="stylesheet">
    <script src="{{asset('public/js/plugins/dataTables/datatables.min.js')}}"></script>
    <script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
    <script src="{{asset('public/js/moment.min.js')}}"></script>
    <script src="{{asset('public/js/plugins/daterangepicker/daterangepicker.min.js')}}"></script>
    <link rel="stylesheet" type="text/css" href="{{asset('public/css/plugins/daterangepicker/daterangepicker.css')}}"/>
    <script src="{{asset('public/js/plugins/dataTables/dataTables.bootstrap4.min.js')}}"></script>
    {{csrf_field()}}

    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-md-12 no-padding">
                <div class="ibox">
                    <div class="ibox-title">
                        <h2>{{__lang('Stock_Requisition_List')}}</h2>
                    </div>
                    <div class="ibox-content">
                        <form action="{{url('stock-requisitions')}}" method="post" class="form-control">
                            @csrf
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="col-sm-12 col-form-label"><strong>{{__lang('Expected_delivery_date :')}}</strong></label>
                                        <div class="input-group date">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <input type="text" placeholder="Expected Delivery Date" autocomplete="off" class="form-control" id="dateRange" name="date_range" value="{{isset($date_range)?$date_range:''}}"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group row">
                                        <label class="col-sm-12 col-form-label"><strong>{{__lang('Status:')}}</strong></label>
                                        <div class="col-sm-12">
                                            {{__combo('stk_req_status',array('selected_value'=>$stk_req_status))}}
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group row">
                                        <label class="col-sm-12 col-form-label"><strong>{{__lang('Requisition_For:')}}</strong></label>
                                        <div class="col-sm-12">
                                            {{__combo('purchase_category',array('selected_value'=>$purchase_category,'multiple'=>true,'name'=>'purchase_category[]'))}}
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3"> <label class="col-sm-12 col-form-label"><strong>&nbsp;</strong></label>
                                    <button type="submit" class="btn btn-primary"> <i class="fa fa-search"></i> {{__lang('Filter')}}</button>
                                    <a class="btn btn-warning btn" href="{{url('stock-requisitions')}}"><i class="fa fa-resolving"></i> {{__lang('Reset')}}</a>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="ibox-title">
                        <div class="ibox-tools">
                            <a class="btn btn-primary btn-xs" href="{{url('create-stock-requisition')}}"><i class="fa fa-plus" aria-hidden="true"></i> {{__lang('New')}}</a>
                            <button type="button" class="btn btn-primary btn-xs hide" id="create_challan"><i class="fa fa-plus-circle" aria-hidden="true"></i> {{__lang('Create_Challan')}}</button>
                            <button class="btn btn-success btn-xs  hide" id="requisition_preview"><i class="fa fa-eye" aria-hidden="true"></i> {{__lang('View')}}</button>
                            <button class="btn btn-warning btn-xs  hide" id="stock_edit"><i class="fa fa-pencil" aria-hidden="true"></i> {{__lang('Edit')}}</button>
                            <button class="btn btn-danger btn-xs  hide" id="requisition_delete"><i class="fa fa-remove" aria-hidden="true"></i> {{__lang('Delete')}}</button>
                            <button class="btn btn-primary btn-xs send_for_approval_btn hide" id="send_approval" id_slug="stc_req"><i class="fa fa-check-circle" aria-hidden="true"></i> {{__lang('Send_For_Approval')}}</button>
                        </div>
                    </div>

                    <div class="ibox-content">
                        <div class="table-responsive">
                            <table class="checkbox-clickable table table-striped table-bordered table-hover dataTables-example" id="examples">
                                <thead>
                                <tr>
                                    <th></th>
                                    <th>{{__lang('Requisitions_Code')}}</th>
                                    <th>{{__lang('Requisition_Date')}}</th>
                                    <th>{{__lang('Expected_Delivery')}}</th>
                                    <th>{{__lang('Requisition_Type')}}</th>
                                    <th>{{__lang('Product_Type')}}</th>
                                    <th>{{__lang('Initiator')}}</th>
                                    <th>{{__lang('Delegation_Step')}}</th>
                                    <th>{{__lang('Delegation_Location')}}</th>
                                    <th>{{__lang('Sent_for_Approval')}}</th>
                                    <th>{{__lang('Approved_At')}}</th>
                                    <th>{{__lang('Status')}}</th>
                                </tr>
                                </thead>
                                <tbody>
                                <span style="display: none" id="delegation-initialize-url"><?php echo URL::to('delegation-initialize'); ?></span>
                                @if(isset($data) && !empty($data))
                                    @foreach($data as $raw_item)
                                        <tr id="{{$raw_item->stock_requisitions_id}}" data-code="{{$raw_item->stock_requisitions_code}}"  data-status="{{ $raw_item->requisition_status }}">
                                            <td align="center">
                                                <input type="checkbox" class="item-selection delegation_job_id" code="{{$raw_item->stock_requisitions_code}}" value="{{$raw_item->stock_requisitions_id}}" data-status="{{ $raw_item->requisition_status }}">
                                            </td>
                                            <td align="center">{{$raw_item->stock_requisitions_code}}</td>
                                            <td align="center">{{toDated($raw_item->requisition_date)}}</td>
                                            <td align="center">{{toDated($raw_item->expected_delivery_date)}}</td>
                                            <td align="left" class="requisition_type">{{$raw_item->requisition_type}}</td>
                                            <td align="left">{{$raw_item->req_product_type}}</td>
                                            <td align="center">{{$raw_item->created_by}}</td>
                                            <td align="center">{{$raw_item->step_name}}</td>
                                            <td align="center">{{$raw_item->delegation_person}}</td>
                                            <td align="center">{{($raw_item->delegation_initialized)?toDateTimed($raw_item->delegation_initialized):''}}</td>
                                            <td align="center">{{($raw_item->delegation_final_approved)?toDateTimed($raw_item->delegation_final_approved):''}}</td>
                                            <td align="center">{{$raw_item->status_flows_name}}</td>
                                        </tr>
                                    @endforeach
                                @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="edit_id" style="display: none"></div>
    <div id="delete_ids" style="display: none"></div>
    <script>
        $('select option:contains("Choose Option")').text('Select Status');

        $('.dataTables-example').dataTable({
            "bFilter": true,
            "bInfo": true,
            "lengthChange": true
        });

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('input[name="_token"]').val()
            }
        });

        var selected_products = [];
        var selected_status = [];
        var requisition_type = '';
        $(document).on('click','.checkbox-clickable tbody tr',function (e) {
            $obj = $(this);
            if(!$(this).attr('id')){ return true; }

            $obj.toggleClass('selected');
            var id = $obj.attr('id');
            var status = $obj.data('status');

            if ($obj.hasClass( "selected" )){
                requisition_type = $( this ).find('.requisition_type').text();
                $obj.find('input[type=checkbox]').prop( "checked", true );
                selected_products.push(id);
                selected_status.push(status);
            }else{
                $obj.find('input[type=checkbox]').prop( "checked", false );
                var index = selected_products.indexOf(id);
                var st_index = selected_status.indexOf(status);
                selected_products.splice(index,1);
                selected_status.splice(st_index,1);
            }

            if (selected_products.length == 1){
                if(selected_status.includes(27) || selected_status.includes(28)||selected_status.includes(71)||selected_status.includes(72)){
                    $('#stock_edit').hide();
                }else{
                    $('#stock_edit').show();
                }
            }else{
                $('#stock_edit').hide();
            }

            if(selected_products.length >= 1 && selected_status.length >=1){
                if ( selected_status.includes(27)||selected_status.includes(28)||selected_status.includes(71)||selected_status.includes(72)){
                    $('#requisition_delete').hide();
                    $('#send_approval').hide();
                }else{
                    $('#requisition_delete').show();
                    $('#send_approval').show();
                }
            }else{
                $('#requisition_delete').hide();
                $('#send_approval').hide();
            }

            if (selected_products.length == 1){
                $('#requisition_preview').show();
            }else{
                $('#requisition_preview').hide();
            }

            if (selected_products.length == 1 && (selected_status.includes(28) || selected_status.includes(71))) {
                $('#create_challan').show();
            }else{
                $('#create_challan').hide();
            }

            $('#edit_id').text(selected_products);
            $('#delete_ids').text(selected_products);
            // console.log(selected_delete);
            /*if(selected_delete.includes(0)){
                $('.send_for_approval_btn').hide();
            }else{
                $('.send_for_approval_btn').show();
            }*/
        });

       /*******make selected-products array *****/



        /********************* stock Requisition Edit ************************************/
        $("#stock_edit").on('click', function (e) {
            if (selected_products.length == 1) {
                var requisition_id = $('#edit_id').text();
                window.location = '<?php echo URL::to('create-stock-requisition');?>/'+requisition_type+'/' + requisition_id;
            } else {
                swalWarning("{{__lang('Please_select_an_item')}}");
                return false;
            }
        });

        /********************* stock Requisition Delete ************************************/
        $("#requisition_delete").on('click', function (e) {
            if (selected_products.length === 0) {
                swalWarning("{{__lang('Please_select_an_item')}}");
            }else{
                swalConfirm().then(function (e) {
                    if(e.value){
                        var stock_requisition_ids = $('#delete_ids').text();
                        var url = '<?php echo URL::to('delete-stock-requisition');?>';
                        var data = {'stock_requisition_ids': stock_requisition_ids};
                        $.ajax({
                            type: 'POST',
                            cache: false,
                            url: url,
                            data: data,
                            success: function (data) {
                                if (data.status == 'success') {
                                    swalSuccess(data.message);
                                    location.reload();
                                } else {
                                    swalError("{{__lang('Bad_Luk!')}}");
                                }
                            }
                        });
                    }
                });

            }
        });

        /********************* stock Requisition view ************************************/
        $(document).on('click','#requisition_preview', function (e) {

            var requisition_id = $('#edit_id').text();
            var data = {'requisition_id':requisition_id};

            if (selected_products.length == 1) {
                $.ajax({
                    type: 'POST',
                    cache: false,
                    url: '<?php echo URL::to('get-confirm-stock-requisition');?>',
                    data: data,
                    beforeSend: function () {
                    },
                    success: function (success) {
                        $('#large_modal .modal-content').html(success);
                        $('#large_modal').modal('show')
                    }
                });
            } else {
                swalWarning("{{__lang('Please_select_single_item')}}");
                return false;

            }
        });


        //Send for approval
        $(document).on('click', '.send_for_approval_btn', function (e) {
            e.preventDefault();
            var id_slug = $(this).attr('id_slug');
            var job_value = [];
            var requsition_id = [];

            $('.delegation_job_id:checkbox:checked').each(function(){
                var val = $(this).attr('code');
                job_value.push(val);
                var id = $(this).val();
                requsition_id.push(id);
            });

            $.ajax({
                url:"{{route('check-allocation')}}",
                type: 'POST',
                data: {id:requsition_id,},
                success: function (response) {
                    if (response.status == true){
                        var url = '<?php echo URL::to('go-to-sr-delegation-process');?>';
                        if(job_value.length){
                            swalConfirm().then(function (e) {
                                if(e.value){
                                    $.ajax({
                                        url: url,
                                        type: 'POST',
                                        data: {slug:id_slug,code:job_value,'delegation_type':'send_for_approval'},
                                        success: function (data) {
                                            var url = window.location;
                                            swalRedirect(url,data,'success');
                                        },
                                        failure: function() {
                                            swalError("{{__lang('Failed')}}");
                                        }
                                    });
                                }
                            });
                        }else{
                            swalWarning("{{__lang('Please_select_at_least_one_job!')}}");
                        }
                    } else{
                        swalWarning("{{__lang('Please_100%_allocate_this_job!')}}");
                    }
                },
                failure: function() {
                    swalError("{{__lang('Failed')}}");
                }
            });
        });

        $(function ($) {
            //Date Range Picker
            $('#dateRange').daterangepicker({
                locale: {
                    format: 'Y-M-DD'
                },
                autoApply: true,
            });
        })

        /********************* stock Requisition to challan create ************************************/
        $("#create_challan").on('click', function (e) {
            if (selected_products.length == 1) {
                var requisition_id = $('#edit_id').text();
                window.location = '<?php echo URL::to('challan-process/stock_requisition_details');?>/' + requisition_id;
            } else {
                swalWarning("{{__lang('Please_select_an_item')}}");
                return false;

            }
        });
    </script>
@endsection
