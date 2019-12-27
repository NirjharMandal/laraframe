<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"><i class="fa fa-hand-o-right"></i> Citizen card</h3>
<div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="citizen_form" enctype="multipart/form-data" action="{{url('save-citizen-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <label class="form-label">Number</label>
                <input type="" name="citizen_card_number" value="{{$user_data->citizen_card_number ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Expiry date</label>
                <input type="" name="citizen_card_exp_date" value="{{$user_data->citizen_card_exp_date ?? ''}}" id="" class="form-control datepicker">
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