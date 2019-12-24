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
                        <h2><i class="fa fa-users"></i> Buyer/Seller Entry</h2>
                        {{--<div class="ibox-tools">--}}
                        {{--<button class="btn btn-danger btn-xs no-display" id="delete-item"><i class="fa fa-remove" aria-hidden="true"></i> Delete</button>--}}
                        {{--</div>--}}
                    </div>
                    <div class="ibox-content">
                        <form class="" id="basic_info" enctype="multipart/form-data" action="{{url('save-basic-info')}}" method="post">
                            <div class="row">
                                <div class="form-group col-md-3">
                                    <label class="form-label">Email</label>
                                    <input type="" name="email" value="" id="" class="form-control" required>
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Full Name</label>
                                    <input type="" name="law_app_users_name" value="" id="" class="form-control">
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Mobile Phone</label>
                                    <input type="" name="mobile" value="" id="" class="form-control">
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Individual/Company</label>
                                    @php($user_type_option = ['Individual','Company'])
                                    {!! Form::select('user_type', $user_type_option, null, ['class' => 'form-control']) !!}
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Representative Lawyer</label>
                                    {{__combo('lawyer-list')}}
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Marriage type</label>
                                    <input type="" name="marriage_type" value="" id="" class="form-control">
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Marital status</label>
                                    @php($marrital_option = ['Married','Unmarried','Single'])
                                    {!! Form::select('marital_status',  $marrital_option, null, ['class' => 'form-control']) !!}
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Bank account number</label>
                                    <input type="" name="bank_account_number" value="" id="" class="form-control">
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="form-label">Tax number</label>
                                    <input type="" name="tax_number" value="" id="" class="form-control">
                                    <div class="help-block with-errors has-feedback"></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <button class="btn btn-info submit_button" data-style="zoom-in">SAVE ENTRY</button>
                                </div>
                            </div>
                        </form>
                        <script>
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
                            <h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"><i class="fa fa-hand-o-right"></i> Citizen card</h3>
                            <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row py-2">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Number</label>
                                        <input type="" name="citizen_card_number" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Expiry date</label>
                                        <input type="" name="citizen_card_exp_date" value="" id="" class="form-control datepicker">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
                            <h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"><i class="fa fa-hand-o-right"></i> Passport</h3>
                            <div id="collapseTwo" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <form class="" id="passport_info" enctype="multipart/form-data" action="{{url('save-passport-info')}}" method="post">
                                    <div class="row py-2">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Number</label>
                                        <input type="" name="passport_number" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Issue Date</label>
                                        <input type="" name="passport_issue_date" value="" id="" class="form-control datepicker">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Expiry date</label>
                                        <input type="" name="passport_exp_date" value="" id="" class="form-control datepicker">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Issue Entity</label>
                                        <input type="" name="passport_issue_entity" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Upload File</label>
                                        <div class="custom-file">
                                            <input id="passport_attachment_path" type="file" class="custom-file-input" name="passport_attachment_path"/>
                                            <label for="logo" class="btn btn-default custom-file-label text-left">Choose file...</label>
                                        </div>
                                        {{--<input type="file" name="passport_attachment_path" value="" id="" class="form-control">--}}
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
                            <h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree"><i class="fa fa-hand-o-right"></i> Commercial certificate</h3>
                            <div id="collapseThree" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row py-2">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Upload File</label>
                                        <div class="custom-file">
                                            <input id="logo" type="file" class="custom-file-input" name="commercial_certificate_attachment_path"/>
                                            <label for="logo" class="btn btn-default custom-file-label text-left">Choose file...</label>
                                        </div>
                                        {{--<input type="file" name="commercial_certificate_attachment_path" value="" id="" class="form-control">--}}
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
                            <h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse4" aria-expanded="true" aria-controls="collapse4"><i class="fa fa-hand-o-right"></i> Legal representatives</h3>
                            <div id="collapse4" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row py-2">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Citizen card number</label>
                                        <input type="" name="citizen_card_number" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Upload File</label>
                                        <div class="custom-file">
                                            <input id="logo" type="file" class="custom-file-input" name="legal_representative_attachemnt_path"/>
                                            <label for="logo" class="btn btn-default custom-file-label text-left">Choose file...</label>
                                        </div>
                                        {{--<input type="file" name="legal_representative_attachemnt_path" value="" id="" class="form-control">--}}
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
                            <h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse5" aria-expanded="true" aria-controls="collapse5"><i class="fa fa-hand-o-right"></i> Letter of attorney</h3>
                            <div id="collapse5" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row py-2">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Upload File</label>
                                        <div class="custom-file">
                                            <input id="logo" type="file" class="custom-file-input" name="letter_attorney_attachment_path"/>
                                            <label for="logo" class="btn btn-default custom-file-label text-left">Choose file...</label>
                                        </div>
                                        {{--<input type="file" name="letter_attorney_attachment_path" value="" id="" class="form-control">--}}
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
                            <h3 class="acc-heading mt-3" type="" data-toggle="collapse" data-target="#collapse6" aria-expanded="true" aria-controls="collapse6"><i class="fa fa-hand-o-right"></i> Transfers</h3>
                            <div id="collapse6" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row py-2">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Transfers</label>
                                        <input type="" name="transfers_info" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
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