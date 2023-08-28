<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Throwable;

class HomeController extends Controller
{
    public function index(){
        try {
            return view('admin.home');
        }catch (Throwable $e){
            return view('error.error');
        }
    }
}
