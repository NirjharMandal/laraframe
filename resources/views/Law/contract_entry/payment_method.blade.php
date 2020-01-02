<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse42" aria-expanded="true" aria-controls="collapse42"><i class="fa fa-hand-o-right"></i> Payment methods for initial payment</h3>
<div id="collapse42" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="payment_method_info" enctype="multipart/form-data" action="{{url('save-payment-method-info')}}" method="post">
    <div class="row py-2">
        <div class="form-group col-md-6 initpmnt_method">
            <label class="form-label">Payment method</label>
            <input type="" name="law_contract_initial_payment_method[]" value="" id="" class="form-control">
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="col-md-3">
            <a class="btn btn-xs btn-warning initpmnt_method_add mt-4 text-white" data-style="zoom-in"><i class="fa fa-plus-circle"></i> Add More</a>
        </div>
    </div>
    <div class="initpmnt_html"></div>
    @if(isset($payment_data) && !empty($payment_data))
        @foreach($payment_data as $tr_data)
            <div class="row">
                <div class="form-group col-md-6">
                    <label class="form-label">Transfers</label>
                    <input type="" name="law_contract_initial_payment_method[]" value="{{$tr_data->law_contract_initial_payment_method}}" id="" class="form-control">
                    <div class="help-block with-errors has-feedback"></div>
                </div>
                <div class="form-group col-md-3">
                    <a class="btn btn-xs btn-danger initpmnt_remove mt-4 text-white" data-style="zoom-in"><i class="fa fa-minus-circle"></i> Remove</a>
                </div>
            </div>
        @endforeach
    @endif
    <div class="row">
        <div class="col-md-3">
            <button class="btn btn-info submit_info" data-style="zoom-in"><i class="fa fa-edit"></i> SAVE</button>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function(){
            var initpmnt_html = '<div class="row">';
            initpmnt_html += '<div class="form-group col-md-6">'+$('.initpmnt_method').html()+'</div>';
            initpmnt_html += '<div class="form-group col-md-3"><a class="btn btn-xs btn-danger initpmnt_remove mt-4 text-white" data-style="zoom-in"><i class="fa fa-minus-circle"></i> Remove</a></div>';
            initpmnt_html += '</div>';
            var x = 1;
            $('.initpmnt_method_add').click(function(){
                if(x < 10){
                    x++;
                    $('.initpmnt_html').append(initpmnt_html);
                }
            });
            $(document).on('click', '.initpmnt_remove', function(e){
                e.preventDefault();
                $(this).parent('div').parent('div').remove();
                x--;
            });
        });
    </script>
</div>
