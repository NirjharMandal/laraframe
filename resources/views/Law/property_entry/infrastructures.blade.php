<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse11" aria-expanded="true" aria-controls="collapse11"><i class="fa fa-hand-o-right"></i> Infrastructures certification</h3>
<div id="collapse11" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="infrastructures_form" enctype="multipart/form-data" action="{{url('save-infrastructures-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <label class="form-label">Infrastructures certification</label>
                <input type="" name="infrastructures_certificate" value="{{$property_data->infrastructures_certificate ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <button class="btn btn-info submit_button" data-style="zoom-in"><i class="fa fa-edit"></i> SAVE</button>
            </div>
        </div>
    </form>
</div>
