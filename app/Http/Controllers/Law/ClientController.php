<?php
namespace App\Http\Controllers\Law;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use Input;
use Redirect;
use Auth;
use Session;
use Validator;
use File;
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
        $data = [];
        $data['user_data'] = [];
        $data['legal_data'] = [];
        $data['transfer_data'] = [];
        if($clientid){
            $data['user_data'] = DB::table('law_app_users')
                ->select('law_app_users_id','law_app_users_name','user_type','marital_status','marriage_type','email','mobile','law_lawyers_id',
                    'bank_account_number','tax_number','citizen_card_number','citizen_card_exp_date','passport_number','passport_issue_date','passport_exp_date',
                    'passport_issue_entity','passport_attachment_path','commercial_certificate_attachment_path','letter_attorney_attachment_path','status')
                ->where('law_app_users_id', $clientid)
                ->get()->first();
            $data['legal_data'] = DB::table('law_app_users_legal_representative')
                ->select('law_app_users_legal_representative_id','citizen_card_number','legal_representative_attachemnt_path')
                ->where('law_app_users_id', $clientid)
                ->get();
            $data['transfer_data'] = DB::table('law_app_users_transfer')
                ->select('law_app_users_transfer_id','transfers_info')
                ->where('law_app_users_id', $clientid)
                ->get();
        }
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
        $insert_id = DB::table('law_app_users')->insertGetId($post_data);
        if($insert_id){
            $success = 1;
        }
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
        $path = null;
        $success = 0;
        if($request->exists('law_app_users_id')){
            if($request->hasFile('passport_attachment_path')){
                $post_data = $request->all();
                $file = $request->file('passport_attachment_path');
                $directory = 'client_files/'.$post_data['law_app_users_id'];
                $post_data['passport_attachment_path'] = $this->fileUploadToStorage($file, $directory, 'passport_info');
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
                $post_data['commercial_certificate_attachment_path'] = $this->fileUploadToStorage($file, $directory, 'commercial_certificate');
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
                $post_data['letter_attorney_attachment_path'] = $this->fileUploadToStorage($file, $directory, 'letterofattorney');
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
                        $legal_representative_attachemnt_path = $this->fileUploadToStorage($file, $directory);
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
    /******************************************************************************/
    /******************************************************************************/

    /**
     * @param $file
     * @param $directory
     * @param null $filename
     * @return mixed
     */
    public function fileUploadToStorage($file, $directory, $filename = NULL){
        $storage = Storage::disk('attachment');
        $extension = $file->extension();
        if (!$storage->has($directory)) {
            $storage->makeDirectory($directory, 0777, true, true);
        }
        if($filename != NULL){
            $path = $storage->putFileAs($directory, $file, $filename.'.'.$extension);
        }else{
            $path = $storage->putFile($directory, $file);
        }
        return $path;
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function removeFileRecord(Request $request){
        $storage = Storage::disk('attachment');
        $success = 0;
        $record = 0;
        $deleted = 0;
        if($request->removerow == 1){
            $record = DB::table($request->table)->where($request->key, $request->value)->delete();
        }else{
            DB::table($request->table)->where($request->key, $request->value)->update([$request->pathcolumn => NULL]);
        }
        $deleted = $storage->delete($request->pathvalue);
        if($record == 1 && $deleted == 1) $success == 1;
        $respons_arr = [
            'success' => $success,
            'message' => 'Data Saved Successfully',
            'data' => []
        ];
        return response()->json($respons_arr);
    }
}

