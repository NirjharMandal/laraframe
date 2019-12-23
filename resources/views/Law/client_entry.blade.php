@extends('layouts.app')
@section('content')
    <div class="wrapper wrapper-content animated fadeInUp">
        <div class="row">
            <div class="col-lg-12 no-padding">
                <div class="ibox ">
                    <div class="ibox-title">
                        <h2><i class="fa fa-users"></i> Buyer/Seller Entry</h2>
                        {{--<div class="ibox-tools">--}}
                        {{--<button class="btn btn-success btn-xs" id="new-item"><i class="fa fa-plus" aria-hidden="true"></i> New</button>--}}
                        {{--<button class="btn btn-success btn-xs no-display" id="view-item"><i class="fa fa-eye" aria-hidden="true"></i> View</button>--}}
                        {{--<button class="btn btn-info btn-xs no-display" id="edit-item"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</button>--}}
                        {{--<button class="btn btn-danger btn-xs no-display" id="delete-item"><i class="fa fa-remove" aria-hidden="true"></i> Delete</button>--}}
                        {{--</div>--}}
                    </div>
                    <div class="ibox-content">
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <label class="form-label">Email</label>
                                <input type="" name="email" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Full Name</label>
                                <input type="" name="law_app_users_name" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Mobile Phone</label>
                                <input type="" name="mobile" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Individual/Company</label>
                                @php($user_type_option = ['Individual','Company'])
                                {!! Form::select('user_type', $user_type_option, null, ['class' => 'form-control']) !!}
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Representative Lawyer</label>
                                {{__combo('lawyer-list')}}
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Marriage type</label>
                                <input type="" name="marriage_type" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Marital status</label>
                                @php($marrital_option = ['Married','Unmarried','Single'])
                                {!! Form::select('marital_status',  $marrital_option, null, ['class' => 'form-control']) !!}
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Bank account number</label>
                                <input type="" name="bank_account_number" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Tax number</label>
                                <input type="" name="tax_number" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>Citizen card</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <label class="form-label">Number</label>
                                <input type="" name="citizen_card_number" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Expiry date</label>
                                <input type="" name="citizen_card_exp_date" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>Passport</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <label class="form-label">Number</label>
                                <input type="" name="passport_number" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Issue Date</label>
                                <input type="" name="passport_issue_date" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Expiry date</label>
                                <input type="" name="passport_exp_date" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Issue Entity</label>
                                <input type="" name="passport_issue_entity" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">File*********</label>
                                <input type="" name="passport_attachment_path" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>Commercial certificate*********</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <input type="" name="commercial_certificate_attachment_path" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>---Legal representatives</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <label class="form-label">Citizen card number</label>
                                <input type="" name="citizen_card_number" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">File*********</label>
                                <input type="" name="legal_representative_attachemnt_path" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>Letter of attorney*********</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <input type="" name="letter_attorney_attachment_path" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>---Transfers</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <input type="" name="transfers_info" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection