<?php
/**
 * Created by PhpStorm.
 * User: KHAIRUL
 * Date: 11/13/2018
 * Time: 6:11 PM
 */
namespace App\Http\Controllers\Customer;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Validator;
use Auth;
use URL;
use DB;
use Input;
//use Validate

class CustomerController extends Controller {

    public function __construct(){
        $this->middleware('auth');
        $this->middleware('menu_permission');
    }

    public function createNewCustomer($customer_id = '') {
//        $customer_id = Input::get('customers_id');
        $customers =[];
        $customer_contact_details = [];
        if(!empty($customer_id)) {
            $customers = DB::table('customers')
                ->where('customers_id','=',$customer_id)->get();
            $customer_contact_details = DB::table('customer_contact_persons')
                ->where('customers_id','=',$customer_id)->get();
            echo view('Customer.new_customer_creation', compact('customers','customer_contact_details'));
        } else {
            $customer_type_id = '';
            echo view('Customer.new_customer_creation', compact('customer_type_id','customers'));
        }
    }
    //Validation Checking
    public function checkEmailValidity($email='') {
        $email = Input::get('email');
        $isAvail = DB::table('customers')->where('email', $email)->doesntExist();
        if ($isAvail) {
            return http_response_code(200); // Email is good
        }else {
            http_response_code(400);
//           return  http_response_code(400);
            return response(['title' => trans('web.errors.duplicate_title')], 422);
        }
    }

//    public function checkContactValidity($contact_number='') {
//        $contact_number = Input::get('contact_number');
//        $isAvail = DB::table('customers')->where('')
//    }
//Email Duplicity Checking
    public function chkEmailValidity(Request $request){
        $customers_id  = $request->customers_id;
        $email = $request->email;
        if($customers_id) {
            $customers = DB::table('customers')->where([
                ['customers_id', '<>', $customers_id],
                ['email', '=', $email],
            ])->get();

//           dd($customers);
           if($customers->isEmpty()){

           } else {
               echo "Email already exists";
           }


        } else {
            $isAvail = DB::table('customers')->where('email', $email)->doesntExist();
            if(!$isAvail) {
                echo "Email already exists";
            }

        }

    }

    public function storeCustomer(Request $request) {
        //Validation
        if($request->hasfile('inpFile')) {
         $file = $request->file('inpFile');
         $name = $file->getClientOriginalName();
         $file->move(public_path().'/img/',$name);
         $img_location = '/img/'.$name;
        }
        else {
            $img_location = '/img/Avatar.png';
        }
        $new_customer = $request->all();
//        dd($new_customer);
        $customers_id = $new_customer['customers_id'];
        //Validation Check
//        $validatedData = $request->validate([
//            'email'=>"required|unique:customers,email",
//            'contact_number'=>'required|unique:customers,contact_number',
//        ]);
        $customer_types_id = $new_customer['customer_types_id'];
        $customer_name = $new_customer['customer_name'];
        $customer_code = $new_customer['customer_code'];
        $contact_number= $new_customer['contact_number'];
        $owner_name = $new_customer['owner_name'];
        $email = $new_customer['email'];
        $nid_type = $new_customer['nid_type'];
        $nid_number = $new_customer['nid_number'];
        $web_site = $new_customer['web_site'];
        $tin_number = $new_customer['tin_number'];
        $customer_payment_terms_id = $new_customer['customer_payment_terms_id'];
        $credit_limit = $new_customer['credit_limit'];
        $trade_license_number = $new_customer['trade_license_number'];
        $trade_license_expiry = $new_customer['trade_license_expiry'];
        $address_billing = $new_customer['address_billing'];
        $address_shipping = $new_customer['address_shipping'];
//For Customer Contact Details
        $contact_type_dets = $new_customer['contact_type_det'];
        if($customers_id) {
            //Updating Customer Contact Details
            DB::table('customer_contact_persons')->where('customers_id',$customers_id)->delete();
            $contact_details_insert_data = array();
            foreach ($contact_type_dets as $key =>$value) {
                $contact_details_insert_data['customers_id']=$customers_id;
                $contact_details_insert_data['contact_person_name']=$new_customer['contact_person_name_det'][$key];
                $contact_details_insert_data['contact_type']=$value;
                $contact_details_insert_data['contact_person_phone']=$new_customer['contact_phone_det'][$key];
                $contact_details_insert_data['contact_person_address']=$new_customer['contact_address_det'][$key];
                $contact_details_insert_data['created_at']= date('Y-m-d');
                $contact_details_insert_data['updated_at']= date('Y-m-d');
                $contact_details_insert_data['created_by']=Auth::id();
                $contact_details_insert_data['updated_by']=Auth::id();
                DB::table('customer_contact_persons')->insert($contact_details_insert_data);
            }

            //End of Customer Contact Details
           $updateDetails = array(
               'customer_types_id' => $customer_types_id,
               'customers_name'=>$customer_name,
               'customers_code'=>$customer_code,
               'contact_number'=>$contact_number,
               'owner_name'=>$owner_name,
               'email'=>$email,
               'nid_type'=>$nid_type,
               'nid_number'=>$nid_number,
               'web_site'=>$web_site,
               'tin_number'=>$tin_number,
               'customer_payment_terms_id'=>$customer_payment_terms_id,
               'credit_limit'=>$credit_limit,
               'trade_license_number'=>$trade_license_number,
               'trade_license_expiry'=>$trade_license_expiry,
               'address_billing'=>$address_billing,
               'address_shipping'=>$address_shipping,
               'updated_at' => date('Y-m-d'),
               'updated_by' => Auth::id()
           );
if($img_location != '/img/Avatar.png')
{
    $updateDetails['img_location'] = $img_location;
}
           DB::table('customers')
               ->where('customers_id',$customers_id)
               ->update($updateDetails);
       } else {
           DB::table('customers')->insert([
               [
                   'customer_types_id' => $customer_types_id,
                   'customers_name'=>$customer_name,
                   'customers_code'=>$customer_code,
                   'contact_number'=>$contact_number,
                   'owner_name'=>$owner_name,
                   'email'=>$email,
                   'nid_type'=>$nid_type,
                   'nid_number'=>$nid_number,
                   'web_site'=>$web_site,
                   'tin_number'=>$tin_number,
                   'customer_payment_terms_id'=>$customer_payment_terms_id,
                   'credit_limit'=>$credit_limit,
                   'trade_license_number'=>$trade_license_number,
                   'trade_license_expiry'=>$trade_license_expiry,
                   'address_billing'=>$address_billing,
                   'address_shipping'=>$address_shipping,
                   'img_location'=>$img_location,
                   'created_at' => date('Y-m-d'),
                   'created_by' => Auth::id()
               ]
           ]);

            $contact_details_insert_data = array();
            $customers_id_det= DB::getPdo()->lastInsertId();
            foreach ($contact_type_dets as $key =>$value) {
                $contact_details_insert_data['customers_id']=$customers_id_det;
                $contact_details_insert_data['contact_person_name']=$new_customer['contact_person_name_det'][$key];
                $contact_details_insert_data['contact_type']=$value;
                $contact_details_insert_data['contact_person_phone']=$new_customer['contact_phone_det'][$key];
                $contact_details_insert_data['contact_person_address']=$new_customer['contact_address_det'][$key];
                $contact_details_insert_data['created_at']= date('Y-m-d');
                $contact_details_insert_data['created_by']=Auth::id();
//                print_r($contact_details_insert_data);
                DB::table('customer_contact_persons')->insert($contact_details_insert_data);
            }

//        dd($contact_details_insert_data);
       }
        return redirect('grid/customer');

    }

    public function deleteCustomer(Request $request){
        DB::table('customers')->whereIn('customers_id', explode(',',$request->customers_ids))->delete();
        return response()->json(['status'=>'success', 'message'=>'Customers Deleted Successfully']);
    }

}
