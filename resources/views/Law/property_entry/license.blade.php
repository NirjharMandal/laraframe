<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse7" aria-expanded="true" aria-controls="collapse7"><i class="fa fa-hand-o-right"></i> Usage License</h3>
<div id="collapse7" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="usage_form" enctype="multipart/form-data" action="{{url('save-usage-info')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-6 transfer_field">
                <label class="form-label">Usage License</label>
                <input type="" name="usage_license[]" value="" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="col-md-3">
                <a class="btn btn-xs btn-warning transfer_add mt-4" data-style="zoom-in"><i class="fa fa-plus-circle"></i> Add Another</a>
            </div>
        </div>
        <div class="usagehtml"></div>
        @if(isset($usage_data) && !empty($usage_data))
            @foreach($usage_data as $tr_data)
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class="form-label">Usage License</label>
                        <input type="" name="usage_license[]" value="{{$tr_data->usage_license}}" id="" class="form-control">
                        <div class="help-block with-errors has-feedback"></div>
                    </div>
                    <div class="form-group col-md-3">
                        <a class="btn btn-xs btn-danger usage_remove mt-4" data-style="zoom-in"><i class="fa fa-minus-circle"></i> Remove</a>
                    </div>
                </div>
            @endforeach
        @endif
        <div class="row">
            <div class="col-md-3">
                <button class="btn btn-info submit_button" data-style="zoom-in"><i class="fa fa-edit"></i> SAVE</button>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        var usagehtml = '<div class="row">';
        usagehtml += '<div class="form-group col-md-6">'+$('.transfer_field').html()+'</div>';
        usagehtml += '<div class="form-group col-md-3"><a class="btn btn-xs btn-danger usage_remove mt-4" data-style="zoom-in"><i class="fa fa-minus-circle"></i> Remove</a></div>';
        usagehtml += '</div>';
        var x = 1;
        $('.transfer_add').click(function(){
            if(x < 10){
                x++;
                $('.usagehtml').append(usagehtml);
            }
        });
        $(document).on('click', '.usage_remove', function(e){
            e.preventDefault();
            $(this).parent('div').parent('div').remove();
            x--;
        });
    });
</script>
