<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapse1"><i class="fa fa-hand-o-right"></i> Land Registry Certificate</h3>
<div id="collapse1" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="land_form" enctype="multipart/form-data" action="{{url('save-land-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <label class="form-label">Conservatory</label>
                <input type="" name="land_reg_certificate_conservatory" value="{{$property_data->land_reg_certificate_conservatory ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Building description</label>
                <input type="" name="land_reg_certificate_building_description" value="{{$property_data->land_reg_certificate_building_description ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">County</label>
                <input type="" name="land_reg_certificate_county" value="{{$property_data->land_reg_certificate_county ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">House Number</label>
                <input type="" name="land_reg_certificate_house_number" value="{{$property_data->land_reg_certificate_house_number ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Provisory Acquisition Request</label>
                <input type="" name="land_reg_certificate_provisory_acq_request" value="{{$property_data->land_reg_certificate_provisory_acq_request ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Provisory Acquisition Mortage</label>
                <input type="" name="land_reg_certificate_provisory_acq_mortage" value="{{$property_data->land_reg_certificate_provisory_acq_mortage ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Upload File</label>
                <div class="custom-file">
                    <input id="logo" type="file" class="custom-file-input" name="land_reg_certificate_attachment_path"/>
                    <label for="logo" class="btn btn-default custom-file-label text-left">
                        {!! isset($property_data->land_reg_certificate_attachment_path) && !empty($property_data) ? '<i class="fa fa-paperclip"></i> File...' : '<i class="fa fa-paperclip"></i> File...' !!}
                    </label>
                </div>
                <div class="help-block with-errors has-feedback"></div>
            </div>
            @if(isset($property_data->land_reg_certificate_attachment_path) && !empty($property_data))
                <div class="form-group col-md-3 pt-4 ">
                    <div class="btn-group generalfilebox" role="group" aria-label="">
                        <a class="btn btn-xs btn-success"
                           href="{{asset('storage/attachment/'.$property_data->land_reg_certificate_attachment_path)}}" download target="_blank">
                            <i class="fa fa-download"></i> Download / View
                        </a>
                        <a class="btn btn-xs btn-danger delete_file_only text-white" data-style="zoom-in"
                           data-id="{{$property_data->law_properties_id ?? ''}}"
                           data-pathcolumn="land_reg_certificate_attachment_path"
                           data-path="{{$property_data->land_reg_certificate_attachment_path ?? ''}}">
                            <i class="fa fa-trash"></i> Delete File
                        </a>
                    </div>
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
