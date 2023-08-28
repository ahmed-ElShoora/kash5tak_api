<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\Product;
use App\Models\Product_Image;
use App\Models\Talabat;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Throwable;
use App\Http\Traits\YearsTrait;

class TalapatController extends Controller
{
    use YearsTrait;
    public function index(Request $request){
        try {
            Talabat::create([
                'product_id'=>$request->product_id,
                'many'=>$request->many,
                'customer_id'=>$request->customer_id,
                'size'=>$request->size,
                'price'=>$request->price,
            ]);
            $update = Product::where('id',$request->product_id)->first();
            $update->update([
                'many'=>$update->many - $request->many
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
    public function getTalapet(Request $request){
        try {
            $id_products = Product::select('id')->where('user_id',$request->user_id)->get();
            $datas_talapat = Talabat::whereIn('product_id',$id_products)->orderBy('id', 'desc')->paginate(4);
            foreach ($datas_talapat as $data){
                $data->product = Product::select(
                    'id',
                    'title_'.App::getLocale().' as title',
                    'price',
                    'desc_'.App::getLocale().' as desc',
                )->where('id',$data->product_id)->first();
                $data->product->image = asset('/'.Product_Image::select('logo')->where('product_id',$data->product_id)->first()->logo);
                $data->user_info = Customer::where('id',$data->customer_id)->first();
                $data->total = $data->many * $data->price;
                unset($data->product_id);
                unset($data->customer_id);
                unset($data->updated_at);
                unset($data->user_info->created_at);
                unset($data->user_info->updated_at);
            }
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>$datas_talapat
            ]);
        }catch (Throwable $e){
            return response()->json([
                'status'=>false,
                'msg'=>__('messages.error'),
                'error-code'=>6000
            ]);
        }
    }
    
    public function getStatistics(Request $request){
        try {
            $id = $request->user_id;
            $total = 0;
            $id_products = Product::select('id')->where('user_id',$id)->get();
            $data_talapats = Talabat::whereIn('product_id',$id_products)->get();
            foreach ($data_talapats as $data_talapat){
                $total += $data_talapat->many * $data_talapat->price;
            }
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>[
                    'total-earn'=>$total,
                    'years'=>$this->years($id),
                    'months'=>$this->months($id)
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
    
    public function moveTalap(Request $request){
        try {
            if(Talabat::find($request->id)){
                Talabat::find($request->id)->update([
                    'read'=>true
                    ]);
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
}
