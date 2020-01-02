<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"><i class="fa fa-hand-o-right"></i> Deal details</h3>
<div id="collapseTwo" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="deal_info" enctype="multipart/form-data" action="{{url('save-deal-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <label class="form-label">Buying value</label>
                <input type="number" step="0.01" name="deal_buying_value" value="{{$contract_data->deal_buying_value ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Initial payment</label>
                <input type="number" step="0.01" name="deal_initial_payment" value="{{$contract_data->deal_initial_payment ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Conclusion Limit date</label>
                <input type="" name="deal_conc_limit_date" value="{{$contract_data->deal_conc_limit_date ?? ''}}" id="" class="form-control datepicker">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Notes</label>
                <textarea type="" name="deal_notes" id="" class="form-control" rows="1">{{$contract_data->deal_notes ?? ''}}</textarea>
                <div class="help-block with-errors has-feedback"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <button class="btn btn-info submit_info" data-style="zoom-in"><i class="fa fa-edit"></i> SAVE</button>
            </div>
        </div>
    </form>
</div>
