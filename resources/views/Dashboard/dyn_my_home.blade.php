@extends('layouts.app')
@section('content')
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
                            <a class="btn btn-xs btn-primary" id="" href="{{URL::to('dashboard')}}"><i class="fa fa-check-square" aria-hidden="true"></i> Customize My widget</a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        @if(empty($default_ds_data['userwisedata']))
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
                            <div class="grid col-12 m-0 p-0">
                                <div class="grid-spacing col-1 m-0 p-0"></div>
                                @foreach($default_ds_data['userwisedata'] as $key => $ds_data)
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
                                                    <h3 class="title-for-default">{{$ds_data->title}}</h3>
                                                    <div class="ibox-tools">
                                                        <a class=""> <i class="fa fa-arrows-alt draggable-icon"></i> </a>
                                                        <a class="collapse-link"> <i class="fa fa-chevron-up"></i></a>
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
    @php
        $user_id = session::get('USER_ID');
        $module_id = session::get('SELECTED_MODULE');
    @endphp
    <style>
        .widget {
            border-radius: 1px;
            box-shadow: 0 0px 2px #00000030, 0 1px 2px #0000003b;
            text-shadow: 1px 1px 2px #66666690;
            margin-bottom: 0px;
        }
        .dashboard-container{
            box-shadow: 0 0px 2px #00000030, 0 1px 2px #0000003b;
            margin-top: 5px !important;
        }
        .draggable-icon{
            cursor: move;
        }
        .grid {
            max-width: 100%;
        }
        .grid:after {
            content: '';
            display: block;
            clear: both;
        }
        .grid-item {
            padding-bottom: 25%; /* hack for proportional sizing */
            float: left;
            background-position: center center;
            background-size: cover;
        }
        .grid-item.is-dragging,
        .grid-item.is-positioning-post-drag {
            z-index: 2;
        }
        .packery-drop-placeholder {
            outline: 1px dashed hsla(0, 0%, 0%, 0.26);
            /*outline-offset: -6px;*/
            -webkit-transition: -webkit-transform 0.2s;
            transition: transform 0.2s;
        }
        .chart-container{
            height:300px;
            width:100%;
        }
        .ds-list-title{
            border-width: 0px 0 0;
            padding: 8px 60px 3px 5px;
            min-height: 30px;
            margin-bottom: -1px;
        }
    </style>
    <script>
        Packery.prototype.getShiftPositions = function( attrName ) {
            attrName = attrName || 'id';
            var _this = this;
            return this.items.map( function( item ) {
                return {
                    attr: item.element.getAttribute( attrName ),
                    x: item.rect.x / _this.packer.width
                }
            });
        };
        Packery.prototype.initShiftLayout = function( positions, attribute ) {
            if ( !positions ) {
                this.layout();
                return;
            }
            if( typeof positions == 'string' ) {
                try {
                    positions = JSON.parse( positions );
                } catch( error ) {
                    console.error( 'JSON parse error: ' + error );
                    this.layout();
                    return;
                }
            }

            attribute = attribute || 'id'; // default to id attribute
            this._resetLayout();
            // set item order and horizontal position from saved positions
            this.items = positions.map( function(itemPosition) {
                var selector = '[' + attribute + '="' + itemPosition.attr  + '"]'
                var itemElem = this.element.querySelector( selector );
                var item = this.getItem( itemElem );
                item.rect.x = itemPosition.x * this.packer.width;
                return item;
            }, this );
            this.shiftLayout();
        };
        // -----------------------------//
        var $grid = $('.grid').packery({
            itemSelector: '.grid-item',
            columnWidth: '.grid-spacing',
            //columnWidth: 5,
            percentPosition: true,
            initLayout: true
        });
        var initPositions = '<?php echo $layouts; ?>';
        $grid.packery( 'initShiftLayout', initPositions, 'data-id' );
        $grid.find('.grid-item').each( function( i, itemElem ) {
            var draggie = new Draggabilly( itemElem, {
                handle: ".draggable-icon"
            } );
            $grid.packery( 'bindDraggabillyEvents', draggie );
        });
        $grid.on( 'dragItemPositioned', function() {
            var positions = $grid.packery('getShiftPositions', 'data-id');
            var data = {position:JSON.stringify(positions)};
            savePostionToDB(data);
            console.log(JSON.stringify( positions ));
        });
        function savePostionToDB(data){
            var url = '<?php echo url('dashboard-setposition').'/'.$user_id.'/'.$module_id;?>';
            makeAjaxPost(data, url).then(response => {
                //saved
            });
        }
    </script>
    @endsection
