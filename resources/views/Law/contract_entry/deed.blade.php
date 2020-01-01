<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse4" aria-expanded="true" aria-controls="collapse4"><i class="fa fa-hand-o-right"></i> Deed</h3>
<div id="collapse4" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <div class="row py-2">
        <div class="form-group col-md-3">
            <label class="form-label">Deed date</label>
            <input type="" name="deed_date" value="" id="" class="form-control datepicker">
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="form-group col-md-3">
            <label class="form-label">Select Notary</label>
            {{__combo('notary-list')}}
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="form-group col-md-3">
            <label class="form-label">Payment method</label>
            <input type="" name="deed_payment_method" value="" id="" class="form-control">
            <div class="help-block with-errors has-feedback"></div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <button class="btn btn-info legal_submit" data-style="zoom-in">SAVE ENTRY</button>
        </div>
    </div>
</div>
