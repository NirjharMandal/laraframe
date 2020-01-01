<?php
namespace App\Http\Controllers\Law;

use App\Http\Controllers\Law\LawController;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use Auth;
use Session;
use Illuminate\Support\Facades\Storage;

class ContractController extends Controller {
    public function __construct(){
        $this->middleware('auth');
        $this->middleware('menu_permission');
    }

    public function contractEntry($contract_id = null){
        $data = LawController::getContractInfo($contract_id);
        return view('Law.contract_entry');
    }

    public function saveContractInfo(Request $request){
        $success = 0;
        if($request->exists('law_contract_id')){
            DB::table('law_contract')->where('law_contract_id', $request->law_contract_id)->update(['buyer_id' => $request->buyer_id,'seller_id' => $request->seller_id]);
            $contract_id = $request->law_contract_id;
        }else {
            $buyer_seller_entry = [
                'buyer_id' => $request->buyer_id,
                'seller_id' => $request->seller_id
            ];
            $contract_id = DB::table('law_contract')->insertGetId($buyer_seller_entry);
        }
            $insert_data = [];

/*            foreach ($post_data['law_properties_burden_bank'] as $k => $properties_burden_bank){
                if($properties_burden_bank != ''){
                    if($request->hasFile('burden_attachment_path.'.$k)){
                        $file = $request->file('burden_attachment_path.'.$k);
                        $directory = 'property_files/'.$post_data['law_contract_id'];
                        $burden_attachment_path = LawController::fileUploadToStorage($file, $directory);
                    }
                    $insert_data[$k]['law_contract_id'] = $post_data['law_contract_id'];
                    $insert_data[$k]['law_properties_burden_bank'] = $properties_burden_bank;
                    $insert_data[$k]['number_n_date_of_presentation'] = $post_data['number_n_date_of_presentation'][$k];
                    $insert_data[$k]['burden_attachment_path'] = $burden_attachment_path;
                }
            }
            $success = DB::table('law_properties_burden_of_property')->insert($insert_data);*/
        $respons_arr = [
            'success' => $success,
            'message' => 'Data Saved Successfully',
            'data' => []
        ];
        return response()->json($respons_arr);
    }


}

