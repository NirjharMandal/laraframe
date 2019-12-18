<script src="{{asset('public/js/plugins/bootstrap-validator/validator.min.js')}}"></script>

<div class="modal-header">
    <button type="button" class="close text-danger" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
    <h4 class="modal-title">Cost Allocation ({{$products_name}})</h4>
</div>
<div class="modal-body">
    <form id="stockAllocationForm" action="{{url('stock-allocation-save')}}" method="post">
    <div class="row">
        <div class="col-md-12">
            <input name="products_id" id="products_id" type="hidden" value="{{$products_id}}" class="form-control">

            <input name="stock_requisition_details_id" id="stock_requisition_details_id" type="hidden" value="{{$stock_requisition_details_id}}" class="form-control">
            <input name="stock_requisitions_id" id="stock_requisitions_id" type="hidden" value="{{$stock_requisitions_id}}" class="form-control">

            <div class="form-row">
                <div class="form-group col-md-3">
                    <label class="form-label">Allocation For <span class="required">*</span></label><br>
                            <div class="form-check form-check-inline">
                                <input required id="allocation_for1" name="allocation_for" {{isset($allocate_stocks[0])&&$allocate_stocks[0]->allocated_place_type == 'branch'?"checked":''}} type="radio" id="allocation_for1" class="allocation_for" value="branch">
                                <label class="form-check-label" for="allocation_for1">Branch</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input required id="allocation_for2" {{isset($allocate_stocks[0])&&$allocate_stocks[0]->allocated_place_type == 'department'?"checked":''}}  name="allocation_for" class="allocation_for" type="radio" value="department">
                                <label class="form-check-label" for="allocation_for2">Department</label>
                            </div>


                </div>
                <div class="form-group col-md-3">
                    <label class="form-label">Unit Price</label>
                    <input name="default_unit_price" readonly id="default_unit_price" type="text" value="{{$default_unit_price}}" class="form-control">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputState" class="form-label">Request Qty </label>
                    <input name="request_qty" readonly id="request_qty" type="text" value="{{$request_qty}}" class="form-control">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputState" class="form-label">Total Amount </label>
                    <input name="request_qty" readonly id="request_qty" type="text" value="{{number_format($request_qty*$default_unit_price,2)}}" class="form-control">
                </div>

            </div>




            <div class="form-group">
                <div class="table table-responsive">
                    <table class="table table-bordered">
                        <thead>
                        <tr style="text-align: center">
                            <td width="60%">Allocation Place <span class="required">*</span></td>
                            <td width="20%">Allocation Ratio(%) <span class="required">*</span></td>
                            <td width="20%">Allocation Amount </td>
                            <td width="10%">
                                <button type="button"
                                        class="btn btn-xs btn-primary add_new_allocation"><i
                                            class="fa fa-plus-circle"></i> Add More
                                </button>
                            </td>
                        </tr>
                        </thead>
                        <tbody id="allocation_area">
                        @if($allocate_stocks!='[]')

                            @foreach($allocate_stocks as $key =>$allocation)
                                <tr style="text-align: center">

                                    <td>
                                        <div class="col-sm-12 row">
                                        <div class="col-sm-6 text-left">
                                            <input type="hidden" class="ids" name="stock_allocation_id[]" value="{{$allocation->stock_allocation_id}}">
                                            {{$key==0?'Branch':''}} {{__combo('branchs', array('selected_value'=>$allocation->branchs_id,'attributes'=>array('name'=>'branchs_id[]','class'=>'form-control branchs')))}}
                                            <input type="hidden" class="br_ids" value="">
                                        </div>
                                        <div class="col-sm-6 departments text-left" style="{{isset($allocate_stocks[0])&&$allocate_stocks[0]->allocated_place_type == 'branch'?"display:none":''}}">
                                            {{$key==0?'Department':''}}{{__combo('departments', array('selected_value'=>$allocation->departments_id,'attributes'=>array('name'=>'departments_id[]','class'=>'form-control departments')))}}
                                        </div>
                                        </div>

                                    </td>
                                    <td><input name="allocation_ratio_p[]" class="form-control allocation_ratio_p" required min="1" max="100" pattern="[1-9]" type="number" value="{{ceil($allocation->allocation_ratio_p)}}"></td>
                                    <td><input name="allocation_ratio_amnt[]" class="form-control allocation_ratio_amnt" min="0" type="number" readonly="readonly" value="{{$allocation->allocation_ratio_amnt}}"></td>
                                    <td><button type="button" title="Allocation Remove"
                                                class="btn btn-danger btn-sm remove_allocation"><i
                                                    class="fa fa-times-circle"></i>
                                        </button></td>
                                </tr>
                            @endforeach
                        @else
                            <tr style="text-align: center">

                                <td>
                                    <div class="col-sm-12 row">
                                        <div class="col-sm-6 text-left">
                                            <input type="hidden" name="stock_allocation_id[]" value="">
                                            Branch {{__combo('branchs', array('selected_value'=>'','attributes'=>array('name'=>'branchs_id[]','class'=>'form-control branchs','required'=>'')))}}
                                            <input type="hidden" class="br_ids" value="">
                                        </div>
                                        <div class="col-sm-6 departments text-left" >
                                            Department {{__combo('departments', array('selected_value'=>'','attributes'=>array('name'=>'departments_id[]','class'=>'form-control departments')))}}
                                        </div>
                                    </div>

                                </td>
                                <td><input name="allocation_ratio_p[]" class="form-control allocation_ratio_p" required max="100" type="number" value="100"></td>
                                <td><input name="allocation_ratio_amnt[]" class="form-control allocation_ratio_amnt" required min="0" type="number" readonly="" value="{{$request_qty*$default_unit_price}}"></td>
                                <td><button type="button" title="Allocation Remove"
                                            class="btn btn-danger btn-sm remove_allocation"><i
                                                class="fa fa-times-circle"></i>
                                    </button></td>
                            </tr>
                        @endif

                        </tbody>
                    </table>
                </div>
                <div class="form-check form-check-inline">
                    <input name="allocation_for_all" type="checkbox" id="allocation_for_all" class="allocation_for_all" value="1">
                    <label class="form-check-label" for="allocation_for_all">Allocation Apply for All Products?</label>
                </div>
                <br>
                <br>
                <button class="btn btn-lg btn-primary " type="submit"><strong>Save</strong></button>

            </div>

        </div>
    </div>
    </form>
</div>

