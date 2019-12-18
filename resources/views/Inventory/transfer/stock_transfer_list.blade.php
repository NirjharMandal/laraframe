<?php
/**
 * Created by PhpStorm.
 * User: rashed.islam
 * Date: 1/14/2019
 * Time: 11:12 AM
 */
?>
@extends('layouts.app')
@section('content')
    <link href="{{asset('public/css/plugins/dataTables/datatables.min.css')}}" rel="stylesheet">
    <script src="{{asset('public/js/plugins/dataTables/datatables.min.js')}}"></script>
    <script src="{{asset('public/js/plugins/dataTables/dataTables.bootstrap4.min.js')}}"></script>
    <script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
    <link href="{{asset('public/css/plugins/datepicker/datepicker3.css')}}" rel="stylesheet">
    <script src="{{asset('public/js/plugins/datepicker/bootstrap-datepicker.js')}}"></script>
    {{csrf_field()}}

    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-md-12 no-padding">
                <div class="ibox">
                    <div class="ibox-title">
                        <h2>Stock Requisitions</h2>
                        <div class="ibox-tools">
                            @if(isSuperUser())
                                <button class="btn btn-success btn-xs" id="requisition_preview"><i class="fa fa-eye" aria-hidden="true"></i> View</button>
                                <a href="{{url('stock-requisition-transfer')}}" class="btn btn-success btn-xs" id="stock_transfer"><i class="fa fa-bus" aria-hidden="true"></i> Create Challan</a>
                            @endif
                        </div>
                    </div>

                    <div class="ibox-content">
                        <form action="{{url('stock-requisitions')}}" method="post" class="form-control">
                            @csrf
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="col-sm-12 col-form-label"><strong>Expected delivery date :</strong></label>
                                        <div class="input-group date">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <input type="text" autocomplete="off" id="expected_delivery_date" name="expected_delivery_date" placeholder="Expected Delivery Date" class="form-control date" value="{{old('expected_delivery_date')}}">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-3"> <label class="col-sm-12 col-form-label"><strong>&nbsp;</strong></label>
                                    <button type="submit" class="btn btn-primary"> <i class="fa fa-search"></i> Filter</button>
                                    <a class="btn btn-warning btn" href="{{url('stock-requisitions')}}"><i class="fa fa-resolving"></i> Reset</a>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="ibox-content">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover dataTables-example" id="examples">
                                <thead>
                                <tr>
                                    <th></th>
                                    <th>Requisitions Code</th>
                                    <th>Expected Delivery</th>
                                    <th>Requisition For</th>
                                    <th>Initiator</th>
                                    <th>Status</th>
                                </tr>
                                </thead>
                                <tbody>
                                <span style="display: none" id="delegation-initialize-url"><?php echo URL::to('delegation-initialize'); ?></span>
                                @if(isset($data) && !empty($data))
                                    @foreach($data as $raw_item)

                                        <tr>
                                            <td><input type="radio" name="stock_transfer" class="item-selection delegation_job_id" code="{{$raw_item->stock_requisitions_code}}" value="{{$raw_item->stock_requisitions_id}}"></td>
                                            <td align="center">{{$raw_item->stock_requisitions_code}}</td>
                                            <td align="center">{{toDated($raw_item->expected_delivery_date)}}</td>
                                            <td align="left">{{$raw_item->req_product_type}}</td>
                                            <td align="center">{{$raw_item->created_by}}</td>
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

        $(document).on('change','.item-selection', function () {
            var checked = $(this).val();
            selected_products = [];
            if ($(this).is(':checked')) {
                selected_products.push(checked);
            }else{
                selected_products.splice($.inArray(checked, selected_products),1);
            }
            $('#edit_id').text(checked);
            $('#delete_ids').text(selected_products);
        })
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('input[name="_token"]').val()
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
                swalError("Please select single item");
                return false;
            }
        });

        $('.date').datepicker({
            'format':'yyyy-mm-dd',
            'autoclose':true
        });
    </script>
@endsection