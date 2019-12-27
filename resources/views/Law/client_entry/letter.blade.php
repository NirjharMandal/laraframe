<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse5" aria-expanded="true" aria-controls="collapse5"><i class="fa fa-hand-o-right"></i> Letter of attorney</h3>
<div id="collapse5" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="letter_form" enctype="multipart/form-data" action="{{url('save-letter-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <label class="form-label">Upload File</label>
                <div class="custom-file">
                    <input id="logo" type="file" class="custom-file-input" name="letter_attorney_attachment_path"/>
                    <label for="logo" class="btn btn-default custom-file-label text-left">
                        {{isset($user_data->letter_attorney_attachment_path) && !empty($user_data->letter_attorney_attachment_path)
                            ? substr(strrchr($user_data->letter_attorney_attachment_path, "/"), 1)
                            : 'Choose File...'}}
                    </label>
                </div>
                <div class="help-block with-errors has-feedback"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <button class="btn btn-info submit_info" data-style="zoom-in">SAVE ENTRY</button>
            </div>
        </div>
    </form>
</div>