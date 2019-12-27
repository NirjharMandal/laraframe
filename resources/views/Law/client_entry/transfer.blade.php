<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse6" aria-expanded="true" aria-controls="collapse6"><i class="fa fa-hand-o-right"></i> Transfers</h3>
<div id="collapse6" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="transfer_form" enctype="multipart/form-data" action="{{url('save-transfer-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-6 transfer_field">
                <label class="form-label">Transfers</label>
                <input type="" name="transfers_info[]" value="" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="col-md-3">
                <a class="btn btn-xs btn-warning transfer_add mt-4" data-style="zoom-in"><i class="fa fa-plus-circle"></i> Add Another</a>
            </div>
        </div>
        <div class="transferhtml"></div>
        @if(isset($transfer_data) && !empty($transfer_data))
            @foreach($transfer_data as $tr_data)
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class="form-label">Transfers</label>
                        <input type="" name="transfers_info[]" value="{{$tr_data->transfers_info}}" id="" class="form-control">
                        <div class="help-block with-errors has-feedback"></div>
                    </div>
                    <div class="form-group col-md-3">
                        <a class="btn btn-xs btn-danger transfer_remove mt-4" data-style="zoom-in"><i class="fa fa-minus-circle"></i> Remove</a>
                    </div>
                </div>
            @endforeach
        @endif
        <div class="row">
            <div class="col-md-3">
                <button class="btn btn-info submit_info" data-style="zoom-in">SAVE ENTRY</button>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        var transferhtml = '<div class="row">';
        transferhtml += '<div class="form-group col-md-6">'+$('.transfer_field').html()+'</div>';
        transferhtml += '<div class="form-group col-md-3"><a class="btn btn-xs btn-danger transfer_remove mt-4" data-style="zoom-in"><i class="fa fa-minus-circle"></i> Remove</a></div>';
        transferhtml += '</div>';
        var x = 1;
        $('.transfer_add').click(function(){
            if(x < 10){
                x++;
                $('.transferhtml').append(transferhtml);
            }
        });
        $('.transferhtml').on('click', '.transfer_remove', function(e){
            e.preventDefault();
            $(this).parent('div').parent('div').remove();
            x--;
        });
    });
</script>