@extends('layouts.app')
@section('content')
    <div class="wrapper wrapper-content animated fadeInUp">
        <div class="row">
            <div class="col-lg-12 no-padding">
                <div class="ibox ">
                    <div class="ibox-title">
                        <h2><i class="fa fa-home"></i> Property Entry</h2>
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
                                <label class="form-label">Property Type</label>
                                {{__combo('property-type')}}
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Property Title</label>
                                <input type="" name="law_properties_name" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Building Description</label>
                                <textarea type="" name="property_description" id="" class="form-control" rows="1"></textarea>
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>Land Registry Certificate</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <label class="form-label">Conservatory</label>
                                <input type="" name="land_reg_certificate_conservatory" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Building description</label>
                                <input type="" name="land_reg_certificate_building_description" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">County</label>
                                <input type="" name="land_reg_certificate_county" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">House Number</label>
                                <input type="" name="land_reg_certificate_house_number" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Provisory Acquisition Request</label>
                                <input type="" name="land_reg_certificate_provisory_acq_request" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Provisory Acquisition Mortage</label>
                                <input type="" name="land_reg_certificate_provisory_acq_mortage" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">File*********</label>
                                <input type="" name="land_reg_certificate_attachment_path" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>Toponymic certificate(data/documents)</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <label class="form-label">City Hall</label>
                                <input type="" name="toponymic_certificate_city_hall" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Issue Date</label>
                                <input type="" name="toponymic_certificate_issue_Date" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">File*********</label>
                                <input type="" name="toponymic_certificate_attachment_path" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>Building municipal Tax</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <input type="" name="building_municipal_tax" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>---Burden of property (one or more)</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <label class="form-label">Bank</label>
                                <input type="" name="law_properties_burden_bank" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Number and date of presentation</label>
                                <input type="" name="number_n_date_of_presentation" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">File*********</label>
                                <input type="" name="burden_attachment_path" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>Google maps location</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <label class="form-label">Latitude</label>
                                <input type="" name="google_map_lat" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Longitude</label>
                                <input type="" name="google_map_long" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>Fiscal Registry Certificate</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <label class="form-label">Financial services</label>
                                <input type="" name="fiscal_reg_certificate_finance_service" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Matricial article</label>
                                <input type="" name="fiscal_reg_certificate_matricial_article" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Village name</label>
                                <input type="" name="fiscal_reg_certificate_village_name" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Value</label>
                                <input type="" name="fiscal_reg_certificate_value" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">File*********</label>
                                <input type="" name="fiscal_reg_certificate_attachment_path" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>---Usage licence</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <input type="" name="building_municipal_tax" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>City hall</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <label class="form-label">License number</label>
                                <input type="" name="city_hall_license_number" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Emission date</label>
                                <input type="" name="city_hall_emission_date" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Issue date</label>
                                <input type="" name="city_hall_issue_date" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">File*********</label>
                                <input type="" name="city_hall_attachment_path" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>Energy certificate</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <label class="form-label">Certificate number</label>
                                <input type="" name="energy_certificate_number" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Technic number</label>
                                <input type="" name="energy_certificate_technic_number" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Technical name</label>
                                <input type="" name="energy_certificate_technic_name" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Issue date</label>
                                <input type="" name="energy_certificate_issue_date" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Expiry date</label>
                                <input type="" name="energy_certificate_expiry_date" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">File*********</label>
                                <input type="" name="energy_certificate_attachment_path" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>Technical certificate</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <label class="form-label">City Hall</label>
                                <input type="" name="technical_certificate_city_hall" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">Issue Date</label>
                                <input type="" name="technical_certificate_issue_date" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">File*********</label>
                                <input type="" name="technical_certificate_attachment_path" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>Infrastructures certification</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <input type="" name="infrastructures_certificate" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        <h3>Constitutive act</h3>
                        <div class="row mb-4">
                            <div class="form-group col-md-4">
                                <label class="form-label">Issue Date</label>
                                <input type="" name="constitutive_act_issue_date" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="form-label">File*********</label>
                                <input type="" name="constitutive_act_attachment_path" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
