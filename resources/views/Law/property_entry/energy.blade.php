<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse9" aria-expanded="true" aria-controls="collapse9"><i class="fa fa-hand-o-right"></i> Energy certificate</h3>
<div id="collapse9" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="energy_form" enctype="multipart/form-data" action="{{url('save-energy-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <label class="form-label">Certificate number</label>
                <input type="" name="energy_certificate_number" value="{{$property_data->energy_certificate_number ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Technic number</label>
                <input type="" name="energy_certificate_technic_number" value="{{$property_data->energy_certificate_technic_number ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Technical name</label>
                <input type="" name="energy_certificate_technic_name" value="{{$property_data->energy_certificate_technic_name ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Issue date</label>
                <input type="" name="energy_certificate_issue_date" value="{{$property_data->energy_certificate_issue_date ?? ''}}" id="" class="form-control datepicker">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Expiry date</label>
                <input type="" name="energy_certificate_expiry_date" value="{{$property_data->energy_certificate_expiry_date ?? ''}}" id="" class="form-control datepicker">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Upload File</label>
                <div class="custom-file">
                    <input id="logo" type="file" class="custom-file-input" name="energy_certificate_attachment_path"/>
                    <label for="logo" class="btn btn-default custom-file-label text-left">
                        {{isset($property_data->energy_certificate_attachment_path) && !empty($property_data) ? 'Replace File...' : 'Choose File...'}}
                    </label>
                </div>
                <div class="help-block with-errors has-feedback"></div>
            </div>
            @if(isset($property_data->energy_certificate_attachment_path) && !empty($property_data))
                <div class="form-group col-md-3 pt-4 generalfilebox">
                    <a class="btn btn-xs btn-success"
                       href="{{asset('storage/attachment/'.$property_data->energy_certificate_attachment_path)}}" download target="_blank">
                        <i class="fa fa-download"></i> Download / View
                    </a>
                    <a class="btn btn-xs btn-danger delete_file_only" data-style="zoom-in"
                       data-id="{{$property_data->law_properties_id ?? ''}}"
                       data-pathcolumn="energy_certificate_attachment_path"
                       data-path="{{$property_data->energy_certificate_attachment_path ?? ''}}">
                        <i class="fa fa-trash"></i> Delete File
                    </a>
                </div>
            @endif
        </div>
        <div class="row">
            <div class="col-md-3">
                <button class="btn btn-info submit_button" data-style="zoom-in"><i class="fa fa-edit"></i> SAVE</button>
            </div>
        </div>
    </form>
</div>
