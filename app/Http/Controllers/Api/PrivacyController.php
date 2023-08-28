<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Privacy;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Throwable;

class PrivacyController extends Controller
{
    public function privacyPolicy(){
        try{
            $data = Privacy::select('desc_'.App::getLocale().' as desc')->where('id',1)->first();
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>$data->desc
            ]);
        }catch (Throwable $e){
            return response()->json([
                'status'=>false,
                'msg'=>__('messages.error'),
                'error-code'=>6000
            ]);
        }
    }

    public function privacyPolicySala(){
        try{
            $data = Privacy::select('desc_'.App::getLocale().' as desc')->where('id',2)->first();
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>$data->desc
            ]);
        }catch (Throwable $e){
            return response()->json([
                'status'=>false,
                'msg'=>__('messages.error'),
                'error-code'=>6000
            ]);
        }
    }
}
