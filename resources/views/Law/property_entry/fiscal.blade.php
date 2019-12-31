<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse6" aria-expanded="true" aria-controls="collapse6"><i class="fa fa-hand-o-right"></i> Fiscal Registry Certificate</h3>
<div id="collapse6" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="fiscal_form" enctype="multipart/form-data" action="{{url('save-fiscal-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <label class="form-label">Financial services</label>
                <input type="" name="fiscal_reg_certificate_finance_service" value="{{$property_data->fiscal_reg_certificate_finance_service ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Matricial article</label>
                <input type="" name="fiscal_reg_certificate_matricial_article" value="{{$property_data->fiscal_reg_certificate_matricial_article ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Village name</label>
                <input type="" name="fiscal_reg_certificate_village_name" value="{{$property_data->fiscal_reg_certificate_village_name ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Value</label>
                <input type="" name="fiscal_reg_certificate_value" value="{{$property_data->fiscal_reg_certificate_value ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Upload File</label>
                <div class="custom-file">
                    <input id="logo" type="file" class="custom-file-input" name="fiscal_reg_certificate_attachment_path"/>
                    <label for="logo" class="btn btn-default custom-file-label text-left">
                        {{isset($property_data->fiscal_reg_certificate_attachment_path) && !empty($property_data) ? 'Replace File...' : 'Choose File...'}}
                    </label>
                </div>
                <div class="help-block with-errors has-feedback"></div>
            </div>
            @if(isset($property_data->fiscal_reg_certificate_attachment_path) && !empty($property_data))
                <div class="form-group col-md-3 pt-4 generalfilebox">
                    <a class="btn btn-xs btn-success"
                       href="{{asset('storage/attachment/'.$property_data->fiscal_reg_certificate_attachment_path)}}" download target="_blank">
                        <i class="fa fa-download"></i> Download / View
                    </a>
                    <a class="btn btn-xs btn-danger delete_file_only" data-style="zoom-in"
                       data-id="{{$property_data->law_properties_id ?? ''}}"
                       data-pathcolumn="fiscal_reg_certificate_attachment_path"
                       data-path="{{$property_data->fiscal_reg_certificate_attachment_path ?? ''}}">
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
