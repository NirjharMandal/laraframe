<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse42" aria-expanded="true" aria-controls="collapse42"><i class="fa fa-hand-o-right"></i> Payment methods for initial payment</h3>
<div id="collapse42" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <div class="row py-2">
        <div class="form-group col-md-3 initpmnt_method">
            <label class="form-label">Payment method</label>
            <input type="" name="law_contract_initial_payment_method" value="" id="" class="form-control">
            <div class="help-block with-errors has-feedback"></div>
        </div>
        <div class="col-md-3">
            <button class="btn btn-xs btn-warning initpmnt_method_add mt-4" data-style="zoom-in"><i class="fa fa-plus-circle"></i> Add Another</button>
        </div>
    </div>
    <div class="initpmnt_html"></div>
    <div class="row">
        <div class="col-md-3">
            <button class="btn btn-info legal_submit" data-style="zoom-in">SAVE ENTRY</button>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function(){
            var initpmnt_html = '<div class="row">';
            initpmnt_html += '<div class="form-group col-md-3">'+$('.initpmnt_method').html()+'</div>';
            initpmnt_html += '<div class="form-group col-md-3"><button class="btn btn-xs btn-danger initpmnt_remove mt-4" data-style="zoom-in"><i class="fa fa-minus-circle"></i> Remove</button></div>';
            initpmnt_html += '</div>';
            var x = 1;
            $('.initpmnt_method_add').click(function(){
                if(x < 10){
                    x++;
                    $('.initpmnt_html').append(initpmnt_html);
                }
            });
            $('.initpmnt_html').on('click', '.initpmnt_remove', function(e){
                e.preventDefault();
                $(this).parent('div').parent('div').remove();
                x--;
            });
        });
    </script>
</div>
