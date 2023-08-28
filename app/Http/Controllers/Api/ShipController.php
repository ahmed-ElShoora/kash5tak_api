<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Ship;
use App\Models\View_Ship;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Throwable;

class ShipController extends Controller
{
    public function ship(){
        try{
            $datas = Ship::select(
                'id',
                'title_'.App::getLocale().' as title',
                'desc_'.App::getLocale().' as desc',
                'logo',
                'link',
                'phone'
            )->get();
            foreach ($datas as $data){
                $data->logo = asset('/'.$data->logo);
            }
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>$datas
            ]);
        }catch (Throwable $e){
            return response()->json([
                'status'=>false,
                'msg'=>__('messages.error'),
                'error-code'=>6000
            ]);
        }
    }

    public function shipView(Request $request){
        try{
            View_Ship::create([
                'user_id'=>$request->user_id,
                'ship_id'=>$request->ship_id
            ]);
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>''
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
