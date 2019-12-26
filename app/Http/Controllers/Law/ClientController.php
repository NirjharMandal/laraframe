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

    public function clientEntry(){
        return view('Law.client_entry');
    }

    public function saveBasicInfo(Request $request){
        dd($request->all());
        //$respons_arr = [];
        //return response()->json($respons_arr);
    }
    public function savePassportInfo(Request $request){
        dbg($request->all());
        if($request->hasFile('passport_attachment_path')){
            //dd($request->passport_attachment_path);
            $storage = Storage::disk('attachment');
            $directory = 'client_files';
            if (!$storage->has($directory)) {
                $storage->makeDirectory($directory, 0777, true, true);
            }

            $extension = $request->file('passport_attachment_path')->extension();
            echo $path = $storage->putFileAs($directory, $request->file('passport_attachment_path'), 'nirjhar.'.$extension);





        }else{
            echo 'pai nai';
        }
    }


}

