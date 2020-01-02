<?php
namespace App\Http\Controllers\Law;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use DB;

class LawController extends Controller {
    public function __construct(){
        $this->middleware('auth');
        $this->middleware('menu_permission');
    }

    /**
     * @param string $client_id
     * @return mixed
     */
    public static function getClientInfo($client_id = null){
        $data = [];
        $data['user_data'] = [];
        $data['legal_data'] = [];
        $data['transfer_data'] = [];
        if($client_id){
            $data['user_data'] = DB::table('law_app_users')
                ->select('law_app_users_id','law_app_users_name','user_type','marital_status','marriage_type','email','mobile','law_lawyers_id',
                    'bank_account_number','tax_number','citizen_card_number','citizen_card_exp_date','passport_number','passport_issue_date','passport_exp_date',
                    'passport_issue_entity','passport_attachment_path','commercial_certificate_attachment_path','letter_attorney_attachment_path','status')
                ->where('law_app_users_id', $client_id)
                ->get()->first();
            $data['legal_data'] = DB::table('law_app_users_legal_representative')
                ->select('law_app_users_legal_representative_id','citizen_card_number','legal_representative_attachemnt_path')
                ->where('law_app_users_id', $client_id)
                ->get();
            $data['transfer_data'] = DB::table('law_app_users_transfer')
                ->select('law_app_users_transfer_id','transfers_info')
                ->where('law_app_users_id', $client_id)
                ->get();
        }
        return $data;
    }

    /**
     * @param $contract_id
     * @return array
     */
    public static function getContractInfo($contract_id){
        $data = [];
        $data['contract_data'] = [];
        $data['property_data'] = [];
        $data['payment_data'] = [];
        if($contract_id){
            $data['contract_data'] = DB::table('law_contract')
                ->select('law_contract_id','seller_id','buyer_id','reservation_agreement_date','reservation_agreement_attachment_path','deal_buying_value','deal_initial_payment',
                    'deal_conc_limit_date','deal_notes','promise_contact_attachment_path','annexed_document_attachment_path','deed_date','law_notaries_id','deed_payment_method',
                    'law_banks_id','bank_mutual_value','bank_stamp_tax','bank_agency','bank_responsible_name','bank_responsible_contact')
                ->where('law_contract_id', $contract_id)
                ->get()->first();
            $data['property_data'] = DB::table('law_contract_property')
                ->select('law_contract_property.law_contract_property_id','law_contract_property.law_properties_id','law_contract_property.law_contract_id','law_contract_property.price',
                    'law_contract_property.water_attachment_path','law_contract_property.electricity_attachment_path','law_contract_property.gas_attachment_path','law_contract_property.tv_internet_attachment_path',
                    'law_properties.law_property_type_id','law_properties.law_properties_name','law_properties.property_description'
                )
                ->join('law_properties', 'law_properties.law_properties_id', '=', 'law_contract_property.law_properties_id')
                ->where('law_contract_property.law_contract_id', $contract_id)
                ->get();
            $data['payment_data'] = DB::table('law_contract_initial_payment')
                ->select('law_contract_id','law_contract_initial_payment_method')
                ->where('law_contract_id', $contract_id)
                ->get();
        }
        return $data;
    }

    /**
     * @param string $property_id
     * @return mixed
     */
    public static function getPropertyInfo($property_id = null){
        $data = [];
        $data['property_data'] = [];
        $data['legal_data'] = [];
        $data['transfer_data'] = [];
        if($property_id) {
            $data['property_data'] = DB::table('law_properties')
                ->select('law_properties_id', 'law_property_type_id', 'law_properties_name', 'property_description',
                    'land_reg_certificate_conservatory', 'land_reg_certificate_building_description', 'land_reg_certificate_county', 'land_reg_certificate_house_number', 'land_reg_certificate_provisory_acq_request', 'land_reg_certificate_provisory_acq_mortage', 'land_reg_certificate_attachment_path',
                    'toponymic_certificate_city_hall', 'toponymic_certificate_issue_Date', 'toponymic_certificate_attachment_path',
                    'building_municipal_tax', 'google_map_lat', 'google_map_long',
                    'fiscal_reg_certificate_finance_service', 'fiscal_reg_certificate_matricial_article', 'fiscal_reg_certificate_village_name', 'fiscal_reg_certificate_value', 'fiscal_reg_certificate_attachment_path',
                    'city_hall_license_number', 'city_hall_issue_date', 'city_hall_emission_date', 'city_hall_attachment_path',
                    'energy_certificate_number', 'energy_certificate_technic_number', 'energy_certificate_technic_name', 'energy_certificate_issue_date', 'energy_certificate_expiry_date', 'energy_certificate_attachment_path',
                    'technical_certificate_city_hall', 'technical_certificate_issue_date', 'technical_certificate_attachment_path',
                    'infrastructures_certificate', 'constitutive_act_issue_date', 'constitutive_act_attachment_path', 'status')
                ->where('law_properties_id', $property_id)
                ->get()->first();
            $data['usage_data'] = DB::table('law_properties_usage_license')
                ->select('law_properties_id', 'usage_license')
                ->where('law_properties_id', $property_id)
                ->get();
            $data['burden_data'] = DB::table('law_properties_burden_of_property')
                ->select('law_properties_burden_of_property_id', 'law_properties_id', 'law_properties_burden_bank', 'number_n_date_of_presentation', 'burden_attachment_path')
                ->where('law_properties_id', $property_id)
                ->get();
        }
        return $data;
    }

    /**
     * @param $file
     * @param $directory
     * @param null $filename
     * @return mixed
     */
    public static function fileUploadToStorage($file, $directory, $filename = NULL){
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
            if($request->table == 'law_contract_property'){
                $del = [];
                $row_data = DB::table($request->table)->where($request->key, $request->value)->first();
                $del[] = $storage->delete($row_data->water_attachment_path);
                $del[] = $storage->delete($row_data->electricity_attachment_path);
                $del[] = $storage->delete($row_data->gas_attachment_path);
                $del[] = $storage->delete($row_data->tv_internet_attachment_path);
                $deleted = count($del) > 0 ? 1 : 0;
            }
            $record = DB::table($request->table)->where($request->key, $request->value)->delete();
        }else{
            DB::table($request->table)->where($request->key, $request->value)->update([$request->pathcolumn => NULL]);
        }
        if(!empty($request->pathvalue)){
            $deleted = $storage->delete($request->pathvalue);
        }
        if($record == 1 && $deleted == 1) $success == 1;
        $respons_arr = [
            'success' => $success,
            'message' => 'Data Saved Successfully',
            'data' => []
        ];
        return response()->json($respons_arr);
    }

}

Nijhu!@#456
