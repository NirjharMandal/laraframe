<div class="modal-header">
    <link href="{{asset('public/css/plugins/dataTables/datatables.min.css')}}" rel="stylesheet">
    <script src="{{asset('public/js/plugins/dataTables/datatables.min.js')}}"></script>
    <script src="{{asset('public/js/plugins/dataTables/dataTables.bootstrap4.min.js')}}"></script>
    <script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
    <button type="button" class="close text-danger" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
    <h4 class="modal-title">Product List</h4>
</div>
<div class="modal-body">
    <div class="col-lg-12">
        <div class="row">
            <div class="col-lg-12">
                <div class="table table-responsive">
                    <table id="productList" class="table table-striped table-bordered table-hover dataTables-example">
                        <thead>
                        <tr>
                            <th style="width: 1%"></th>
                            <th>Product</th>
                            <th>Operational Group</th>
                            <th>Operational Type</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($products as $product)
                            <?php
                            if(in_array($product->products_id, $existing_product_ids)){
                                $checked = 'checked disabled';
                                $has_success = 'selected';
                            }else{
                                $checked = '';
                                $has_success = '';
                                }
                            ?>
                            <tr class="" data-id="{{$product->products_id}}">
                                <td>
                                    <div class="checkbox m-r-xs">
                                        <label for="checkbox1"></label>
                                        <input type="checkbox" {{$checked}} title="{{$product->products_name}}" id="checkbox1" class="item-selection" value="{{$product->products_id}}" name="input[]">
                                    </div>
                                </td>
                                <td>{{$product->products_name}}</td>
                                <td>{{$product->operational_group}}</td>
                                <td>{{$product->operational_type}}</td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal-footer">
    <span id="message-for-item-selection"></span><button type="button" class="btn btn-primary" id="selected-products">Add</button>
</div>

<script>
    $('#productList').dataTable();

</script>
