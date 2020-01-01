<form class="" id="basic_info" enctype="multipart/form-data" action="{{url('save-contract-info')}}" method="post">
    <div class="row pb-2">
        <div class="form-group col-md-4">
            <label class="form-label">Select Buyer</label>
            <?php
            $buyer_param = array(
                'selected_value' => '',
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
            $seller_param = array(
                'selected_value' => '',
                'attributes' => Array(
                    'class' => 'multi'
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
                    'class' => 'multi'
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
                $('.multi').multiselect({
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
            x--;
        });
    });

/*    $('.remove_burden_file').on('click', function (e) {
        e.preventDefault();
        Ladda.bind(this);
        var load = $(this).ladda();
        var pk_value = $(this).data('id');
        var path = $(this).data('path');
        var url = "{{url('remove-file-record')}}";
        swalConfirm('Are You sure to delete this file?').then(function (s) {
            if(s.value){
                var data = {
                    table: 'law_properties_burden_of_property',
                    key: 'law_properties_burden_of_property_id',
                    value: pk_value,
                    removerow: 1,
                    pathvalue: path
                };
                makeAjaxPost(data, url, load).done(function(sresult){
                    $('#record_'+pk_value).remove();
                    swalSuccess('Deleted Successfully');
                });
            }
        });
    });*/
</script>
