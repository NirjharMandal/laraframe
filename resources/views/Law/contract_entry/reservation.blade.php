<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"><i class="fa fa-hand-o-right"></i> Reservation agreement</h3>
<div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="reservation_form" enctype="multipart/form-data" action="{{url('save-reservation-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <label class="form-label">Reservation date</label>
                <input type="" name="reservation_agreement_date" value="{{$contract_data->reservation_agreement_date ?? ''}}" id="" class="form-control datepicker">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Upload File</label>
                <div class="custom-file">
                    <input id="logo" type="file" class="custom-file-input" name="reservation_agreement_attachment_path"/>
                    <label for="logo" class="btn btn-default custom-file-label text-left"><i class="fa fa-paperclip"></i> File...</label>
                </div>
                <div class="help-block with-errors has-feedback"></div>
            </div>
            @if(isset($contract_data->reservation_agreement_attachment_path) && !empty($contract_data))
                <div class="form-group col-md-3 pt-4 ">
                    <div class="btn-group generalfilebox" role="group" aria-label="">
                        <a class="btn btn-sm btn-success"
                           href="{{asset('storage/attachment/'.$contract_data->reservation_agreement_attachment_path)}}" download target="_blank">
                            <i class="fa fa-download"></i> Download / View
                        </a>
                        <a class="btn btn-sm btn-danger delete_file_only text-white" data-style="zoom-in"
                           data-id="{{$contract_data->law_contract_id ?? ''}}"
                           data-pathcolumn="reservation_agreement_attachment_path"
                           data-path="{{$contract_data->reservation_agreement_attachment_path ?? ''}}">
                            <i class="fa fa-trash"></i> Delete File
                        </a>
                    </div>
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
