<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Product_Image;
use App\Models\Ship;
use Illuminate\Http\Request;
use App\Http\Traits\UplodeTrait;
use Illuminate\Support\Facades\DB;
use Throwable;

class CategoryController extends Controller
{
    use UplodeTrait;
    public function index(){
        try {
            $categories = Category::get();
            return view('admin.category.index',compact('categories'));
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function delete($id){
        try {
            Category::find($id)->delete();
            $products_in_category_id = Product::where('category_id',$id)
                ->select(DB::raw('id'))
                ->groupBy('id')
                ->get();
            Product_Image::whereIn('product_id',$products_in_category_id)->delete();
            Product::where('category_id',$id)->delete();
            return redirect()->back();
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function create(){
        try {
            return view('admin.category.create');
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function store(Request $request){
        try {
            $logo = $this->uploud($request->logo);
            Category::create([
                'title_ar'=>$request->title_ar,
                'title_en'=>$request->title_en,
                'logo'=>$logo,
                'type'=>$request->type
            ]);
            return redirect()->back();
        }catch (Throwable $e){
            return view('error.error');
        }
    }
}
