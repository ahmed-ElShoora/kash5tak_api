<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Seeting;
use App\Models\Product_Image;
use Illuminate\Http\Request;
use \App\Http\Traits\UplodeTrait;
use Throwable;
use Illuminate\Support\Facades\App;

class ProductController extends Controller
{
    use UplodeTrait;
    public function createProduct(Request $request){
        try {
            $product = Product::create([
                'user_id'=>$request->user_id,
                'title_ar'=>$request->title_ar,
                'title_en'=>$request->title_en,
                'category_id'=>$request->category_id,
                'price'=>$request->price,
                'many'=>$request->many,
                'desc_ar'=>$request->desc_ar,
                'desc_en'=>$request->desc_en,
                's'=>$request->s,
                'm'=>$request->m,
                'l'=>$request->l,
                'xl'=>$request->xl,
                '2xl'=>$request->two_xl,
                '3xl'=>$request->three_xl,
                '4xl'=>$request->four_xl,
            ]);

            if($request->hasFile('image')){
                foreach($request->image as $image){
                    $logo = $this->uploud($image);
                    Product_Image::create([
                        'product_id'=>$product->id,
                        'logo'=>$logo,
                    ]);
                }
            }
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

    public function latestProduct(Request $request){
        try {
            $datas = Product::select(
                'id',
                'user_id',
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
                '4xl',
                )->where('user_id',$request->user_id)->orderBy('created_at', 'desc')->take(3)->get();
            foreach($datas as $data){
                $data->image = Product_Image::select('id','logo')->where('product_id',$data->id)->first();
                $data->image = asset('/'.$data->image->logo);
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

    public function deleteProduct(Request $request){
        try {
            Product::find($request->id)->delete();
            Product_Image::where('product_id',$request->id)->delete();
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

    public function deleteProductImage(Request $request){
        try {
            Product_Image::where('id',$request->id)->delete();
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

    public function updateProduct(Request $request){
        try {
            $product = Product::find($request->id);
            $product->update([
                'title_ar'=>$request->title_ar,
                'title_en'=>$request->title_en,
                'category_id'=>$request->category_id,
                'price'=>$request->price,
                'many'=>$request->many,
                'desc_ar'=>$request->desc_ar,
                'desc_en'=>$request->desc_en,
                's'=>$request->s,
                'm'=>$request->m,
                'l'=>$request->l,
                'xl'=>$request->xl,
                '2xl'=>$request->two_xl,
                '3xl'=>$request->three_xl,
                '4xl'=>$request->four_xl,
            ]);

            if($request->hasFile('image')){
                foreach($request->image as $image){
                    $logo = $this->uploud($image);
                    Product_Image::create([
                        'product_id'=>$request->id,
                        'logo'=>$logo,
                    ]);
                }
            }
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

    public function showProduct(Request $request){
        try {
            $product = Product::where('id',$request->id)->first();
            $images = Product_Image::select('id','logo')->where('product_id',$request->id)->get();
            foreach ($images as $image){
                $image->logo = asset('/'.$image->logo);
            }
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>[
                    'product_data'=>$product,
                    'images'=>$images
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

    public function getProduct(Request $request){
        try {
            $products = Product::where('user_id',$request->user_id)->paginate(3);
            foreach ($products as $product){
                $product->images = Product_Image::select('id','logo')->where('product_id',$product->id)->get();
                foreach ($product->images as $image){
                    $image->logo = asset('/'.$image->logo);
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
    
    public function reEarnNum(){
        try {
            $owner_earn = Seeting::where('var','earn_num')->first();
            $owner_earn_active = Seeting::where('var','earn_vil')->first();
            $shoping_earn = Seeting::where('var','shoping')->first();
            $shoping_earn_active = Seeting::where('var','shoping_vil')->first();
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>[
                    'owner_earn'=>$owner_earn->value,
                    'owner_earn_active'=>$owner_earn_active->value,
                    'shoping_earn'=>$shoping_earn->value,
                    'shoping_earn_active'=>$shoping_earn_active->value
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
