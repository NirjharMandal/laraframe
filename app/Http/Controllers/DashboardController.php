<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Auth;
use DB;
use Session;
use Config;
use View;
use App\Events\AuditTrailEvent AS Audit;
class DashboardController extends Controller {
    private $data = [];
    public function __construct(){
        $this->middleware('auth');
        $this->middleware('menu_permission');
    }
    public function index(){
        $data['default_module'] = session('DEFAULT_MODULE_ID');
        $data['selected_module'] = session('SELECTED_MODULE');
        $db_widget = session('DB_WIDGET');
        $data['my_dashboard'] = 0;
        $widgets = [];
        if(isset($db_widget[$data['selected_module']]) && !empty($db_widget[$data['selected_module']])){
            $widgets = $db_widget[$data['selected_module']];
        }
        if(isset($widgets['USERS']) && !empty($widgets['USERS'])){
            $data['my_dashboard'] = 1;
        }else{
            $data['my_dashboard'] = 0;
        }
        //$this->test();
        if($data['selected_module'] == 0){
            return view('Dashboard.customized_home', $data);
        }else{
            return view('Dashboard.home', $data);
        }
    }
    public function test(){
        //Audit::getAuditLog('bank_branchs');

        //Audit::table('bank_branchs')->get();
//        Audit::table('bank_branchs')->get('2019-10-21');
//        Audit::table('bank_branchs')->get(null, '2019-8-21');
        $ss = Audit::table('banks')->get()->logdata();
        dd($ss);
    }

    public function getDashboard(){
        $selected_module = session('SELECTED_MODULE');
        $this->data['default_ds_data'] = self::loadDashboardData($selected_module);
        return view('Dashboard.dyn_home', $this->data);
    }

    public function getMyDashboard(){
        $user_id = session::get('USER_ID');
        $selected_module = session('SELECTED_MODULE');
        $this->data['default_ds_data'] = self::loadDashboardData($selected_module, $user_id);
        $positions = DB::table('sys_dashboard_layouts')
            ->select('dashboard_widget_layout')
            ->where('user_id', $user_id)
            ->where('module_id', $selected_module)->first();
        $this->data['layouts'] = !empty($positions) ? $positions->dashboard_widget_layout : '';
        return view('Dashboard.dyn_my_home', $this->data);
    }

    public function loadDashboardData($selected_module, $user_id = ''){
        $db_widget = session('DB_WIDGET');
        $widgets = [];
        $widget_data['userwisewidgets'] = [];
        $widget_data['userwisedata'] = [];
        $widget_data['defaultwidgetdata'] = [];
        if(isset($db_widget[$selected_module]) && !empty($db_widget[$selected_module])){
            $widgets = $db_widget[$selected_module];
        }
        if(isset($widgets['USERS']) && !empty($widgets['USERS'])){
            $widget_data['userwisewidgets'] = explode(',', $widgets['USERS']);
            if(!empty($user_id)){
                $widget_data['userwisedata'] = self::getUserDashboardWidgetData($widget_data['userwisewidgets'], $user_id);
            }
        }
        if(isset($widgets['DEFAULT']) && !empty($widgets['DEFAULT'])){
            $df_widgets = explode(',', $widgets['DEFAULT']);
            $widget_data['defaultwidgetdata'] = self::getDashboardWidgetData($df_widgets);
        }
        return $widget_data;
    }
    public function getUserDashboardWidgetData($widget_ids = [], $user_id){
        return DB::table('sys_dashboard_widget_users')
            ->select()
            ->whereIN('sys_dashboard_widget_id', $widget_ids)
            ->where('user_id', $user_id)
            ->orderBy('order', 'ASC')
            ->get()->toArray();
    }
    public function getDashboardWidgetData($widget_ids = []){
        return DB::table('sys_dashboard_widget')
            ->select()->whereIN('sys_dashboard_widget_id', $widget_ids)
            ->orderBy('order', 'ASC')
            ->get()->toArray();
    }
    public function fetchList(Request $request){
        $post = $request->all();
        $query = $post['query'];
        $result = DB::select(DB::raw($query));
        foreach ($result as $data){
            foreach ($data as $key => $header){
                $this->data['table_header'][] = ucwords(str_replace('_', ' ', $key));
            }
            break;
        }
        $this->data['table_data'] = $result;
        return response()->json($this->data);
    }
    public function fetchPie(Request $request){
        $post = $request->all();
        $query = $post['query'];
        $results = DB::select(DB::raw($query));
        $data = [];
        foreach ($results as $key=>$result){
            $data[$key]['name'] = $result->name;
            $data[$key]['y'] = (float)$result->y;
        }
        return response()->json($data);
    }
    public function fetchSummary(Request $request){
        $post = $request->all();
        $query = $post['query'];
        $results = DB::select(DB::raw($query));
        foreach ($results[0] as $data){
            $result = $data;
        }
        return response()->json($result);
    }
    public function DashboardSetPosition(Request $request, $user_id = '', $module_id = ''){
        $post = $request->all();
        DB::table('sys_dashboard_layouts')
            ->updateOrInsert(['user_id'=>$user_id, 'module_id'=>$module_id], ['dashboard_widget_layout'=>$post['position']]);
        return response()->json();
    }
    public function DashboardSetMyWidgets(Request $request, $user_id = '', $module_id = ''){
        $post = $request->all();
        $db_widgets = session('DB_WIDGET');
        $selected_widgets = json_decode($post['widgets']);
        $db_widgets_for_module = $db_widgets[$module_id];
        $sess_user_widgets = [];
        $resetposition = 0;
        if(isset($db_widgets_for_module['USERS']) && !empty($db_widgets_for_module['USERS'])){
            $sess_user_widgets = explode(',', $db_widgets_for_module['USERS']);
        }
        $toadd = array_diff($selected_widgets, $sess_user_widgets);
        $toremove = array_diff($sess_user_widgets, $selected_widgets);
        if(!empty($toadd)){
            $resetposition = 1;
            $WidgetData = self::getDashboardWidgetData($toadd);
            $insert_data = [];
            foreach ($WidgetData as $key => $new_widgets){
                foreach ($new_widgets as $field => $value){
                    $insert_data[$key][$field] = $value;
                }
                $insert_data[$key]['user_id'] = $user_id;
            }
            DB::table('sys_dashboard_widget_users')->insert($insert_data);
        }
        if(!empty($toremove)){
            $resetposition = 1;
            DB::table('sys_dashboard_widget_users')->where('user_id', $user_id)->where('module_id', $module_id)->whereIN('sys_dashboard_widget_id', $toremove)->delete();
        }
        Session(['DB_WIDGET.'.$module_id.'.USERS' => implode(',',$selected_widgets)]);
        if($resetposition == 1){
            DB::table('sys_dashboard_layouts')
                ->updateOrInsert(['user_id'=>$user_id, 'module_id'=>$module_id], ['dashboard_widget_layout'=> '']);
        }
        return response()->json([]);
    }
}
