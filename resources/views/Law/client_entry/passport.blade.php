<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"><i class="fa fa-hand-o-right"></i> Passport</h3>
<div id="collapseTwo" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="passport_form" enctype="multipart/form-data" action="{{url('save-passport-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <label class="form-label">Number</label>
                <input type="" name="passport_number" value="{{$user_data->passport_number ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Issue Date</label>
                <input type="" name="passport_issue_date" value="{{$user_data->passport_issue_date ?? ''}}" id="" class="form-control datepicker">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Expiry date</label>
                <input type="" name="passport_exp_date" value="{{$user_data->passport_exp_date ?? ''}}" id="" class="form-control datepicker">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Issue Entity</label>
                <input type="" name="passport_issue_entity" value="{{$user_data->passport_issue_entity ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Upload File</label>
                <div class="custom-file">
                    <input id="passport_attachment_path" type="file" class="custom-file-input" name="passport_attachment_path"/>
                    <label for="logo" class="btn btn-default custom-file-label text-left">{{isset($user_data->passport_attachment_path) && !empty($user_data->passport_attachment_path) ? substr(strrchr($user_data->passport_attachment_path, "/"), 1) : 'Choose File...'}}</label>
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