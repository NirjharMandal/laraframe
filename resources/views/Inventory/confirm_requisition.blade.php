<div class="modal-header">
    <button type="button" class="close text-danger" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                class="sr-only">Close</span></button>
    <ul class="nav nav-tabs border-0" id="" role="tablist">
        <li class="">
            <button
                    class="btn btn-primary dele-color border-secondary"
                    id=""
                    data-toggle="tab"
                    href="#details"
                    role="tab"
                    aria-controls="home"
                    aria-selected="true">Stock Requisition Details
            </button>
        </li>
        <li style="margin-left: 5px;">
            <button
                    class="btn btn-default dele-color border-secondary"
                    id=""
                    data-toggle="tab"
                    href="#history"
                    role="tab"
                    aria-controls="profile"
                    aria-selected="false">Approval History
            </button>
        </li>
    </ul>

    {{--<h4 class="modal-title">Stock Requisition Preview</h4>--}}
</div>
<div class="tab-content" id="">
    <div class="tab-pane fade show active" id="details" role="tabpanel" aria-labelledby="">
        <br/>
        <div class="modal-body">
            <form method="post" id="requisition-approve" action="{{url('stock-requisition-approve')}}">
                {{csrf_field()}}
                <div class="row">
                    <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-3">
                                    <h4>Requisition For</h4>
                                    <p>{{$stock_requisition->requisition_type?$stock_requisition->requisition_type:'N/A'}} </p>
                                </div>
                                @if($stock_requisition->requisition_type == 'Stock In'||$stock_requisition->requisition_type == 'Stock Out')
                                    <div class="col-md-3">
                                        <h4>Stock In Warehouse</h4>
                                        <p>{{$stock_requisition->in_warehouses_name?$stock_requisition->in_warehouses_name:'N/A'}} </p>
                                    </div>
                                    <div class="col-md-3">
                                        <h4>Stock Out Warehouse</h4>
                                        <p>{{$stock_requisition->out_warehouses_name?$stock_requisition->out_warehouses_name:'N/A'}} </p>
                                    </div>
                                @endif
                                <div class="col-md-4">
                                    <h4>Purpose</h4>
                                    <p>{{$stock_requisition->purpose?$stock_requisition->purpose:'N/A'}} </p>
                                </div>
                                <div class="col-md-4">
                                    <h4>Remarks</h4>
                                    <p>{{$stock_requisition->remarks?$stock_requisition->remarks:'N/A'}} </p>
                                </div>
                                <div class="col-md-3">
                                    <h4>Requisition Date:</h4>
                                    <p>{{toDated($stock_requisition->requisition_date)}}</p>
                                </div>
                                <div class="col-md-3">
                                    <h4>Expected Delivery Date:</h4>
                                    <p>{{toDated($stock_requisition->expected_delivery_date)}}</p>
                                </div>
                            </div>

                        @foreach($stock_requisition_details as $purchase_index => $stock_requisition_detail)
                            @php
                                $pr_req_details_spec = isset($stock_requisition_details_spec[$stock_requisition_detail->products_id]) ? $stock_requisition_details_spec[$stock_requisition_detail->products_id] : [];
                                $pr_req_details_others = isset($stock_requisition_details_others[$stock_requisition_detail->products_id]) ? $stock_requisition_details_others[$stock_requisition_detail->products_id] : [];
                                $pr_req_allocate_stocks = isset($allocate_stocks[$stock_requisition_detail->products_id]) ? $allocate_stocks[$stock_requisition_detail->products_id] : [];
                            @endphp
                            <div class="panel panel-default">
                                <div class="panel-heading col-sm-12">
                                    <span>{{$stock_requisition_detail->products_name}}</span> {{intval($stock_requisition_detail->request_qty).' '.$stock_requisition_detail->default_uom}}
                                </div>
                                <div class="panel-body">
                                    <div class="row">

                                        <div class="col-sm-2 b-r">
                                            <p class="text-right">Request Qty
                                                : {{intval($stock_requisition_detail->request_qty).' '.$stock_requisition_detail->default_uom}}</p>
                                            @if($stock_requisition->requisition_status != 26)
                                                <p class="text-right">Approve Qty :
                                                    @if($preview_mode == 'approval')
                                                        <input type="number" class="form-control input-sm approve_qty"
                                                               data-products_id="{{$stock_requisition_detail->products_id}}"
                                                               name="approve_qty[]"
                                                               data-request_qty="{{$stock_requisition_detail->request_qty}}"
                                                               min="0" max="{{$stock_requisition_detail->request_qty}}"
                                                               value="{{ $stock_requisition_detail->cancel_qty!=0 ? intval($stock_requisition_detail->approve_qty) :  intval($stock_requisition_detail->request_qty) }}">
                                                        {{-- Hidden inputs --}}
                                                        <input type="hidden" class="form-control request_qty"
                                                               name="request_qty[]"
                                                               value="{{$stock_requisition_detail->request_qty}}">
                                                        <input type="hidden" class="form-control" name="products_id[]"
                                                               value="{{$stock_requisition_detail->products_id}}">
                                                        <input type="hidden" class="form-control"
                                                               name="stock_requisition_details_id[]"
                                                               value="{{$stock_requisition_detail->stock_requisition_details_id}}">
                                                        <input type="hidden" class="form-control"
                                                               name="stock_requisitions_id"
                                                               value="{{$stock_requisition_detail->stock_requisitions_id}}">
                                                    @else
                                                        {{intval($stock_requisition_detail->approve_qty).' '.$stock_requisition_detail->default_uom}}
                                                    @endif

                                                </p>
                                            @endif

                                        </div>
                                        @if($requisition_type == 'Office use')
                                            @if(!empty($pr_req_allocate_stocks))
                                                <div class="col-sm-8">
                                                    <table class="table table-bordered">
                                                        <thead>
                                                        <tr style="text-align: center">
                                                            <th width="60%">Allocation Place</th>
                                                            <th width="20%">Allocation Ratio</th>
                                                            <th width="20%">Allocation Amount</th>

                                                        </tr>
                                                        </thead>
                                                        <tbody id="allocation_area">

                                                        @foreach($pr_req_allocate_stocks as $allocation)
                                                            <tr style="text-align: center">

                                                                <td align="left">{{$allocation->departments_name!=''?$allocation->departments_name.' ('.$allocation->branchs_name.')':$allocation->branchs_name}}</td>
                                                                <td align="right">{{$allocation->allocation_ratio_p!=0?ceil($allocation->allocation_ratio_p).'%':''}}</td>
                                                                <td align="right">{{number_format($allocation->allocation_ratio_amnt,2)}}</td>

                                                            </tr>
                                                        @endforeach

                                                        </tbody>
                                                    </table>

                                                </div>
                                            @endif
                                        @else
                                            <div class="col-sm-8"></div>
                                        @endif

                                        <div class="col-sm-7 b-r">

                                            @if(isset($pr_req_details_spec) && !empty($pr_req_details_spec))
                                                <div class="font-bold">Specification Standards</div>
                                                <table class="table table-bordered">
                                                    <thead>
                                                    <tr>
                                                        <th>S.N</th>
                                                        <th>Characteristics</th>
                                                        <th>Unit</th>
                                                        <th>Default Values</th>
                                                        <th>Analysis Value</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>

                                                    @foreach($pr_req_details_spec as $specIndex => $spec)
                                                        <tr>
                                                            <td>{{$specIndex+1}}</td>
                                                            <td>{{$spec->standards_name}}</td>
                                                            <td>{{$spec->spec_unit}}</td>
                                                            <td>{{$spec->default_spec}}</td>
                                                            <td>{{$spec->analysis_value}}</td>
                                                        </tr>
                                                    @endforeach
                                                    </tbody>
                                                </table>
                                            @else
                                                <div class="alert alert-danger">No specification Recorded</div>
                                            @endif
                                        </div>
                                        <div class="col-sm-5">
                                            @if(isset($pr_req_details_others) && !empty($pr_req_details_others))
                                                <div class="font-bold">Specification Standards Others</div>
                                                <table class="table table-bordered">
                                                    <thead>
                                                    <tr>
                                                        <th>S.N</th>
                                                        <th>Level</th>
                                                        <th>Values</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    @foreach($pr_req_details_others as $spec_other_index => $specOther)
                                                        <tr>
                                                            <td>{{$spec_other_index+1}}</td>
                                                            <td>{{$specOther->product_spec_others_name}}</td>
                                                            <td>{{$specOther->product_spec_others_value}}</td>
                                                        </tr>
                                                    @endforeach
                                                    </tbody>
                                                </table>
                                            @else
                                                <div class="alert alert-danger">No Other specification Recorded</div>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                        @if($preview_mode == 'approval')
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <span>Approval Comment</span>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-2 b-r">
                                          <strong> Approval Comment</strong>
                                        </div>
                                        <div class="col-sm-10">
                                            <input type="hidden" name="delegation_type" id="delegation_type"
                                                   value="approval">
                                            <input type="hidden" name="slug" value="stc_req">
                                            <input type="hidden" name="code[]" value="{{$requisition_code}}">
                                            <textarea name="comments" class="form-control comments"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endif

                    </div>

                    
                    <div class="form-group col-md-4 ml-1">
                        <label class="form-label">Supporting FIle Information </label>
                        <div class="row">
                            <div class="table table-responsive">
                                <table class="table table-striped table-bordered table-hover dataTable">
                                    <thead>
                                    <tr>
                                        <th>Document Type</th>
                                        <th>Document Name</th>
                                    </tr>
                                    </thead>
                                    <tbody class="supporting-files">


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
        </form>
    </div>
    <div class="modal-footer">
        @if($preview_mode == 'approval')
            <input type="submit" class="btn btn-primary submit" value="Approve" actionType="approval">
            <input type="submit" class="btn btn-danger submit" value="Decline" actionType="decline">
        @elseif($preview_mode == 'confirm')
            <button class="btn btn-md btn-success confirm-requisition" id=""><strong>Confirm Submit</strong></button>
            <button data-dismiss="modal" aria-label="Close" class="btn btn-md btn-warning" id=""><strong>Close</strong>
            </button>
        @else
            <button data-dismiss="modal" aria-label="Close" class="btn btn-md btn-warning" id=""><strong>Close</strong>
            </button>
        @endif

    </div>
</div>
<div class="tab-pane fade" id="history" role="tabpanel" aria-labelledby="profile-tab">
    @include('includes.delegation_history',array('ref_event'=>'stc_req','ref_id'=>$stock_requisition->stock_requisitions_code))
</div>
</div>
<script>
    $(document).on('input', '.approve_qty', function () {
        var obj = $(this);
        var request_qty = parseInt(obj.data('request_qty'));
        var qty = obj.val();
        var products_id = obj.data('products_id');
        var unit_price = $('.unit-price-' + products_id).text();
        if (qty > request_qty) {
            swalWarning("Max Approve Qty " + request_qty);
            $(this).val(request_qty)
        } else {
            $('.item-total-price-' + products_id).text(qty * unit_price);
        }
    })

    $('.submit').on('click', function (e) {
        e.preventDefault();
        var action_type = $(this).attr('actionType');
        $('#delegation_type').val(action_type);
        var comments = $('.comments').val();
        var alert_msg = '';
        if($(this).val() == 'Decline'){
            alert_msg = 'Decline Requisition';
        }else{
            alert_msg = 'Approve Requisition';
        }
        //if (comments) {
            swalConfirm(alert_msg).then(function (e) {
                if(e.value){
                    $('#requisition-approve').submit();
                }
            });

        /*} else {
            swalWarning("Enter your comment");
        }*/
    });


    function getSupportingFiles() {
        var reference = 'stock_requisition';
        var reference_id = '<?= $stock_requisition->stock_requisitions_id?>';
        $.ajax({
            type: 'POST',
            cache: false,
            url: '<?php echo URL::to('get-supporting-files');?>',
            data: {'reference': reference, 'reference_id': reference_id},
            success: function (response) {
                if (response.status == 'success') {
                    $('.supporting-files').html(response.support_doc_html)
                    $(".supporting-files td:last-child").remove();
                } else {
                    swalWarning();
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                swalWarning("Something error");
            }
        });
    }

    $(function () {
        getSupportingFiles();
    });
</script>