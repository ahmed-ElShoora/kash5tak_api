<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\Move;
use App\Models\Product;
use App\Models\Product_Image;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;
use Throwable;

class UserController extends Controller
{
    public function getUsers(Request $request){
        try{
            $users_id = Product::where('category_id',$request->category_id)
                ->select(DB::raw('user_id'))
                ->groupBy('user_id')
                ->get();
            $users = User::select(
                'id',
                'title_'.App::getLocale().' as title',
                'phone',
                'address',
                'longitude',
                'latitude',
                'male',
                'female',
                'baby',
                'logo',
                'rate',
            )->whereIn('id',$users_id)->get();
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

    public function getAllProduct(Request $request){
        try{
            if ($request->category_id == null){
                $products = Product::select(
                    'id',
                    'title_'.App::getLocale().' as title',
                    'price',
                    'desc_'.App::getLocale().' as desc',
                    'many'
                )->where('user_id',$request->user_id)->latest()->paginate(8);
                foreach ($products as $product){
                    $product->image = asset('/'.Product_Image::select('logo')->where('product_id',$product->id)->first()->logo);
                }
            }else{
                $products = Product::select(
                    'title_'.App::getLocale().' as title',
                    'price',
                    'desc_'.App::getLocale().' as desc',
                    'many'
                )->where('user_id',$request->user_id)->where('category_id',$request->category_id)->latest()->paginate(8);
                foreach ($products as $product){
                    $product->image = asset('/'.Product_Image::select('logo')->where('product_id',$product->id)->first()->logo);
                }
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

    public function productInfo(Request $request){
        try{
            $product = Product::select(
                'id',
                'title_'.App::getLocale().' as title',
                'price',
                'many',
                'desc_'.App::getLocale().' as desc',
                's',
                'm',
                'l',
                'xl',
                '2xl',
                '3xl',
                '4xl'
            )->where('id',$request->product_id)->first();
            $images = Product_Image::select('id','logo')->where('product_id',$product->id)->get();
            foreach ($images as $image){
                $image->logo = 'https://kash5tak.com/'.$image->logo;
            }
            $product->images = $images;
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>$product
            ]);
        }catch (Throwable $e){
            return response()->json([
                'status'=>false,
                'msg'=>__('messages.error'),
                'error-code'=>6000
            ]);
        }
    }

    public function insertUser(Request $request){
        try{
            $data = Customer::create([
                'name'=>$request->name,
                'email'=>$request->email,
                'phone'=>$request->phone,
                'address'=>$request->address
            ]);
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>$data->id
            ]);
        }catch (Throwable $e){
            return response()->json([
                'status'=>false,
                'msg'=>__('messages.error'),
                'error-code'=>6000
            ]);
        }
    }

    public function checkUserHere(Request $request){
        try{
            $data_count = Customer::where('phone',$request->phone)->count();
            if ($data_count == 1){
                $data = Customer::where('phone',$request->phone)->first();
                return response()->json([
                    'status'=>true,
                    'msg'=>__('messages.success'),
                    'data'=>$data->id
                ]);
            }else{
                return response()->json([
                    'status'=>false,
                    'msg'=>__('messages.error'),
                    'error-code'=>6007
                ]);
            }
        }catch (Throwable $e){
            return response()->json([
                'status'=>false,
                'msg'=>__('messages.error'),
                'error-code'=>6000
            ]);
        }
    }

    public function moveUser(Request $request){
        try{
            if($request->costomer_id != null && $request->user_id != null){
                Move::create([
                    'customer_id'=>$request->costomer_id,
                    'user_id'=>$request->user_id
                ]);
                return response()->json([
                    'status'=>true,
                    'msg'=>__('messages.success'),
                    'data'=>''
                ]);
            }else{
                return response()->json([
                    'status'=>false,
                    'msg'=>__('messages.error'),
                    'error-code'=>6008
                ]);
            }
        }catch (Throwable $e){
            return response()->json([
                'status'=>false,
                'msg'=>__('messages.error'),
                'error-code'=>6000
            ]);
        }
    }
}
