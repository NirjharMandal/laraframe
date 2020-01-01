<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse4" aria-expanded="true" aria-controls="collapse4"><i class="fa fa-hand-o-right"></i> Burden of property</h3>
<div id="collapse4" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="burden_form" enctype="multipart/form-data" action="{{url('save-burden-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3 brdn_bank">
                <label class="form-label">Bank</label>
                <input type="" name="law_properties_burden_bank[]" value="" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3 brdn_prsnt">
                <label class="form-label">Number and date of presentation</label>
                <input type="" name="number_n_date_of_presentation[]" value="" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3 brdn_file">
                <label class="form-label">Upload File</label>
                <div class="custom-file">
                    <input id="" type="file" class="custom-file-input" name="burden_attachment_path[]"/>
                    <label for="" class="btn btn-default custom-file-label text-left"><i class="fa fa-paperclip"></i> File...</label>
                </div>
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="col-md-3">
                <a class="btn btn-xs btn-warning brdn_add mt-4" data-style="zoom-in"><i class="fa fa-plus-circle"></i> Add More</a>
            </div>
        </div>
        <div class="brdnhtml"></div>
        <div class="col-md-12 row">
            @if(isset($burden_data) && !empty($burden_data))
                <table class="table table-hover" style="width: 80%">
                    <tbody>
                        @foreach($burden_data as $brd_data)
                            <tr id="record_{{$brd_data->law_properties_burden_of_property_id}}">
                                <td class="py-2" width="1%" style="padding: 10px !important;"><i class="fa fa-file"></i></td>
                                <td class="py-2" width="50%">{{$brd_data->law_properties_burden_bank}}</td>
                                <td class="py-2" width="40%">{{$brd_data->number_n_date_of_presentation}}</td>
                                <td class="py-2">
                                    <a class="btn btn-xs btn-success"
                                       href="{{asset('storage/attachment/'.$brd_data->burden_attachment_path)}}" download target="_blank">
                                        <i class="fa fa-download"></i> Download / View
                                    </a>
                                </td>
                                <td class="py-2">
                                    <a class="btn btn-xs btn-danger remove_burden_file"
                                        data-style="zoom-in" data-id="{{$brd_data->law_properties_burden_of_property_id}}"
                                        data-path="{{$brd_data->burden_attachment_path}}"><i class="fa fa-minus-circle"></i> Remove
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            @endif
        </div>
        <div class="row">
            <div class="col-md-3">
                <button class="btn btn-info submit_button" data-style="zoom-in"><i class="fa fa-edit"></i> SAVE</button>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
    $('.remove_burden_file').on('click', function (e) {
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
    });
    $(document).ready(function(){
        var brdnhtml = '<div class="row">';
        brdnhtml += '<div class="form-group col-md-3">'+$('.brdn_bank').html()+'</div>';
        brdnhtml += '<div class="form-group col-md-3">'+$('.brdn_prsnt').html()+'</div>';
        brdnhtml += '<div class="form-group col-md-3">'+$('.brdn_file').html()+'</div>';
        brdnhtml += '<div class="form-group col-md-3"><button class="btn btn-xs btn-danger brdn_remove mt-4" data-style="zoom-in"><i class="fa fa-minus-circle"></i> Remove</button></div>';
        brdnhtml += '</div>';
        var x = 1;
        $('.brdn_add').click(function(){
            if(x < 10){
                x++;
                $('.brdnhtml').append(brdnhtml);
            }
        });
        $('.brdnhtml').on('click', '.brdn_remove', function(e){
            e.preventDefault();
            $(this).parent('div').parent('div').remove();
            x--;
        });
    });
</script>
