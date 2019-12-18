<div id="{{$widget_id}}"> </div>
<script>
    $(document).ready(function () {
        var sql = '<?php echo $sql; ?>';
        var widget_id = '<?php echo $widget_id; ?>';
        var widget_title = '<?php echo $ds_data->title; ?>';
        var widget_subtitle = '<?php echo $ds_data->subtitle; ?>';
        var pie_series_name = '<?php echo $pie_series_name; ?>';
        var pieplotoption = <?php echo $pie_plot_option; ?>;
        var pie3doption = <?php echo $pie_3d_option; ?>;
        var data = {"query" : sql};
        var url = "<?php echo url('dashboard-fetch-pie');?>";
        makeAjaxPost(data, url).then(response => {
            Highcharts.chart(widget_id, {
                chart: {
                    type: 'pie',
                    options3d: pie3doption
                },
                title: { text: '' },
                subtitle: { text: widget_subtitle },
                plotOptions: {
                    pie: pieplotoption
                },
                credits: { enabled: false },
                series: [{
                    name: pie_series_name,
                    data: response
                }]
            });
            $grid.packery( 'initShiftLayout', initPositions, 'data-id' );
        });
    });
    /*************************************************************/

</script>