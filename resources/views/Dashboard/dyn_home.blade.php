@extends('layouts.app')
@section('content')
    @php
        $user_id = session::get('USER_ID');
        $module_id = session::get('SELECTED_MODULE');
    @endphp
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/highcharts-3d.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="{{asset('public/js/plugins/packery/packery.pkgd.js')}}"></script>
    <script src="{{asset('public/js/plugins/packery/draggabilly.pkgd.js')}}"></script>
    <div class="wrapper wrapper-content animated showRight">
        <div class="row">
            <div class="col-12 no-padding">
                <div class="ibox">
                    <div class="ibox-title">
                        <h2>Dashboard For {!! session::get('MODULE_LANG') !!} Module</h2>
                        <div class="ibox-tools">
                            <a class="btn btn-xs btn-primary ifnotchange" id="" href="{{URL::to('my-dashboard')}}"><i class="fa fa-dashboard" aria-hidden="true"></i> My Dashboard</a>
                            &nbsp;<button class="btn btn-xs btn-success ifchange changedsave no-display" id=""><i class="fa fa-save" aria-hidden="true"></i> Save</button>
                            &nbsp;<button class="btn btn-xs btn-cancel ifchange no-display" id=""><i class="fa fa-close" aria-hidden="true"></i> Cancel</button>
                        </div>
                    </div>
                    <div class="ibox-content">
                        @if(empty($default_ds_data['defaultwidgetdata']))
                            <div class="row justify-content-center">
                                <div class="col-md-6">
                                    <div class="widget style3 red-bg mt-0">
                                        <div class="row">
                                            <div class="col-4">
                                                <i class="fa fa-close fa-5x"></i>
                                            </div>
                                            <div class="col-8 text-right">
                                                <span>No Widget</span>
                                                <h2 class="font-bold">No Widget</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @else
                            <div class="grid col-12 row m-0 p-0">
                                @foreach($default_ds_data['defaultwidgetdata'] as $key => $ds_data)
                                    @php
                                        $sqlparts = [
                                            'select_sql' => $ds_data->select_sql,
                                            'source_sql' => $ds_data->source_sql,
                                            'condition_sql' => $ds_data->condition_sql,
                                            'having_sql' => $ds_data->having_sql,
                                            'groupby_sql' => $ds_data->groupby_sql,
                                            'orderby_sql' => $ds_data->orderby_sql,
                                            'limit_sql' => $ds_data->limit_sql
                                        ];
                                        $sql = getMergedQueryForDashboard($sqlparts);
                                        $widget_id = 'widget-'.$ds_data->sys_dashboard_widget_id;
                                        $widget_div = 'div-'.$ds_data->sys_dashboard_widget_id;
                                        $pie_series_name = $ds_data->pie_series_name;
                                        $column_plot_option = !empty($ds_data->column_plot_option) ? $ds_data->column_plot_option : "{depth: 20}";
                                        $column_3d_option = !empty($ds_data->column_3d_option) ? $ds_data->column_3d_option : "{enabled: true,alpha: 0,beta: 0,depth: 20,viewDistance: 25}";
                                        $widget_div = 'div-'.$ds_data->sys_dashboard_widget_id;
                                        $pie_plot_option = !empty($ds_data->pie_plot_option) ? $ds_data->pie_plot_option : "{allowPointSelect:true,innerSize:100,depth:45,dataLabels:{enabled:true,format:'{point.name}'}}";
                                        $pie_3d_option = !empty($ds_data->pie_3d_option) ? $ds_data->pie_3d_option : "{enabled:true,alpha:45}";
                                    @endphp

                                    <div class="col-md-{{$ds_data->grid_space}} m-0 p-1 grid-item" data-id="{{$ds_data->sys_dashboard_widget_id}}" id="{{$widget_div}}">
                                        <div class="dashboard-container">
                                            <div class="ibox">
                                                <div class="ibox-title ds-list-title bg-warning">
                                                    @php($checked = in_array($ds_data->sys_dashboard_widget_id, $default_ds_data['userwisewidgets']) ? 'checked' : '')
                                                    <h4 class="title-for-user">
                                                        <input class="custom-check widget-chooses" id="{{$ds_data->sys_dashboard_widget_id}}" type="checkbox" {{$checked}}/>
                                                        <label for="{{$ds_data->sys_dashboard_widget_id}}"></label> {{$ds_data->title}}
                                                    </h4>
                                                    <div class="ibox-tools">
                                                        <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                                    </div>
                                                </div>
                                                <div class="ibox-content table-responsive p-0">
                                                    @if($ds_data->widget_type == 'list')
                                                        @include('Dashboard.list')
                                                    @elseif($ds_data->widget_type == 'piechart')
                                                        @include('Dashboard.piechart')
                                                    @elseif($ds_data->widget_type == 'columnchart')
                                                        @include('Dashboard.columnchart')
                                                    @elseif($ds_data->widget_type == 'summary')
                                                        @include('Dashboard.summary')
                                                    @elseif($ds_data->widget_type == 'custom')
                                                        @include($ds_data->custom_widget_view_page)
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>

        $('.widget-chooses').on('click', function () {
            var my_widgets = [];
            $('.ifnotchange').hide();
            $('.ifchange').fadeIn();
        });
        $('.changedsave').on('click', function () {

            $('.ifnotchange').fadeIn();
            $('.ifchange').hide();
            var my_widgets = [];
            $('.widget-chooses:checked').each(function () {
                my_widgets.push($(this).attr('id'));
            })
            var data = {widgets:JSON.stringify(my_widgets)};
            var url = '<?php echo url('dashboard-setwidget').'/'.$user_id.'/'.$module_id;?>';
            makeAjaxPost(data, url).then(response => {
                //saved
            });
        })
    </script>
    <style>
        .widget {
            border-radius: 1px;
            box-shadow: 0 0px 2px #00000030, 0 1px 2px #0000003b;
            text-shadow: 1px 1px 2px #66666690;
            margin-bottom: 0px;
        }
        .dashboard-container{
            box-shadow: 0 0px 0px #00000030, 0 1px 2px #0000003b;
            margin-top: 5px !important;
        }
        .ds-list-title{
            border-width: 0px 0 0;
            padding: 8px 60px 3px 5px;
            min-height: 30px;
            margin-bottom: -1px;
        }
        input.custom-check + label {
            display: initial;
        }
    </style>
    @endsection
