<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse5" aria-expanded="true" aria-controls="collapse5"><i class="fa fa-hand-o-right"></i> Financing bank Information</h3>
<div id="collapse5" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <div class="row py-2">
        <div class="form-group col-md-3">
            <label class="form-label">Select Bank</label>
            {{__combo('bank-list')}}
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="form-group col-md-3">
            <label class="form-label">Mutual value</label>
            <input type="" name="deed_payment_method" value="" id="" class="form-control">
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="form-group col-md-3">
            <label class="form-label">Stamp tax (6% of Mutual Value)</label>
            <input type="" name="bank_stamp_tax" value="" id="" class="form-control">
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="form-group col-md-3">
            <label class="form-label">Bank Agency</label>
            <input type="" name="bank_agency" value="" id="" class="form-control">
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="form-group col-md-3">
            <label class="form-label">Name of responsible</label>
            <input type="" name="bank_responsible_name" value="" id="" class="form-control">
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="form-group col-md-3">
            <label class="form-label">Contact of the responsible</label>
            <input type="" name="bank_responsible_contact" value="" id="" class="form-control">
            <div class="help-block with-errors has-feedback"></div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <button class="btn btn-info letter_submit" data-style="zoom-in">SAVE ENTRY</button>
        </div>
    </div>
</div>
