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

class ClientController extends Controller {
    public function __construct(){
        $this->middleware('auth');
        $this->middleware('menu_permission');
    }

    public function ClientEntry(){
        return view('Law.client_entry');
    }
}

