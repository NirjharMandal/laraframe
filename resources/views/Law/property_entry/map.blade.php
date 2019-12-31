<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse5" aria-expanded="true" aria-controls="collapse5"><i class="fa fa-hand-o-right"></i> Google maps location</h3>
<div id="collapse5" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="map_form" enctype="multipart/form-data" action="{{url('save-map-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <label class="form-label">Latitude</label>
                <input type="" name="google_map_lat" value="{{$property_data->google_map_lat ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Longitude</label>
                <input type="" name="google_map_long" value="{{$property_data->google_map_long ?? ''}}" id="" class="form-control">
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
