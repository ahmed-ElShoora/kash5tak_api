<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\Move;
use App\Models\Product;
use App\Models\Product_Image;
use App\Models\Talabat;
use App\Models\User;
use App\Models\View_Ship;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\App;
use Throwable;

class VendorController extends Controller
{
    public function index(){
        try {
            $users = User::get();
            return view('admin.vendor.index',compact('users'));
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function delete($id){
        try {
            $ids_product = Product::select('id')->where('user_id',$id)->get();
            User::find($id)->delete();
            Product::where('user_id',$id)->delete();
            Product_Image::whereIn('product_id',$ids_product)->delete();
            Talabat::whereIn('product_id',$ids_product)->delete();
            Move::where('user_id',$id)->delete();
            View_Ship::where('user_id',$id)->delete();
            return redirect()->back();
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function showViews($id){
        try {
            $costomers_id = Move::select('customer_id')->where('user_id',$id)->get();
            $datas = Customer::whereIn('id',$costomers_id)->get();
            return view('admin.include.table',compact('datas'));
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function showVendorInfo($id){
        try {
            $total = 0;
            $id_products = Product::select('id')->where('user_id',$id)->get();
            $data_talapats = Talabat::whereIn('product_id',$id_products)->get();
            foreach ($data_talapats as $data_talapat){
                $total += $data_talapat->many * $data_talapat->price;
            }
            $data = User::find($id);
            $data->id = $id;
            $data->total = $total;
            $response = Product::select(
                    'id',
                    'title_'.App::getLocale().' as title',
                    'price',
                    'desc_'.App::getLocale().' as desc',
                    'many',
                )->where('user_id',$id)->get();
                foreach ($response as $respons){
                    $respons->image = asset('/'.Product_Image::select('logo')->where('product_id',$respons->id)->first()->logo);
                }
            //return $response;
            return view('admin.vendor.info',compact('data','response'));
        }catch (Throwable $e){
            return view('error.error');
        }
    }
    
    public function showVendorInfoStoreRate(Request $request){
        try {
            User::find($request->id)->update([
                'rate'=>$request->num
                ]);
            return redirect()->back();
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function showVendorTalapats($id){
        try {
            $id_products = Product::select('id')->where('user_id',$id)->get();
            $datas = Talabat::whereIn('product_id',$id_products)->get();
            return view('admin.vendor.talabat',compact('datas'));
        }catch (Throwable $e){
            return view('error.error');
        }
    }
}
