<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Throwable;

class LoginController extends Controller
{
    public function index(){
        try {
            return view('admin.login');
        }catch (Throwable $e){
            return abort(404);
        }
    }

    public function login(Request $request){

        try {
            if (Auth::guard('admin')->attempt([
                'email'=>$request->email,
                'password'=>$request->password,
            ])){
                return redirect()->route('admin.dash');
            }else{
                return redirect()->back();
            }
        }catch (Throwable $e){
            return abort(404);
        }
    }
}
