<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapseThreeTwo" aria-expanded="true" aria-controls="collapseThreeTwo"><i class="fa fa-hand-o-right"></i> Annexed documents</h3>
<div id="collapseThreeTwo" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="annexed_form" enctype="multipart/form-data" action="{{url('save-annexed-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <label class="form-label">Upload File</label>
                <div class="custom-file">
                    <input id="logo" type="file" class="custom-file-input" name="annexed_document_attachment_path"/>
                    <label for="logo" class="btn btn-default custom-file-label text-left"><i class="fa fa-paperclip"></i> File...</label>
                </div>
                <div class="help-block with-errors has-feedback"></div>
            </div>
            @if(isset($contract_data->annexed_document_attachment_path) && !empty($contract_data))
                <div class="form-group col-md-3 pt-4 ">
                    <div class="btn-group generalfilebox" role="group" aria-label="">
                        <a class="btn btn-sm btn-success"
                           href="{{asset('storage/attachment/'.$contract_data->annexed_document_attachment_path)}}" download target="_blank">
                            <i class="fa fa-download"></i> Download / View
                        </a>
                        <a class="btn btn-sm btn-danger delete_file_only text-white" data-style="zoom-in"
                           data-id="{{$contract_data->law_contract_id ?? ''}}"
                           data-pathcolumn="annexed_document_attachment_path"
                           data-path="{{$contract_data->annexed_document_attachment_path ?? ''}}">
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
