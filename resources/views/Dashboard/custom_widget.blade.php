<div>
    This is sample widget
</div>
<script>
    $(document).ready(function () {
        var sql = '<?php echo $sql; ?>';
        var widget_id = '<?php echo $widget_id; ?>';
        var data = {"query" : sql};
        var url = "<?php echo url('dashboard-fetch-summary');?>";
//        makeAjaxPost(data, url).then(response => {
//            $('#'+widget_id).empty();
//            $('#'+widget_id).html(response);
//        });

    });
</script>