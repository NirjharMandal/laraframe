<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse5" aria-expanded="true" aria-controls="collapse5"><i class="fa fa-hand-o-right"></i> Letter of attorney</h3>
<div id="collapse5" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="letter_form" enctype="multipart/form-data" action="{{url('save-letter-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <label class="form-label">Upload File</label>
                <div class="custom-file">
                    <input id="logo" type="file" class="custom-file-input" name="letter_attorney_attachment_path"/>
                    <label for="logo" class="btn btn-default custom-file-label text-left">
                        {!! isset($user_data->letter_attorney_attachment_path) && !empty($user_data->letter_attorney_attachment_path)
                            ? '<i class="fa fa-paperclip"></i> File...'
                            : '<i class="fa fa-paperclip"></i> File...' !!}
                    </label>
                </div>
                <div class="help-block with-errors has-feedback"></div>
            </div>
            @if(isset($user_data->letter_attorney_attachment_path) && !empty($user_data->letter_attorney_attachment_path))
                <div class="form-group col-md-3 pt-4 generalfilebox">
                    <a class="btn btn-sm btn-success"
                       href="{{asset('storage/attachment/'.$user_data->letter_attorney_attachment_path)}}" download target="_blank">
                        <i class="fa fa-download"></i> Download / View
                    </a>
                    <a class="btn btn-sm btn-danger delete_file_only" data-style="zoom-in"
                       data-id="{{$user_data->law_app_users_id ?? ''}}"
                       data-pathcolumn="letter_attorney_attachment_path"
                       data-path="{{$user_data->letter_attorney_attachment_path ?? ''}}">
                        <i class="fa fa-trash"></i> Delete File
                    </a>
                </div>
            @endif
        </div>
        <div class="row">
            <div class="col-md-3">
                <button class="btn btn-info submit_info" data-style="zoom-in"><i class="fa fa-edit"></i> SAVE</button>
            </div>
        </div>
    </form>
</div>
