@extends('layouts.app')
@section('content')
    <link href="{{asset('public/css/plugins/dataTables/datatables.min.css')}}" rel="stylesheet">
    <script src="{{asset('public/js/plugins/dataTables/datatables.min.js')}}"></script>
    <script src="{{asset('public/js/plugins/dataTables/dataTables.bootstrap4.min.js')}}"></script>
    <script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
    {{csrf_field()}}

    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12 no-padding">
                <div class="ibox ">
                    <div class="ibox-title">
                        <h2>Stock Requisition Approval</h2>
                        @if( Session::has( 'success' ))
                            {{ Session::get( 'success' ) }}
                        @elseif( Session::has( 'error' ))
                            {{ Session::get( 'error' ) }}
                        @endif
                        <div class="ibox-tools">
                            @if(isSuperUser())
                                <a class="btn btn-primary btn-xs" id="prq_approve" href="{{url('requisition-approval-details')}}">View</a>
                                <a class="d-none btn btn-primary btn-xs" id="all_approve" href="{{url('requisition-bulk-approved')}}">All Approve</a>
                            @endif
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="table-responsive">
                            <table class="checkbox-clickable table table-striped table-bordered table-hover dataTables-example">
                                <thead>
                                <tr>
                                    <th class="no-sort"><input type="checkbox" name="bulk_approve" id="bulk_approve"></th>
                                    @if($th)
                                        @foreach($th as $val)
                                            <th>{{ucwords(str_replace("_"," ", $val))}}</th>
                                        @endforeach
                                    @endif
                                </tr>
                                </thead>
                                <tbody>
                                @if($requisition_approval_list['results'])
                                    @foreach($requisition_approval_list['results'] as $requisition)
                                        <tr data-pr_code="{{$requisition->stock_requisitions_code}}" class="row-select-toggle">
                                            <td><input type="checkbox" name="prq_approve" class="single_approve" title="{{$requisition->stock_requisitions_id}}" value="{{$requisition->stock_requisitions_code}}"></td>
                                            <td>{{$requisition->stock_requisitions_code}}</td>
                                            <td>{{toDated($requisition->expected_delivery_date)}}</td>
                                            <td>{{$requisition->purchase_categorys_name}}</td>
                                            <td>{{getUserInfoFromId($requisition->created_by)->name}}</td>
                                            <td>{{toDated($requisition->created_at)}}</td>
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
    <script>
        $(document).ready(function() {
            var selected_codes = [];

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('input[name="_token"]').val()
                }
            });
            $('.dataTables-example').dataTable(
                {
                    "aaSorting": [[ 1, "desc" ]]
                }
            );
            $('#prq_approve').on('click',function (e) {
                e.preventDefault()
                Ladda.bind(this);
                var obj = $(this);
                var l = obj.ladda();
                var stock_requisitions_id = $('input[type="checkbox"]:checked').attr('title');
                if(stock_requisitions_id){
                    $.ajax({
                        type: 'POST',
                        url: '<?php echo URL::to('get-confirm-stock-requisition');?>',
                        data: {'requisition_id': stock_requisitions_id,'preview_mode':'approval'},
                        beforeSend: function () {
                            l.ladda( 'start' )
                        },
                        success: function (success) {
                            $('#large_modal .modal-content').html(success);
                            $('#large_modal').modal('show')
                            l.ladda('stop');
                        }
                    });
                }else{
                    swalWarning("Select Requisition");
                }
            })

            $("#bulk_approve").change(function(){
                if(this.checked){
                    selected_codes = [];
                    $(".single_approve").each(function(){
                        this.checked=true;
                        selected_codes.push($(this).val());
                    })
                    $('#all_approve').removeClass('d-none').addClass('visible');
                    $('#prq_approve').addClass('d-none');
                    $('.row-select-toggle').addClass('selected');
                }else{
                    $(".single_approve").each(function(){
                        this.checked=false;
                        selected_codes = [];
                    })
                    $('#all_approve').removeClass('visible').addClass('d-none')
                    $('#prq_approve').removeClass('d-none').addClass('visible');
                    $('.row-select-toggle').removeClass('selected');
                }
              //  console.log(selected_codes);
            });

            $('#all_approve').on('click',function (e) {
                e.preventDefault();
                swalConfirm().then(function (e) {
                    if (e.value) {
                        $.ajax({
                            type: 'POST',
                            url: '<?php echo URL::to('stock-requisition-bulk-approved');?>',
                            data: {'code': selected_codes, 'delegation_type': 'approval'},
                            success: function (response) {
                                var all_smsg = '';
                                var count_smsg = 0;
                                var all_fmsg = '';
                                var count_fmsg = 0;
                                $.each(response.sucs_msg, function (key, value) {
                                    all_smsg += value + ", ";
                                    count_smsg++;
                                });
                                $.each(response.fail_msg, function (key, value) {
                                    all_fmsg += value + ", ";
                                    count_fmsg++;
                                });
                                var url = window.location;
                                swalRedirect(url, "" + count_smsg + " Successfully Approved AND " + count_fmsg + " Failed " + all_fmsg, 'success');
                            }
                        });
                    }
                });
            });
            //Action when click on tr
            $(document).on('click','.row-select-toggle',function (e) {
                $obj = $(this);
                $obj.toggleClass('selected');
                var pr_code = $obj.data('pr_code');

                if ($obj.hasClass( "selected" )){
                    $obj.find('input[type=checkbox]').prop( "checked", true );
                    selected_codes.push(pr_code);
                }else{
                    $obj.find('input[type=checkbox]').prop( "checked", false );
                    var index = selected_codes.indexOf(pr_code);
                    selected_codes.splice(index,1);
                }
                var rowCount = $('.row-select-toggle').length;

                if (rowCount == selected_codes.length && selected_codes.length !=1) {
                    $("#bulk_approve").prop("checked", true);
                }else{
                    $("#bulk_approve").prop("checked", false);
                }

                if (selected_codes.length > 1){
                    $('#all_approve').removeClass('d-none').addClass('visible');
                    $('#prq_approve').addClass('d-none');
                } else{
                    $('#all_approve').removeClass('visible').addClass('d-none');
                    $('#prq_approve').removeClass('d-none').addClass('visible');
                }

                //console.log(selected_codes);
            });

        });

    </script>
@endsection
