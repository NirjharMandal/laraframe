@extends('layouts.app')
@section('content')
    <style>
        .acc-heading{
            border-bottom: 1px solid #bbb;
            font-weight: initial;
            line-height: 2;
            cursor: pointer;
        }
    </style>
    <div class="wrapper wrapper-content animated fadeInUp">
        <div class="row">
            <div class="col-lg-12 no-padding">
                <div class="ibox ">
                    <div class="ibox-title">
                        <h2><i class="fa fa-handshake-o"></i> Purchase Contract Entry</h2>
                        {{--<div class="ibox-tools">--}}
                        {{--<button class="btn btn-danger btn-xs no-display" id="delete-item"><i class="fa fa-remove" aria-hidden="true"></i> Delete</button>--}}
                        {{--</div>--}}
                    </div>
                    <div class="ibox-content">
                        <form class="" id="basic_info" enctype="multipart/form-data" action="{{url('save-basic-info')}}" method="post">
                            <div class="row">
                                <div class="form-group col-md-3">
                                    <label class="form-label">Select Buyer</label>
                                    {{__combo('buyer-list')}}
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Select Seller</label>
                                    {{__combo('seller-list')}}
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                            </div>
                            <div class="row py-2">
                                <div class="form-group col-md-2 contr_price">
                                    <label class="form-label">Price</label>
                                    <input type="" name="price" value="" id="" class="form-control">
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-2 contr_water">
                                    <label class="form-label">Water Contract</label>
                                    <div class="custom-file">
                                        <input id="logo" type="file" class="custom-file-input" name="water_attachment_path"/>
                                        <label for="logo" class="btn btn-default custom-file-label text-left">File...</label>
                                    </div>
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-2 contr_electricity">
                                    <label class="form-label">Electricity Contract</label>
                                    <div class="custom-file">
                                        <input id="logo" type="file" class="custom-file-input" name="electricity_attachment_path"/>
                                        <label for="logo" class="btn btn-default custom-file-label text-left">File...</label>
                                    </div>
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-2 contr_gas">
                                    <label class="form-label">Gas Contract</label>
                                    <div class="custom-file">
                                        <input id="logo" type="file" class="custom-file-input" name="gas_attachment_path"/>
                                        <label for="logo" class="btn btn-default custom-file-label text-left">File...</label>
                                    </div>
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-2 contr_tv">
                                    <label class="form-label">Tv/Internet Contract</label>
                                    <div class="custom-file">
                                        <input id="logo" type="file" class="custom-file-input" name="tv_internet_attachment_path"/>
                                        <label for="logo" class="btn btn-default custom-file-label text-left">File...</label>
                                    </div>
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="col-md-2">
                                    <a class="btn btn-xs btn-warning contr_add mt-4" data-style="zoom-in"><i class="fa fa-plus-circle"></i> Add Another</a>
                                </div>
                            </div>
                            <div class="contr_html"></div>
                            <div class="row">
                                <div class="col-md-3">
                                    <button class="btn btn-info submit_button" data-style="zoom-in">SAVE ENTRY</button>
                                </div>
                            </div>
                        </form>
                        <script>
                            $(document).ready(function(){
                                var contr_html = '<div class="row">';
                                contr_html += '<div class="form-group col-md-2">'+$('.contr_price').html()+'</div>';
                                contr_html += '<div class="form-group col-md-2">'+$('.contr_water').html()+'</div>';
                                contr_html += '<div class="form-group col-md-2">'+$('.contr_electricity').html()+'</div>';
                                contr_html += '<div class="form-group col-md-2">'+$('.contr_gas').html()+'</div>';
                                contr_html += '<div class="form-group col-md-2">'+$('.contr_tv').html()+'</div>';
                                contr_html += '<div class="form-group col-md-2"><button class="btn btn-xs btn-danger contr_remove mt-4" data-style="zoom-in"><i class="fa fa-minus-circle"></i> Remove</button></div>';
                                contr_html += '</div>';
                                var x = 1;
                                $('.contr_add').click(function(){
                                    if(x < 10){
                                        x++;
                                        $('.contr_html').append(contr_html);
                                    }
                                });
                                $('.contr_html').on('click', '.contr_remove', function(e){
                                    e.preventDefault();
                                    $(this).parent('div').parent('div').remove();
                                    x--;
                                });
                            });
                            $('.submit_button').on('click', function (e) {
                                Ladda.bind(this);
                                var load = $(this).ladda();
                                var submit_url = $('#basic_info').attr('action');

                                $('#basic_info').validator().on('submit', function (e) {
                                    if (!e.isDefaultPrevented()) {
                                        e.preventDefault();
                                        var formdata = $('#basic_info').serialize();
                                        makeAjaxPost(formdata,submit_url,load).done((response) =>{
                                            //$('#'+form_id).trigger("reset");
                                            //swalRedirect('',"Operation Successfull");
                                        });
                                    }
                                });
                            });
                        </script>
                        {{--------------------------}}
                        <div class="accordion mt-4" id="accordionExample">
                            <h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"><i class="fa fa-hand-o-right"></i> Reservation agreement</h3>
                            <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row py-2">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Reservation date</label>
                                        <input type="" name="reservation_agreement_date" value="" id="" class="form-control datepicker">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Upload File</label>
                                        <div class="custom-file">
                                            <input id="logo" type="file" class="custom-file-input" name="reservation_agreement_attachment_path"/>
                                            <label for="logo" class="btn btn-default custom-file-label text-left">Choose file...</label>
                                        </div>
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <button class="btn btn-info citizen_submit" data-style="zoom-in">SAVE ENTRY</button>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
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
                            {{--------------------------}}
                            <h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree"><i class="fa fa-hand-o-right"></i> Promise contract</h3>
                            <div id="collapseThree" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row py-2">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Upload File</label>
                                        <div class="custom-file">
                                            <input id="logo" type="file" class="custom-file-input" name="promise_contact_attachment_path"/>
                                            <label for="logo" class="btn btn-default custom-file-label text-left">Choose file...</label>
                                        </div>
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <button class="btn btn-info commercial_submit" data-style="zoom-in">SAVE ENTRY</button>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
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
                            {{--------------------------}}
                            <h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapseThreeTwo" aria-expanded="true" aria-controls="collapseThreeTwo"><i class="fa fa-hand-o-right"></i> Annexed documents</h3>
                            <div id="collapseThreeTwo" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row py-2">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Upload File</label>
                                        <div class="custom-file">
                                            <input id="logo" type="file" class="custom-file-input" name="annexed_document_attachment_path"/>
                                            <label for="logo" class="btn btn-default custom-file-label text-left">Choose file...</label>
                                        </div>
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <button class="btn btn-info commercial_submit" data-style="zoom-in">SAVE ENTRY</button>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
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
                            {{--------------------------}}
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $('.custom-file-input').on('change', function() {
            let fileName = $(this).val().split('\\').pop();
            $(this).next('.custom-file-label').addClass("selected").html(fileName);
        });
    </script>
@endsection