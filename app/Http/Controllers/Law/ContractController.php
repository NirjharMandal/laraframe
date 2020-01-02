<?php
namespace App\Http\Controllers\Law;

use App\Http\Controllers\Law\LawController AS LawController;
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

    /**
     * @param null $contract_id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function contractEntry($contract_id = null){
        $data = LawController::getContractInfo($contract_id);
        return view('Law.contract_entry', $data);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function saveContractInfo(Request $request){
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
        $property_entry = $this->propertyInformation($request, $contract_id);
        $respons_arr = [
            'success' => $property_entry,
            'message' => 'Data Saved Successfully',
            'data' => ['contract_id'=>$contract_id]
        ];
        return response()->json($respons_arr);
    }

    /**
     * @param $request
     * @param $contract_id
     * @return mixed
     */
    public function propertyInformation($request, $contract_id){
        $post_data = $request->all();
        //dbg($post_data,1);
        $insert_data = [];
        $directory = 'contract_files/'.$contract_id;
        foreach ($post_data['law_properties_id'] as $k => $law_properties_id){
            if(!empty($law_properties_id)){
                $insert_data[$k]['law_contract_id'] = $contract_id;
                $insert_data[$k]['law_properties_id'] = $law_properties_id;
                $insert_data[$k]['price'] = $post_data['price'][$k];

                $insert_data[$k]['water_attachment_path'] = null;
                $insert_data[$k]['electricity_attachment_path'] = null;
                $insert_data[$k]['gas_attachment_path'] = null;
                $insert_data[$k]['tv_internet_attachment_path'] = null;

                if($request->hasFile('water_attachment_path.'.$k)){
                    $file = $request->file('water_attachment_path.'.$k);
                    $insert_data[$k]['water_attachment_path'] = LawController::fileUploadToStorage($file, $directory);
                }
                if($request->hasFile('electricity_attachment_path.'.$k)){
                    $file = $request->file('electricity_attachment_path.'.$k);
                    $insert_data[$k]['electricity_attachment_path'] = LawController::fileUploadToStorage($file, $directory);
                }
                if($request->hasFile('gas_attachment_path.'.$k)){
                    $file = $request->file('gas_attachment_path.'.$k);
                    $insert_data[$k]['gas_attachment_path'] = LawController::fileUploadToStorage($file, $directory);
                }
                if($request->hasFile('tv_internet_attachment_path.'.$k)){
                    $file = $request->file('tv_internet_attachment_path.'.$k);
                    $insert_data[$k]['tv_internet_attachment_path'] = LawController::fileUploadToStorage($file, $directory);
                }
            }
        }
        $success = DB::table('law_contract_property')->insert($insert_data);
        return $success;
    }
    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function saveReservationInfo(Request $request){
        $success = 0;
        if($request->exists('law_contract_id')){
            if($request->hasFile('reservation_agreement_attachment_path')){
                $post_data = $request->all();
                $file = $request->file('reservation_agreement_attachment_path');
                $directory = 'contract_files/'.$post_data['law_contract_id'];
                $post_data['reservation_agreement_attachment_path'] = LawController::fileUploadToStorage($file, $directory, 'reservationagreement');
            }else{
                $post_data = $request->except(['reservation_agreement_attachment_path']);
            }
            $success = DB::table('law_contract')->where('law_contract_id', $request->law_contract_id)->update($post_data);
        }
        $respons_arr = [
            'success' => $success,
            'message' => 'Data Saved Successfully',
            'data' => []
        ];
        return response()->json($respons_arr);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     * --save ok
     */
    public function saveDealInfo(Request $request){
        $success = 0;
        if($request->exists('law_contract_id')){
            $post_data = $request->all();
            $success = DB::table('law_contract')->where('law_contract_id', $post_data['law_contract_id'])->update($post_data);
        }
        $respons_arr = [
            'success' => $success,
            'message' => 'Data Saved Successfully',
            'data' => []
        ];
        return response()->json($respons_arr);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     * --save ok
     */
    public function saveDeedInfo(Request $request){
        $success = 0;
        if($request->exists('law_contract_id')){
            $post_data = $request->all();
            $success = DB::table('law_contract')->where('law_contract_id', $post_data['law_contract_id'])->update($post_data);
        }
        $respons_arr = [
            'success' => $success,
            'message' => 'Data Saved Successfully',
            'data' => []
        ];
        return response()->json($respons_arr);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     * --save ok
     */
    public function saveFinancialInfo(Request $request){
        $success = 0;
        if($request->exists('law_contract_id')){
            $post_data = $request->all();
            $success = DB::table('law_contract')->where('law_contract_id', $post_data['law_contract_id'])->update($post_data);
        }
        $respons_arr = [
            'success' => $success,
            'message' => 'Data Saved Successfully',
            'data' => []
        ];
        return response()->json($respons_arr);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     * --save ok
     */
    public function savePromiseInfo(Request $request){
        $path = null;
        $success = 0;
        if($request->exists('law_contract_id')){
            $post_data = $request->all();
            if($request->hasFile('promise_contact_attachment_path')){
                $file = $request->file('promise_contact_attachment_path');
                $directory = 'client_files/'.$post_data['law_contract_id'];
                $post_data['promise_contact_attachment_path'] = LawController::fileUploadToStorage($file, $directory, 'promisecontract');
            }
            $success = DB::table('law_contract')->where('law_contract_id', $post_data['law_contract_id'])->update($post_data);
        }
        $respons_arr = [
            'success' => $success,
            'message' => 'Data Saved Successfully',
            'data' => []
        ];
        return response()->json($respons_arr);
    }
    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     * --save ok
     */
    public function saveAnnexedInfo(Request $request){
        $path = null;
        $success = 0;
        if($request->exists('law_contract_id')){
            $post_data = $request->all();
            if($request->hasFile('annexed_document_attachment_path')){
                $file = $request->file('annexed_document_attachment_path');
                $directory = 'client_files/'.$post_data['law_contract_id'];
                $post_data['annexed_document_attachment_path'] = LawController::fileUploadToStorage($file, $directory, 'annexeddocument');
            }
            $success = DB::table('law_contract')->where('law_contract_id', $post_data['law_contract_id'])->update($post_data);
        }
        $respons_arr = [
            'success' => $success,
            'message' => 'Data Saved Successfully',
            'data' => []
        ];
        return response()->json($respons_arr);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function savePaymentMethodInfo(Request $request){
        $success = 0;
        if($request->exists('law_contract_id')){
            $post_data = $request->all();
            $insert_data = [];
            foreach ($post_data['law_contract_initial_payment_method'] as $k => $transfers_info){
                if($transfers_info != ''){
                    $insert_data[$k]['law_contract_id'] = $post_data['law_contract_id'];
                    $insert_data[$k]['law_contract_initial_payment_method'] = $transfers_info;
                }
            }
            DB::table('law_contract_initial_payment')->where('law_contract_id', $post_data['law_contract_id'])->delete();
            $success = DB::table('law_contract_initial_payment')->insert($insert_data);
        }
        $respons_arr = [
            'success' => $success,
            'message' => 'Data Saved Successfully',
            'data' => []
        ];
        return response()->json($respons_arr);
    }

}

