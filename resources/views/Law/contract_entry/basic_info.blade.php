<form class="" id="basic_form" enctype="multipart/form-data" action="{{url('save-contract-info')}}" method="post">
    <div class="row pb-2">
        <div class="form-group col-md-4">
            <label class="form-label">Select Buyer</label>
            <?php
                $buyer_id = $contract_data->buyer_id ?? '';
                $buyer_param = array(
                    'selected_value' => $buyer_id,
                    'attributes' => Array(
                        'class' => 'multi'
                    )
                );
            ?>
            {{__combo('buyer-list', $buyer_param)}}
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="form-group col-md-4">
            <label class="form-label">Select Seller</label>
            <?php
                $seller_id = $contract_data->seller_id ?? '';
                $seller_param = array(
                    'selected_value' => $seller_id,
                    'attributes' => Array(
                        'class' => 'multi',
                        'required' => 'required'
                    )
                );
            ?>
            {{__combo('seller-list', $seller_param)}}
            <div class="help-block with-errors has-feedback"></div>
        </div>
    </div>
    <div class="row py-2 b-t">
        <div class="form-group col-md-8 contr_prop">
            <label class="form-label">Select Property</label>
            <?php

            $data_param = array(
                'selected_value' => '',
                'name' => 'law_properties_id[]',
                'attributes' => Array(
                    'class' => 'multi re_multi'
                    )
                );
            ?>
            {{__combo('property-list', $data_param)}}
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="form-group col-md-3 contr_price">
            <label class="form-label">Price</label>
            <input type="" name="price[]" value="" id="" class="form-control">
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="form-group col-md-2 contr_water">
            <label class="form-label">Water Contract</label>
            <div class="custom-file">
                <input id="logo" type="file" class="custom-file-input" name="water_attachment_path[]"/>
                <label for="logo" class="btn btn-default custom-file-label text-left"><i class="fa fa-paperclip"></i> File...</label>
            </div>
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="form-group col-md-2 contr_electricity">
            <label class="form-label">Electricity Contract</label>
            <div class="custom-file">
                <input id="logo" type="file" class="custom-file-input" name="electricity_attachment_path[]"/>
                <label for="logo" class="btn btn-default custom-file-label text-left"><i class="fa fa-paperclip"></i> File...</label>
            </div>
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="form-group col-md-2 contr_gas">
            <label class="form-label">Gas Contract</label>
            <div class="custom-file">
                <input id="logo" type="file" class="custom-file-input" name="gas_attachment_path[]"/>
                <label for="logo" class="btn btn-default custom-file-label text-left"><i class="fa fa-paperclip"></i> File...</label>
            </div>
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="form-group col-md-2 contr_tv">
            <label class="form-label">Tv/Internet Contract</label>
            <div class="custom-file">
                <input id="logo" type="file" class="custom-file-input" name="tv_internet_attachment_path[]"/>
                <label for="logo" class="btn btn-default custom-file-label text-left"><i class="fa fa-paperclip"></i> File...</label>
            </div>
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="col-md-1">
            <a class="btn btn-xs btn-warning contr_add mt-4" data-style="zoom-in"><i class="fa fa-plus-circle"></i> Add More</a>
        </div>
    </div>
    <div class="contr_html"></div>
    @if(isset($property_data) && !empty($property_data->toArray()))
        <div class="col-md-12 row py-2 b-t">
            <table class="table table-hover table-bordered" style="width: 100%">
                <thead>
                <tr>
                    <th class="text-center">Property Info</th>
                    <th class="text-center">Price</th>
                    <th class="text-center"><i class="fa fa-files-o"></i> Water</th>
                    <th class="text-center"><i class="fa fa-files-o"></i> Electricity</th>
                    <th class="text-center"><i class="fa fa-files-o"></i> Gas</th>
                    <th class="text-center"><i class="fa fa-files-o"></i> TV/Internet</th>
                    <th class="text-center"></th>
                </tr>
                </thead>
                <tbody>
                @foreach($property_data as $property)
                    <tr id="record_{{$property->law_contract_property_id}}">
                        <td class="py-2" style="">
                            <b>{{$property->law_properties_name}}</b><br/>{{$property->property_description}}
                        </td>
                        <td class="py-2 text-right" style="width: 10%">{{$property->price}}</td>
                        <td class="text-center py-2" style="width: 10%">
                            @if(!empty($property->water_attachment_path))
                                <div class="btn-group" role="group" aria-label="">
                                    <a class="btn btn-xs btn-success"
                                       href="{{asset('storage/attachment/'.$property->water_attachment_path)}}" download target="_blank">
                                        <i class="fa fa-download"></i> View
                                    </a>
                                    <a class="btn btn-xs btn-danger text-white delete_file_only property_file"
                                       data-style="zoom-in"
                                       data-table="law_contract_property"
                                       data-key="law_contract_property_id"
                                       data-id="{{$property->law_contract_property_id}}"
                                       data-pathcolumn="water_attachment_path"
                                       data-path="{{$property->water_attachment_path}}">
                                        <i class="fa fa-trash"></i> Remove
                                    </a>
                                </div>
                            @else
                                N/A
                            @endif
                        </td>
                        <td class="text-center py-2" style="width: 10%">
                            @if(!empty($property->electricity_attachment_path))
                                <div class="btn-group" role="group" aria-label="">
                                    <a class="btn btn-xs btn-success"
                                       href="{{asset('storage/attachment/'.$property->electricity_attachment_path)}}" download target="_blank">
                                        <i class="fa fa-download"></i> View
                                    </a>
                                    <a class="btn btn-xs btn-danger text-white delete_file_only property_file"
                                       data-style="zoom-in"
                                       data-table="law_contract_property"
                                       data-key="law_contract_property_id"
                                       data-id="{{$property->law_contract_property_id}}"
                                       data-pathcolumn="electricity_attachment_path"
                                       data-path="{{$property->electricity_attachment_path}}">
                                        <i class="fa fa-trash"></i> Remove
                                    </a>
                                </div>
                            @else
                                N/A
                            @endif
                        </td>
                        <td class="text-center py-2" style="width: 10%">
                            @if(!empty($property->gas_attachment_path))
                                <div class="btn-group" role="group" aria-label="">
                                    <a class="btn btn-xs btn-success"
                                       href="{{asset('storage/attachment/'.$property->gas_attachment_path)}}" download target="_blank">
                                        <i class="fa fa-download"></i> View
                                    </a>
                                    <a class="btn btn-xs btn-danger text-white delete_file_only property_file"
                                       data-style="zoom-in"
                                       data-table="law_contract_property"
                                       data-key="law_contract_property_id"
                                       data-id="{{$property->law_contract_property_id}}"
                                       data-pathcolumn="gas_attachment_path"
                                       data-path="{{$property->gas_attachment_path}}">
                                        <i class="fa fa-trash"></i> Remove
                                    </a>
                                </div>
                            @else
                                N/A
                            @endif
                        </td>
                        <td class="text-center py-2" style="width: 12%">
                            @if(!empty($property->tv_internet_attachment_path))
                                <div class="btn-group" role="group" aria-label="">
                                    <a class="btn btn-xs btn-success"
                                       href="{{asset('storage/attachment/'.$property->tv_internet_attachment_path)}}" download target="_blank">
                                        <i class="fa fa-download"></i> View
                                    </a>
                                    <a class="btn btn-xs btn-danger text-white delete_file_only property_file"
                                       data-style="zoom-in"
                                       data-table="law_contract_property"
                                       data-key="law_contract_property_id"
                                       data-id="{{$property->law_contract_property_id}}"
                                       data-pathcolumn="tv_internet_attachment_path"
                                       data-path="{{$property->tv_internet_attachment_path}}">
                                        <i class="fa fa-trash"></i> Remove
                                    </a>
                                </div>
                            @else
                                N/A
                            @endif
                        </td>
                        <td class="text-center" style="width: 1%">
                            <a class="btn btn-xs btn-danger text-white delete_file_only row_rm"
                               data-style="zoom-in"
                               data-table="law_contract_property"
                               data-key="law_contract_property_id"
                               data-id="{{$property->law_contract_property_id}}">
                                <i class="fa fa-minus-square"></i> Delete
                            </a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    @endif
    <div class="row mt-2">
        <div class="col-md-3">
            <button class="btn btn-info submit_basic" data-style="zoom-in"><i class="fa fa-save"></i> Create Contract</button>
        </div>
    </div>
</form>
<script>
    $(document).ready(function(){
        var contr_html = '<div class="row py-2 b-t">';
        contr_html += '<div class="form-group col-md-8">'+$('.contr_prop').html()+'</div>';
        contr_html += '<div class="form-group col-md-3">'+$('.contr_price').html()+'</div>';
        contr_html += '<div class="form-group col-md-2">'+$('.contr_water').html()+'</div>';
        contr_html += '<div class="form-group col-md-2">'+$('.contr_electricity').html()+'</div>';
        contr_html += '<div class="form-group col-md-2">'+$('.contr_gas').html()+'</div>';
        contr_html += '<div class="form-group col-md-2">'+$('.contr_tv').html()+'</div>';
        contr_html += '<div class="form-group col-md-1"><button class="btn btn-xs btn-danger contr_remove mt-4" data-style="zoom-in"><i class="fa fa-minus-circle"></i> Remove</button></div>';
        contr_html += '</div>';
        var x = 1;
        $('.contr_add').click(function(){
            if(x < 10){
                x++;
                $('.contr_html').append(contr_html);
                $('.re_multi').multiselect({
                    enableHTML: true,
                    buttonWidth: '100%',
                    // enableFiltering: true,
                    filterPlaceholder: 'Search',
                    enableCaseInsensitiveFiltering : true,
                    includeSelectAllOption: true,
                    nonSelectedText: 'Choose an option!',
                    templates: {
                        filter: '<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span><input class="form-control multiselect-search" type="text"></div>',
                        li: '<li class=""><a tabindex="0"><label class="multi-checkbox"></label></a></li>'
                    },
                    dropRight: true,
                    maxHeight: 300
                });
            }
        });
        $('.contr_html').on('click', '.contr_remove', function(e){
            e.preventDefault();
            $(this).parent('div').parent('div').remove();
        });
    });

</script>
