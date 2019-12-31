<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse3" aria-expanded="true" aria-controls="collapse3"><i class="fa fa-hand-o-right"></i> Building municipal Tax</h3>
<div id="collapse3" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="municipal_form" enctype="multipart/form-data" action="{{url('save-municipal-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <input type="" name="building_municipal_tax" value="{{$property_data->building_municipal_tax ?? ''}}" id="" class="form-control">
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
