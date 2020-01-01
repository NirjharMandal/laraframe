<h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"><i class="fa fa-hand-o-right"></i> Deal details</h3>
<div id="collapseTwo" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
    <form class="" id="passport_info" enctype="multipart/form-data" action="{{url('')}}" method="post">
        <div class="row py-2">
            <div class="form-group col-md-3">
                <label class="form-label">Buying value</label>
                <input type="" name="deal_buying_value" value="" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Initial payment</label>
                <input type="" name="deal_initial_payment" value="" id="" class="form-control">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Conclusion Limit date</label>
                <input type="" name="deal_conc_limit_date" value="" id="" class="form-control datepicker">
                <div class="help-block with-errors has-feedback"></div>
            </div>
            <div class="form-group col-md-3">
                <label class="form-label">Notes</label>
                <textarea type="" name="deal_notes" value="" id="" class="form-control" rows="1"></textarea>
                <div class="help-block with-errors has-feedback"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <button class="btn btn-info passport_submit" data-style="zoom-in">SAVE ENTRY</button>
            </div>
        </div>
    </form>
    <script>
        $('.passport_submit').on('click', function (e) {
            Ladda.bind(this);
            var load = $(this).ladda();
            var submit_url = $('#passport_info').attr('action');

            $('#passport_info').validator().on('submit', function (e) {
                if (!e.isDefaultPrevented()) {
                    e.preventDefault();
                    //var formdata = $('#passport_info').serialize();
                    var formData = new FormData(this);
                    //formData.append('file', $('#passport_attachment_path')[0].files[0]);
                    makeAjaxPostText(formData, submit_url, load).done(function (data) {
                        load.ladda('stop');
                        console.log(formData);
                        console.log(data);
                    })
                }
            });
        });
    </script>
</div>
