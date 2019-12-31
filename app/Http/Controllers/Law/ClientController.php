<?php
namespace App\Http\Controllers\Law;

use App\Http\Controllers\Law\LawController;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use Auth;
use Session;
use Illuminate\Support\Facades\Storage;

class ClientController extends Controller {
    public function __construct(){
        $this->middleware('auth');
        $this->middleware('menu_permission');
    }

    /**
     * @param null $clientid
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function clientEntry($clientid = null){
        $data = LawController::getClientInfo($clientid);
        return view('Law.client_entry', $data);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     * --save ok
     * --mailing pending
     */
    public function saveBasicInfo(Request $request){
        $success = 0;
        $post_data = $request->all();
        if($request->has('law_app_users_id')){
            DB::table('law_app_users')->where(['law_app_users_id' => $request->law_app_users_id])->update($post_data);
            $insert_id = $request->law_app_users_id;
        }else{
            $insert_id = DB::table('law_app_users')->insertGetId($post_data);
        }
        if($insert_id) $success = 1;
        $respons_arr = [
            'success' => $success,
            'message' => 'Buyer/Seller created Successfully',
            'data' => ['client_id'=>$insert_id]
        ];
        return response()->json($respons_arr);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     * --save ok
     */
    public function saveCitizen(Request $request){
        $success = 0;
        if($request->exists('law_app_users_id')){
            $post_data = $request->all();
            $success = DB::table('law_app_users')->where('law_app_users_id', $post_data['law_app_users_id'])->update($post_data);
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
    public function savePassportInfo(Request $request){
        $success = 0;
        if($request->exists('law_app_users_id')){
            if($request->hasFile('passport_attachment_path')){
                $post_data = $request->all();
                $file = $request->file('passport_attachment_path');
                $directory = 'client_files/'.$post_data['law_app_users_id'];
                $post_data['passport_attachment_path'] = LawController::fileUploadToStorage($file, $directory, 'passport_info');
            }else{
                $post_data = $request->except(['passport_attachment_path']);
            }
            $success = DB::table('law_app_users')->where('law_app_users_id', $post_data['law_app_users_id'])->update($post_data);
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
    public function saveCertificate(Request $request){
        $path = null;
        $success = 0;
        if($request->exists('law_app_users_id')){
            $post_data = $request->all();
            if($request->hasFile('commercial_certificate_attachment_path')){
                $file = $request->file('commercial_certificate_attachment_path');
                $directory = 'client_files/'.$post_data['law_app_users_id'];
                $post_data['commercial_certificate_attachment_path'] = LawController::fileUploadToStorage($file, $directory, 'commercial_certificate');
            }
            $success = DB::table('law_app_users')->where('law_app_users_id', $post_data['law_app_users_id'])->update($post_data);
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
    public function saveLetter(Request $request){
        $path = null;
        $success = 0;
        if($request->exists('law_app_users_id')){
            $post_data = $request->all();
            if($request->hasFile('letter_attorney_attachment_path')){
                $file = $request->file('letter_attorney_attachment_path');
                $directory = 'client_files/'.$post_data['law_app_users_id'];
                $post_data['letter_attorney_attachment_path'] = LawController::fileUploadToStorage($file, $directory, 'letterofattorney');
            }
            $success = DB::table('law_app_users')->where('law_app_users_id', $post_data['law_app_users_id'])->update($post_data);
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
    public function saveLegal(Request $request){
        $success = 0;
        if($request->exists('law_app_users_id')){
            $post_data = $request->all();
            $insert_data = [];

            foreach ($post_data['citizen_card_number'] as $k => $citizen_card_number){
                if($citizen_card_number != ''){
                    if($request->hasFile('legal_representative_attachemnt_path.'.$k)){
                        $file = $request->file('legal_representative_attachemnt_path.'.$k);
                        $directory = 'client_files/'.$post_data['law_app_users_id'];
                        $legal_representative_attachemnt_path = LawController::fileUploadToStorage($file, $directory);
                    }
                    $insert_data[$k]['law_app_users_id'] = $post_data['law_app_users_id'];
                    $insert_data[$k]['citizen_card_number'] = $citizen_card_number;
                    $insert_data[$k]['legal_representative_attachemnt_path'] = $legal_representative_attachemnt_path;
                }
            }
            $success = DB::table('law_app_users_legal_representative')->insert($insert_data);
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
    public function saveTransfer(Request $request){
        $success = 0;
        if($request->exists('law_app_users_id')){
            $post_data = $request->all();
            $insert_data = [];
            foreach ($post_data['transfers_info'] as $k => $transfers_info){
                if($transfers_info != ''){
                    $insert_data[$k]['law_app_users_id'] = $post_data['law_app_users_id'];
                    $insert_data[$k]['transfers_info'] = $transfers_info;
                }
            }
            DB::table('law_app_users_transfer')->where('law_app_users_id', $post_data['law_app_users_id'])->delete();
            $success = DB::table('law_app_users_transfer')->insert($insert_data);
        }
        $respons_arr = [
            'success' => $success,
            'message' => 'Data Saved Successfully',
            'data' => []
        ];
        return response()->json($respons_arr);
    }

}

