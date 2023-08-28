<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Throwable;

class CategoryController extends Controller
{
    public function index(Request $request){
        try {
            if($request->type == null){
                $categories = Category::select('id','title_'.App::getLocale().' as title','logo')->get();
            }else{
                $categories = Category::select('id','title_'.App::getLocale().' as title','logo')->where('type',$request->type)->get();
            }
            foreach ($categories as $category){
                $category->logo = asset('/'.$category->logo);
            }
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>$categories
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
