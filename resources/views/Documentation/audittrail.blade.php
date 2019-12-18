<h3>Create Audit Log While Update</h3>
<pre class="line-numbers"><code class="language-php">... ...
use App\Events\AuditTrailEvent AS Audit;
class SomeClass{
    function someUpdateFunction(){
        $data_to_update = [
            'field_1' => 'new data 1',
            'field_2' => 'new data 2'
        ];
        $update_property = DB::table('TABLE_NAME')
                    ->where('field', 'field_data')->...->whereIN('field', [field_data]);
        // For Update
        Audit::build($update_property)->update($data_to_update);
        // For Delete
        Audit::build($update_property)->delete();
    }
}
</code></pre>
<div class="row"></div>
<br/>
<div class="row"></div>
<h3>Retrive Audit Log Data</h3>
<pre class="line-numbers"><code class="language-php">... ...
use App\Events\AuditTrailEvent AS Audit;
class SomeClass{
    function someReportingFunction(){
        /*
        * ->get (DATE-1, DATE-2) || data between 2 date
        * ->get (NULL, DATE) || data from beginning to END DATE
        * ->get (DATE) || data for specific date
        *
        * ->logdata() || get full record
        * ->logdata(1) || get filtered/changed data
        */
        $log_data = Audit::table('TABLE_NAME')->get()->logdata();
    }
}
</code></pre>
<div class="row"></div>
