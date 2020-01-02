<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse4" aria-expanded="true" aria-controls="collapse4"><i class="fa fa-hand-o-right"></i> Deed</h3>
<div id="collapse4" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="deed_info" enctype="multipart/form-data" action="{{url('save-deed-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <label class="form-label">Deed date</label>
                <input type="" name="deed_date" value="{{$contract_data->deed_date ?? ''}}" id="" class="form-control datepicker">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Select Notary</label>
                <?php
                    $law_notaries_id = $contract_data->law_notaries_id ?? '';
                    $notary_param = array(
                        'selected_value' => $law_notaries_id,
                        'attributes' => Array(
                            'class' => 'multi'
                        )
                    );
                ?>
                {{__combo('notary-list', $notary_param)}}
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Payment method</label>
                <input type="" name="deed_payment_method" value="{{$contract_data->deed_payment_method ?? ''}}" id="" class="form-control">
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
