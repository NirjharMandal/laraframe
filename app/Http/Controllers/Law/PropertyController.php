<?php

namespace App\Http\Controllers\Law;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use Auth;
use Session;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Law\LawController;

class PropertyController extends Controller {
    public function __construct(){
        $this->middleware('auth');
        $this->middleware('menu_permission');
    }

    public function propertyEntry($propertid = null){

        if($propertid){
            $data = LawController::getPropertyInfo($propertid);
        }
        return view('Law.property_entry', $data);
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
        if($request->has('law_properties_id')){
            DB::table('law_properties')->where('law_properties_id', $request->law_properties_id)->update($post_data);
            $insert_id = $request->law_properties_id;
        }else{
            $insert_id = DB::table('law_properties')->insertGetId($post_data);
        }
        if($insert_id) $success = 1;
        $respons_arr = [
            'success' => $success,
            'message' => 'Property created Successfully',
            'data' => ['law_properties_id'=>$insert_id]
        ];
        return response()->json($respons_arr);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function saveLandInfo(Request $request){
        $success = 0;
        if($request->exists('law_properties_id')){
            if($request->hasFile('land_reg_certificate_attachment_path')){
                $post_data = $request->all();
                $file = $request->file('land_reg_certificate_attachment_path');
                $directory = 'property_files/'.$post_data['law_properties_id'];
                $post_data['land_reg_certificate_attachment_path'] = LawController::fileUploadToStorage($file, $directory, 'landregistrycertificate');
            }else{
                $post_data = $request->except(['land_reg_certificate_attachment_path']);
            }
            $success = DB::table('law_properties')->where('law_properties_id', $request->law_properties_id)->update($post_data);
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
    public function saveFiscalInfo(Request $request){
        $success = 0;
        if($request->exists('law_properties_id')){
            if($request->hasFile('fiscal_reg_certificate_attachment_path')){
                $post_data = $request->all();
                $file = $request->file('fiscal_reg_certificate_attachment_path');
                $directory = 'property_files/'.$post_data['law_properties_id'];
                $post_data['fiscal_reg_certificate_attachment_path'] = LawController::fileUploadToStorage($file, $directory, 'fiscalregistrycertificate');
            }else{
                $post_data = $request->except(['fiscal_reg_certificate_attachment_path']);
            }
            $success = DB::table('law_properties')->where('law_properties_id', $request->law_properties_id)->update($post_data);
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
    public function saveCityhallInfo(Request $request){
        $success = 0;
        if($request->exists('law_properties_id')){
            if($request->hasFile('city_hall_attachment_path')){
                $post_data = $request->all();
                $file = $request->file('city_hall_attachment_path');
                $directory = 'property_files/'.$post_data['law_properties_id'];
                $post_data['city_hall_attachment_path'] = LawController::fileUploadToStorage($file, $directory, 'cityhalldoc');
            }else{
                $post_data = $request->except(['city_hall_attachment_path']);
            }
            $success = DB::table('law_properties')->where('law_properties_id', $request->law_properties_id)->update($post_data);
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
    public function saveEnergyInfo(Request $request){
        $success = 0;
        if($request->exists('law_properties_id')){
            if($request->hasFile('energy_certificate_attachment_path')){
                $post_data = $request->all();
                $file = $request->file('energy_certificate_attachment_path');
                $directory = 'property_files/'.$post_data['law_properties_id'];
                $post_data['energy_certificate_attachment_path'] = LawController::fileUploadToStorage($file, $directory, 'energyregistrycertificate');
            }else{
                $post_data = $request->except(['energy_certificate_attachment_path']);
            }
            $success = DB::table('law_properties')->where('law_properties_id', $request->law_properties_id)->update($post_data);
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
    public function saveTechnicalInfo(Request $request){
        $success = 0;
        if($request->exists('law_properties_id')){
            if($request->hasFile('technical_certificate_attachment_path')){
                $post_data = $request->all();
                $file = $request->file('technical_certificate_attachment_path');
                $directory = 'property_files/'.$post_data['law_properties_id'];
                $post_data['technical_certificate_attachment_path'] = LawController::fileUploadToStorage($file, $directory, 'technicalcertificate');
            }else{
                $post_data = $request->except(['technical_certificate_attachment_path']);
            }
            $success = DB::table('law_properties')->where('law_properties_id', $request->law_properties_id)->update($post_data);
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
    public function saveConstitutiveInfo(Request $request){
        $success = 0;
        if($request->exists('law_properties_id')){
            if($request->hasFile('constitutive_act_attachment_path')){
                $post_data = $request->all();
                $file = $request->file('constitutive_act_attachment_path');
                $directory = 'property_files/'.$post_data['law_properties_id'];
                $post_data['constitutive_act_attachment_path'] = LawController::fileUploadToStorage($file, $directory, 'constitutiveact');
            }else{
                $post_data = $request->except(['constitutive_act_attachment_path']);
            }
            $success = DB::table('law_properties')->where('law_properties_id', $request->law_properties_id)->update($post_data);
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
    public function saveToponomicInfo(Request $request){
        $success = 0;
        if($request->exists('law_properties_id')){
            if($request->hasFile('toponymic_certificate_attachment_path')){
                $post_data = $request->all();
                $file = $request->file('toponymic_certificate_attachment_path');
                $directory = 'property_files/'.$post_data['law_properties_id'];
                $post_data['toponymic_certificate_attachment_path'] = LawController::fileUploadToStorage($file, $directory, 'toponomiccertificate');
            }else{
                $post_data = $request->except(['land_reg_certificate_attachment_path']);
            }
            $success = DB::table('law_properties')->where('law_properties_id', $request->law_properties_id)->update($post_data);
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
    public function saveMunicipalInfo(Request $request){
        $success = 0;
        if($request->exists('law_properties_id')){
            $post_data = $request->all();
            $success = DB::table('law_properties')->where('law_properties_id', $post_data['law_properties_id'])->update($post_data);
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
    public function saveInfrastructuresInfo(Request $request){
        $success = 0;
        if($request->exists('law_properties_id')){
            $post_data = $request->all();
            $success = DB::table('law_properties')->where('law_properties_id', $post_data['law_properties_id'])->update($post_data);
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
    public function saveMapInfo(Request $request){
        $success = 0;
        if($request->exists('law_properties_id')){
            $post_data = $request->all();
            $success = DB::table('law_properties')->where('law_properties_id', $post_data['law_properties_id'])->update($post_data);
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
    public function saveUsageLicense(Request $request){
        $success = 0;
        if($request->exists('law_properties_id')){
            $post_data = $request->all();
            $insert_data = [];
            foreach ($post_data['usage_license'] as $k => $usage_license){
                if($usage_license != ''){
                    $insert_data[$k]['law_properties_id'] = $post_data['law_properties_id'];
                    $insert_data[$k]['usage_license'] = $usage_license;
                }
            }
            DB::table('law_properties_usage_license')->where('law_properties_id', $post_data['law_properties_id'])->delete();
            $success = DB::table('law_properties_usage_license')->insert($insert_data);
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
    public function saveBurdenProperty(Request $request){
        $success = 0;
        if($request->exists('law_properties_id')){
            $post_data = $request->all();
            $insert_data = [];

            foreach ($post_data['law_properties_burden_bank'] as $k => $properties_burden_bank){
                if($properties_burden_bank != ''){
                    if($request->hasFile('burden_attachment_path.'.$k)){
                        $file = $request->file('burden_attachment_path.'.$k);
                        $directory = 'property_files/'.$post_data['law_properties_id'];
                        $burden_attachment_path = LawController::fileUploadToStorage($file, $directory);
                    }
                    $insert_data[$k]['law_properties_id'] = $post_data['law_properties_id'];
                    $insert_data[$k]['law_properties_burden_bank'] = $properties_burden_bank;
                    $insert_data[$k]['number_n_date_of_presentation'] = $post_data['number_n_date_of_presentation'][$k];
                    $insert_data[$k]['burden_attachment_path'] = $burden_attachment_path;
                }
            }
            $success = DB::table('law_properties_burden_of_property')->insert($insert_data);
        }
        $respons_arr = [
            'success' => $success,
            'message' => 'Data Saved Successfully',
            'data' => []
        ];
        return response()->json($respons_arr);
    }

}


