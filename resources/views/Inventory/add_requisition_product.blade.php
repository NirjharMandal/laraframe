    @if(!empty($products))
        @foreach($products as $product)
    <table id="product-{{$product->products_id}}" data-product_id="{{$product->products_id}}" class="table table-bordered items">
        <thead>
        <tr>
            <th style="vertical-align: middle">{{$product->products_name}}<input type="hidden" name="product_id[]" value="{{$product->products_id}}"/> </th>
            <th style="text-align: center;">
                <div class="form-group">
                    <textarea class="form-control" name="product_spec[]" placeholder="Spec"></textarea>
                </div>

            </th>
            <th style="text-align: center;">
                <div class="form-group">

                    <input type="number" class="form-control" id="requisition_qty" required
                           name="requisition_qty[]" placeholder="Requisition Qty *">
                </div>

            </th>

            <th width="100">
                <button type="button"
                        class="btn btn-danger remove_product pull-right"><i
                            class="fa fa-trash"></i>
                </button>
            </th>
        </tr>
        <tr style="text-align: center">
            <td width="30%">Allocation For <span class="required">*</span></td>
            <td width="30%">Allocation Place <span class="required">*</span></td>
            <td width="20%">Allocation Ratio <span class="required">*</span></td>
            <td width="10%">
                <button type="button" data-product_id="{{$product->products_id}}"
                        class="btn btn-xs btn-primary add_new_allocation"><i
                            class="fa fa-plus-circle"></i> Add More
                </button>
            </td>
        </tr>
        </thead>
        <tbody class="product_allocation">

        <tr class="tr_{{$product->products_id}}">
            <td>
                <select name="allocation_for[]" class="form-control allocation_for" required>
                    <option value="">Select Option</option>
                    <option value="user">Person</option>
                    <option value="warehouse">Warehouse</option>
                    <option value="department">Department</option>
                </select>
                <div class="help-block with-errors has-feedback"></div>
            </td>
            <td>
                    <select class="form-control persons allocation_place" name="user_id[]">
                        <option value="">Select Person</option>
                        @if(!empty($users))
                            @foreach($users as $user):
                            <option value="{{$user->id}}">{{$user->name}}</option>
                            @endforeach;
                        @endif;
                    </select>
                    {{__combo('warehouses', array('selected_value'=>'','attributes'=>array('name'=>'warehouse_id[]','class'=>'form-control warehouses allocation_place')))}}
                    {{__combo('departments', array('selected_value'=>'','attributes'=>array('name'=>'department_id[]','class'=>'form-control departments allocation_place')))}}

            </td>
            <td>
                <input type="number" min="0" max="100" pattern="[^\d*(\.\d{0,2})?$]" name="allocation_ratio[]"
                       class="form-control" required>
            </td>
            <td style="text-align: center">
                <button type="button" title="Allocation Remove"
                        class="btn btn-danger btn-sm remove_allocation"><i
                            class="fa fa-times-circle"></i>
                </button>
            </td>
        </tr>
        </tbody>
    </table>
        @endforeach
        @endif
