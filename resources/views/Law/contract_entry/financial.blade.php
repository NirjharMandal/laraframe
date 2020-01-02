<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse5" aria-expanded="true" aria-controls="collapse5"><i class="fa fa-hand-o-right"></i> Financing bank Information</h3>
<div id="collapse5" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="financial_info" enctype="multipart/form-data" action="{{url('save-financial-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <label class="form-label">Select Bank</label>
                <?php
                    $law_banks_id = $contract_data->law_banks_id ?? '';
                    $bank_param = array(
                        'selected_value' => $law_banks_id,
                        'attributes' => Array(
                            'class' => 'multi'
                        )
                    );
                ?>
                {{__combo('bank-list', $bank_param)}}
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Mutual value</label>
                <input type="number" step="0.01" name="deed_payment_method" value="{{$contract_data->deed_payment_method ?? ''}}" id="mutual_value" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Stamp tax (6% of Mutual Value)</label>
                <input type="" name="bank_stamp_tax" value="{{$contract_data->bank_stamp_tax ?? ''}}" id="stamp_tax" class="form-control" readonly>
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Bank Agency</label>
                <input type="" name="bank_agency" value="{{$contract_data->bank_agency ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Name of responsible</label>
                <input type="" name="bank_responsible_name" value="{{$contract_data->bank_responsible_name ?? ''}}" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Contact of the responsible</label>
                <input type="" name="bank_responsible_contact" value="{{$contract_data->bank_responsible_contact ?? ''}}" id="" class="form-control">
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
<script>
    $('#mutual_value').on('input', function () {
        var mut_val = $(this).val();
        var cal6 = parseFloat((mut_val * 6) / 100).toFixed(2);
        $('#stamp_tax').val(cal6);
    });
</script>
