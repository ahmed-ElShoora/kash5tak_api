<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Image;
use Illuminate\Http\Request;
use App\Http\Traits\GeneralTrait;
use Throwable;

class ImageStart extends Controller
{
    use GeneralTrait;
    public function index(){
        try {
            $data = Image::first();
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>[
                    'splash' => asset('/' . $data->splash_screen),
                    'male' => asset('/' . $data->male_screen),
                    'female' => asset('/' . $data->female_screen),
                    'baby' => asset('/' . $data->baby_screen),
                ]
            ]);
        }catch (Throwable $e){
            return response()->json([
                'status'=>false,
                'msg'=>__('messages.error'),
                'error-code'=>6000
            ]);
        }
    }
    
    
            
    public function version(){
        try {
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>[
                    'ver' => '1',
                    'link' => 'test.null',
                ]
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
