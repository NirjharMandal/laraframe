<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse4" aria-expanded="true" aria-controls="collapse4"><i class="fa fa-hand-o-right"></i> Legal representatives</h3>
<div id="collapse4" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="legal_form" enctype="multipart/form-data" action="{{url('save-legal-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3 legal_card">
                <label class="form-label">Citizen card number</label>
                <input type="" name="citizen_card_number[]" value="" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3 legal_file">
                <label class="form-label">Upload File</label>
                <div class="custom-file">
                    <input id="logo" type="file" class="custom-file-input" name="legal_representative_attachemnt_path[]"/>
                    <label for="logo" class="btn btn-default custom-file-label text-left">Choose file...</label>
                </div>
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="col-md-3">
                <a class="btn btn-xs btn-warning legal_add mt-4" data-style="zoom-in"><i class="fa fa-plus-circle"></i> Add Another</a>
            </div>
        </div>
        <div class="legalhtml"></div>
        <div class="col-md-12 row">
            @if(isset($legal_data) && !empty($legal_data))
                <table class="table table-hover" style="width: 50%">
                    <tbody>
                        @foreach($legal_data as $lg_data)
                            <tr id="legal_old_{{$lg_data->law_app_users_legal_representative_id}}">
                                <td class="py-2" width="1%"><i class="fa fa-files-o"></i></td>
                                <td class="py-2" width="90%">{{$lg_data->citizen_card_number}}</td>
                                <td class="py-2">
                                    <a class="btn btn-xs btn-success"
                                       href="{{asset('storage/attachment/'.$lg_data->legal_representative_attachemnt_path)}}" download target="_blank">
                                        <i class="fa fa-download"></i> Download / View
                                    </a>
                                </td>
                                <td class="py-2"><a class="btn btn-xs btn-danger remove_legal_file"
                                       data-style="zoom-in" data-id="{{$lg_data->law_app_users_legal_representative_id}}"
                                       data-path="{{$lg_data->legal_representative_attachemnt_path}}"><i class="fa fa-minus-circle"></i> Remove</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                @endif
        </div>
        <div class="row">
            <div class="col-md-3">
                <button class="btn btn-info submit_info" data-style="zoom-in"><i class="fa fa-edit"></i> SAVE</button>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
    $('.remove_legal_file').on('click', function (e) {
        e.preventDefault();
        Ladda.bind(this);
        var load = $(this).ladda();
        var legal_id = $(this).data('id');
        var path = $(this).data('path');
        var url = "{{url('remove-file-record')}}";
        swalConfirm('Are You sure to delete this file?').then(function (s) {
            if(s.value){
                var data = {
                    table: 'law_app_users_legal_representative',
                    key: 'law_app_users_legal_representative_id',
                    value: legal_id,
                    removerow: 1,
                    pathvalue: path
                };
                makeAjaxPost(data, url, load).done(function(sresult){
                    $('#legal_old_'+legal_id).remove();
                    swalSuccess('Deleted Successfully');
                });
            }
        });
    });
    $(document).ready(function(){
        var legalhtml = '<div class="row">';
        legalhtml += '<div class="form-group col-md-3">'+$('.legal_card').html()+'</div>';
        legalhtml += '<div class="form-group col-md-3">'+$('.legal_file').html()+'</div>';
        legalhtml += '<div class="form-group col-md-3"><button class="btn btn-xs btn-danger legal_remove mt-4" data-style="zoom-in"><i class="fa fa-minus-circle"></i> Remove</button></div>';
        legalhtml += '</div>';
        var x = 1;
        $('.legal_add').click(function(){
            if(x < 10){
                x++;
                $('.legalhtml').append(legalhtml);
            }
            $('#legal_form').validator('update');
        });
        $('.legalhtml').on('click', '.legal_remove', function(e){
            e.preventDefault();
            $(this).parent('div').parent('div').remove();
            x--;
        });
    });
</script>
