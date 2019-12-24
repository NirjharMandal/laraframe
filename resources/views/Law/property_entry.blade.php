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
                        <h2><i class="fa fa-home"></i> Property Entry</h2>
                        {{--<div class="ibox-tools">--}}
                            {{--<button class="btn btn-success btn-xs" id="new-item"><i class="fa fa-plus" aria-hidden="true"></i> New</button>--}}
                            {{--<button class="btn btn-success btn-xs no-display" id="view-item"><i class="fa fa-eye" aria-hidden="true"></i> View</button>--}}
                            {{--<button class="btn btn-info btn-xs no-display" id="edit-item"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</button>--}}
                            {{--<button class="btn btn-danger btn-xs no-display" id="delete-item"><i class="fa fa-remove" aria-hidden="true"></i> Delete</button>--}}
                        {{--</div>--}}
                    </div>
                    <div class="ibox-content">
                        <div class="row mb-3">
                            <div class="form-group col-md-3">
                                <label class="form-label">Property Type</label>
                                {{__combo('property-type')}}
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-3">
                                <label class="form-label">Property Title</label>
                                <input type="" name="law_properties_name" value="" id="" class="form-control">
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                            <div class="form-group col-md-3">
                                <label class="form-label">Building Description</label>
                                <textarea type="" name="property_description" id="" class="form-control" rows="1"></textarea>
                                <div class="help-block with-errors has-feedback"></div>
                            </div>
                        </div>
                        {{--------------------------}}
                        <div class="accordion" id="accordionExample">
                            <h3 class="acc-heading" type="" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapse1"><i class="fa fa-hand-o-right"></i> Land Registry Certificate</h3>
                            <div id="collapse1" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Conservatory</label>
                                        <input type="" name="land_reg_certificate_conservatory" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Building description</label>
                                        <input type="" name="land_reg_certificate_building_description" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">County</label>
                                        <input type="" name="land_reg_certificate_county" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">House Number</label>
                                        <input type="" name="land_reg_certificate_house_number" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Provisory Acquisition Request</label>
                                        <input type="" name="land_reg_certificate_provisory_acq_request" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Provisory Acquisition Mortage</label>
                                        <input type="" name="land_reg_certificate_provisory_acq_mortage" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Upload File</label>
                                        <input type="file" name="land_reg_certificate_attachment_path" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
                            <h3 class="acc-heading" type="" data-toggle="collapse" data-target="#collapse2" aria-expanded="true" aria-controls="collapse2"><i class="fa fa-hand-o-right"></i> Toponymic certificate(data/documents)</h3>
                            <div id="collapse2" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">City Hall</label>
                                        <input type="" name="toponymic_certificate_city_hall" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Issue Date</label>
                                        <input type="" name="toponymic_certificate_issue_Date" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Upload File</label>
                                        <div class="custom-file">
                                            <input id="logo" type="file" class="custom-file-input" name="toponymic_certificate_attachment_path"/>
                                            <label for="logo" class="btn btn-default custom-file-label text-left">Choose file...</label>
                                        </div>
                                        {{--<input type="file" name="toponymic_certificate_attachment_path" value="" id="" class="form-control">--}}
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
                            <h3 class="acc-heading" type="" data-toggle="collapse" data-target="#collapse3" aria-expanded="true" aria-controls="collapse3"><i class="fa fa-hand-o-right"></i> Building municipal Tax</h3>
                            <div id="collapse3" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <input type="" name="building_municipal_tax" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
                            <h3 class="acc-heading" type="" data-toggle="collapse" data-target="#collapse4" aria-expanded="true" aria-controls="collapse4"><i class="fa fa-hand-o-right"></i> ---Burden of property</h3>
                            <div id="collapse4" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Bank</label>
                                        <input type="" name="law_properties_burden_bank" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Number and date of presentation</label>
                                        <input type="" name="number_n_date_of_presentation" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Upload File</label>
                                        <div class="custom-file">
                                            <input id="logo" type="file" class="custom-file-input" name="burden_attachment_path"/>
                                            <label for="logo" class="btn btn-default custom-file-label text-left">Choose file...</label>
                                        </div>
                                        {{--<input type="file" name="burden_attachment_path" value="" id="" class="form-control">--}}
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
                            <h3 class="acc-heading" type="" data-toggle="collapse" data-target="#collapse5" aria-expanded="true" aria-controls="collapse5"><i class="fa fa-hand-o-right"></i> Google maps location</h3>
                            <div id="collapse5" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Latitude</label>
                                        <input type="" name="google_map_lat" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Longitude</label>
                                        <input type="" name="google_map_long" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
                            <h3 class="acc-heading" type="" data-toggle="collapse" data-target="#collapse6" aria-expanded="true" aria-controls="collapse6"><i class="fa fa-hand-o-right"></i> Fiscal Registry Certificate</h3>
                            <div id="collapse6" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Financial services</label>
                                        <input type="" name="fiscal_reg_certificate_finance_service" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Matricial article</label>
                                        <input type="" name="fiscal_reg_certificate_matricial_article" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Village name</label>
                                        <input type="" name="fiscal_reg_certificate_village_name" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Value</label>
                                        <input type="" name="fiscal_reg_certificate_value" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Upload File</label>
                                        <div class="custom-file">
                                            <input id="logo" type="file" class="custom-file-input" name="fiscal_reg_certificate_attachment_path"/>
                                            <label for="logo" class="btn btn-default custom-file-label text-left">Choose file...</label>
                                        </div>
                                        {{--<input type="file" name="fiscal_reg_certificate_attachment_path" value="" id="" class="form-control">--}}
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
                            <h3 class="acc-heading" type="" data-toggle="collapse" data-target="#collapse7" aria-expanded="true" aria-controls="collapse7"><i class="fa fa-hand-o-right"></i> ---Usage licence</h3>
                            <div id="collapse7" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <input type="" name="building_municipal_tax" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
                            <h3 class="acc-heading" type="" data-toggle="collapse" data-target="#collapse8" aria-expanded="true" aria-controls="collapse8"><i class="fa fa-hand-o-right"></i> City hall</h3>
                            <div id="collapse8" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">License number</label>
                                        <input type="" name="city_hall_license_number" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Emission date</label>
                                        <input type="" name="city_hall_emission_date" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Issue date</label>
                                        <input type="" name="city_hall_issue_date" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Upload File</label>
                                        <div class="custom-file">
                                            <input id="logo" type="file" class="custom-file-input" name="city_hall_attachment_path"/>
                                            <label for="logo" class="btn btn-default custom-file-label text-left">Choose file...</label>
                                        </div>
                                        {{--<input type="file" name="city_hall_attachment_path" value="" id="" class="form-control">--}}
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
                            <h3 class="acc-heading" type="" data-toggle="collapse" data-target="#collapse9" aria-expanded="true" aria-controls="collapse9"><i class="fa fa-hand-o-right"></i> Energy certificate</h3>
                            <div id="collapse9" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Certificate number</label>
                                        <input type="" name="energy_certificate_number" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Technic number</label>
                                        <input type="" name="energy_certificate_technic_number" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Technical name</label>
                                        <input type="" name="energy_certificate_technic_name" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Issue date</label>
                                        <input type="" name="energy_certificate_issue_date" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Expiry date</label>
                                        <input type="" name="energy_certificate_expiry_date" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Upload File</label>
                                        <div class="custom-file">
                                            <input id="logo" type="file" class="custom-file-input" name="energy_certificate_attachment_path"/>
                                            <label for="logo" class="btn btn-default custom-file-label text-left">Choose file...</label>
                                        </div>
                                        {{--<input type="file" name="energy_certificate_attachment_path" value="" id="" class="form-control">--}}
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
                            <h3 class="acc-heading" type="" data-toggle="collapse" data-target="#collapse10" aria-expanded="true" aria-controls="collapse10"><i class="fa fa-hand-o-right"></i> Technical certificate</h3>
                            <div id="collapse10" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">City Hall</label>
                                        <input type="" name="technical_certificate_city_hall" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Issue Date</label>
                                        <input type="" name="technical_certificate_issue_date" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Upload File</label>
                                        <div class="custom-file">
                                            <input id="logo" type="file" class="custom-file-input" name="technical_certificate_attachment_path"/>
                                            <label for="logo" class="btn btn-default custom-file-label text-left">Choose file...</label>
                                        </div>
                                        {{--<input type="file" name="technical_certificate_attachment_path" value="" id="" class="form-control">--}}
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
                            <h3 class="acc-heading" type="" data-toggle="collapse" data-target="#collapse11" aria-expanded="true" aria-controls="collapse11"><i class="fa fa-hand-o-right"></i> Infrastructures certification</h3>
                            <div id="collapse11" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Infrastructures certification</label>
                                        <input type="" name="infrastructures_certificate" value="" id="" class="form-control">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                </div>
                            </div>
                            {{--------------------------}}
                            <h3 class="acc-heading" type="" data-toggle="collapse" data-target="#collapse12" aria-expanded="true" aria-controls="collapse12"><i class="fa fa-hand-o-right"></i> Constitutive act</h3>
                            <div id="collapse12" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Issue Date</label>
                                        <input type="" name="constitutive_act_issue_date" value="" id="" class="form-control datepicker">
                                        <div class="help-block with-errors has-feedback"></div>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Upload File</label>
                                        <div class="custom-file">
                                            <input id="logo" type="file" class="custom-file-input" name="constitutive_act_attachment_path"/>
                                            <label for="logo" class="btn btn-default custom-file-label text-left">Choose file...</label>
                                        </div>
                                        {{--<input type="file" name="constitutive_act_attachment_path" value="" id="" class="">--}}
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
