<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Product_Image;
use App\Models\Ship;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Throwable;

class SearchControler extends Controller
{
    public function searchUsers(Request $request){
        try{
            $users = User::select(
                'name_'.App::getLocale().' as name',
                'phone',
                'address',
                'longitude',
                'latitude',
                'male',
                'female',
                'baby',
                'logo',
                'rate',
            )->where('name_'.App::getLocale(),'like','%'.$request->word.'%')->get();
            foreach ($users as $user){
                $user->logo = asset('/'.$user->logo);
            }
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>$users
            ]);
        }catch (Throwable $e){
            return response()->json([
                'status'=>false,
                'msg'=>__('messages.error'),
                'error-code'=>6000
            ]);
        }
    }

    public function searchAllProduct(Request $request){
        try{
            $products = Product::select(
                'id',
                'title_'.App::getLocale().' as title',
                'price',
                'desc_'.App::getLocale().' as desc',
                'many'
            )->where('title_'.App::getLocale(),'like','%'.$request->word.'%')->where('user_id',$request->user_id)->get();
            foreach ($products as $product){
                $product->image = asset('/'.Product_Image::select('logo')->where('product_id',$product->id)->first()->logo);
            }
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>$products
            ]);
        }catch (Throwable $e){
            return response()->json([
                'status'=>false,
                'msg'=>__('messages.error'),
                'error-code'=>6000
            ]);
        }
    }

    public function searchShip(Request $request){
        try{
            $datas = Ship::select(
                'id',
                'title_'.App::getLocale().' as title',
                'desc_'.App::getLocale().' as desc',
                'logo',
                'link',
                'phone'
            )->where('title_'.App::getLocale(),'like','%'.$request->word.'%')->get();
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
}
