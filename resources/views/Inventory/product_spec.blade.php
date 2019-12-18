
<div class="modal-header">
    <button type="button" class="close text-danger" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
    <h4 class="modal-title">PRODUCT DETAILS</h4>
</div>
<div class="modal-body">
    <div class="row">
        <div class="col-lg-12">
            <div class="col-lg-12">
                <form action="{{url('save-stock-spec')}}" method="post" id="product-spec" autocomplete="off">
                    {{csrf_field()}}
                <div class="box-body">
                    <div class="form-group">
                        <h3>Specifications</h3>
                        <input name="products_id" id="products-id" type="hidden" value="" class="form-control">
                        <div class="table table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th align="center">Characteristics</th>
                                    <th align="center">Unit</th>
                                    <th align="center">Default Values</th>
                                    <th align="center">Analysis Value</th>
                                    <th align="right" width="5%">
                                        <button id="add-new-spec" type="button" class="btn btn-primary btn-xs pull-right"
                                                data-original-title="Add more controls"><i class="glyphicon glyphicon-plus-sign"></i>&nbsp;
                                            Add&nbsp;
                                        </button>
                                    </th>
                                </tr>
                                </thead>
                                <tbody id="TextBoxContainerForSpecification">
                                @if(empty($current_product_spec_standards))
                                    @foreach($product_spec_standards as $key=>$standard)
                                        <tr>
                                            <td>
                                                <input name="standards_name[]" type="text" placeholder="Characteristics" value="{{$standard->product_spec_standards_name}}" readonly class="form-control"/>
                                            </td>
                                            <td>
                                                <input name="spec_unit[]" type="text" placeholder="Unit" value="{{$standard->spec_unit}}" readonly class="form-control"/>
                                            </td>
                                            <td>
                                                <input name="default_spec[]" type="text" placeholder="Values" value="{{$standard->default_spec}}" readonly class="form-control"/>
                                            </td>
                                            <td>
                                                <input name="analysis_value[]" type="text" placeholder="Values" value="" class="form-control"/>
                                            </td>
                                            <td align="right">
                                                <button type="button" class="btn btn-danger btn-xs remove-spec"><i class="glyphicon glyphicon-remove-sign"></i></button>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                                @if($current_product_spec_standards)
                                    @foreach($current_product_spec_standards as $ckey=>$current_product_spec_standard)
                                        <tr>
                                            <td>
                                                <input name="standards_name[]" type="text" placeholder="Characteristics" value="{{$current_product_spec_standard->standards_name}}" readonly class="form-control"/>
                                            </td>
                                            <td>
                                                <input name="spec_unit[]" type="text" placeholder="Unit" value="{{$current_product_spec_standard->spec_unit}}" readonly class="form-control"/>
                                            </td>
                                            <td>
                                                <input name="default_spec[]" type="text" placeholder="Values" value="{{$current_product_spec_standard->default_spec}}" readonly class="form-control"/>
                                            </td>
                                            <td>
                                                <input name="analysis_value[]" type="text" placeholder="Values" value="{{$current_product_spec_standard->analysis_value}}" class="form-control"/>
                                            </td>
                                            <td align="right">
                                                <button type="button" class="btn btn-danger btn-xs remove-spec"><i class="glyphicon glyphicon-remove-sign"></i></button>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="form-group">
                        <h3>Others</h3>
                        <div class="table table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th align="center">Level</th>
                                    <th align="center">Values</th>
                                    <th align="right" width="5%">
                                        <button id="add-new-spec-others" type="button" class="btn btn-primary btn-xs pull-right"
                                                data-original-title="Add more controls"><i class="glyphicon glyphicon-plus-sign"></i>&nbsp;
                                            Add&nbsp;
                                        </button>
                                    </th>
                                </tr>
                                </thead>
                                <tbody id="TextBoxContainerForOtherInfo">
                                @if(empty($current_product_spec_others))
                                    @foreach($product_spec_others as $keys=>$other)
                                        <tr>
                                            <td>
                                                <input name="product_spec_others_name[]" type="text" placeholder="" value="{{$other->product_spec_others_name}}" readonly class="form-control"/>
                                            </td>
                                            <td>
                                                <input name="product_spec_others_value[]" type="text" placeholder="" value="{{$other->product_spec_others_value}}" readonly class="form-control"/>
                                            </td>
                                            <td align="right">
                                                <button type="button" class="btn btn-danger btn-xs remove-spec-others"><i class="glyphicon glyphicon-remove-sign"></i></button>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                                @if($current_product_spec_others)
                                    @foreach($current_product_spec_others as $ckeys=>$current_product_spec_other)
                                        <tr>
                                            <td>
                                                <input name="product_spec_others_name[]" type="text" placeholder="" value="{{$current_product_spec_other->product_spec_others_name}}" readonly class="form-control"/>
                                            </td>
                                            <td>
                                                <input name="product_spec_others_value[]" type="text" placeholder="" value="{{$current_product_spec_other->product_spec_others_value}}" readonly class="form-control"/>
                                            </td>
                                            <td align="right">
                                                <button type="button" class="btn btn-danger btn-xs remove-spec-others"><i class="glyphicon glyphicon-remove-sign"></i></button>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <button class="btn btn-lg btn-primary" type="submit"><strong>Save</strong></button>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal-footer">
</div>

<script>
    /*******Product Spec add to db*********/
    $("#product-spec").submit(function (e) {
        e.preventDefault();
        var specData = $(this).serialize() + '&stock_requisition_details_id=' + $('#stock_requisition_details_id').val();
        $.ajax({
            type: 'POST',
            cache: false,
            url: '<?php echo URL::to('save-stock-spec');?>',
            data: specData,
            success: function (data) {
                if (data.status == 'success') {
                    swalSuccess(data.message);
                    $('#large_modal').modal('hide');
                } else {
                    swalWarning('Check your form');
                }
            }
        });
    });
</script>
