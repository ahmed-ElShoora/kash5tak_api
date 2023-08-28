<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Mail\VerifyMail;
use App\Models\Category;
use App\Models\Move;
use App\Models\Product;
use App\Models\Product_Image;
use App\Models\Talabat;
use App\Models\User;
use App\Models\View_Ship;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;

use App\Http\Traits\UplodeTrait;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Throwable;

class LoginController extends Controller
{
    use UplodeTrait;
    public function signup(Request $request){
        try {
            if (User::where('email',$request->email)->count() != 1){
                $logo = $this->uploud($request->logo);
                $data = User::create([
                    'name_ar'=>$request->name_ar,
                    'name_en'=>$request->name_en,
                    'email'=>$request->email,
                    'password'=>Hash::make($request->password),
                    'phone'=>$request->phone,
                    'address'=>$request->address,
                    'longitude'=>$request->longitude,
                    'latitude'=>$request->latitude,
                    'title_ar'=>$request->title_ar,
                    'title_en'=>$request->title_en,
                    'male'=>$request->male,
                    'female'=>$request->female,
                    'baby'=>$request->baby,
                    'logo'=>$logo,
                ]);
                Mail::to($request->email)->send(new VerifyMail($request->email,$data->created_at));
                return response()->json([
                    'status'=>true,
                    'msg'=>__('messages.verify'),
                    'data'=>''
                ]);
            }else{
                return response()->json([
                    'status'=>false,
                    'msg'=>__('messages.error'),
                    'error-code'=>6003
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

    public function DeleteUser(Request $request){
        try {
            $id = $request->user_id;
            $ids_product = Product::select('id')->where('user_id',$id)->get();
            User::find($id)->delete();
            Product::where('user_id',$id)->delete();
            Product_Image::whereIn('product_id',$ids_product)->delete();
            Talabat::whereIn('product_id',$ids_product)->delete();
            Move::where('user_id',$id)->delete();
            View_Ship::where('user_id',$id)->delete();
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

    public function login(Request $request){
        try{

            if (User::where('email',$request->email)->count() != 1){
                return response()->json([
                    'status'=>false,
                    'msg'=>__('messages.error'),
                    'error-code'=>6003
                ]);
            }else{
                $user_data = User::where('email',$request->email)->first();
                if ($user_data->email_verified_at != null){
                    try {

                        $credentials = request(['email', 'password']);

                        if (! $token = Auth::guard('user-api')->attempt($credentials)) {
                            return response()->json([
                                'status'=>false,
                                'msg'=>__('messages.error'),
                                'error-code'=>6004
                            ]);
                        }


                        $user_data ->token = $token;

                        return response()->json([
                            'status'=>true,
                            'msg'=>__('messages.success'),
                            'data'=>$user_data
                        ]);
                    } catch (\Exception $ex) {
                        return response()->json([
                            'status'=>false,
                            'msg'=>__('messages.error'),
                            'error-code'=>6005
                        ]);
                    }
                }else{
                    Mail::to($request->email)->send(new VerifyMail($user_data->email,$user_data->created_at));
                    return response()->json([
                        'status'=>false,
                        'msg'=>__('messages.verify'),
                        'error-code'=>6005
                    ]);
                }
            }
        }catch (Throwable $e){
            return response()->json([
            'status'=>false,
            'msg'=>__('messages.error'),
            'error-code'=>6000
            ]);
        }
    }

    public function verify($email,$password){
        User::where('email',$email)->where('created_at',$password)->update([
            'email_verified_at'=>now()
        ]);
        return view('api.verifier');
    }

    public function logout(Request $request){
        try {
            $token = $request->header('auth-token');
            if($token){

                JWTAuth::setToken($token)->invalidate();
                return response()->json([
                    'status'=>true,
                    'msg'=>__('messages.success'),
                    'data'=>''
                ]);

            }else{
                return response()->json([
                    'status'=>false,
                    'msg'=>__('messages.error'),
                    'error-code'=>6006
                ]);
            }
        }catch (\Tymon\JWTAuth\Exceptions\TokenInvalidException $e){
            return response()->json([
                'status'=>false,
                'msg'=>__('messages.error'),
                'error-code'=>6000
            ]);
        }
    }

    public function updateUser(Request $request){
        try{
            $data_user = User::where('id',$request->user_id)->first();
            if ($request->password != null){
                $password = Hash::make($request->password);
            }else{
                $password = $data_user->password;
            }
            if ($request->logo != null){
                $logo = $this->uploud($request->logo);
            }else{
                $logo = $data_user->logo;
            }
            if ($request->longitude != null && $request->latitude != null){
                $longitude = $request->longitude;
                $latitude = $request->latitude;
            }else{
                $longitude = $data_user->longitude;
                $latitude = $data_user->latitude;
            }
            $update = User::find($request->user_id);
            $update->update([
                'name_ar'=>$request->name_ar,
                'name_en'=>$request->name_en,
                'password'=>$password,
                'phone'=>$request->phone,
                'address'=>$request->address,
                'longitude'=>$longitude,
                'latitude'=>$latitude,
                'title_ar'=>$request->title_ar,
                'title_en'=>$request->title_en,
                'male'=>$request->male,
                'female'=>$request->female,
                'baby'=>$request->baby,
                'logo'=>$logo,
            ]);
            return response()->json([
                'status'=>true,
                'msg'=>'Success',
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

    public function showUser(Request $request){
        try {
            $user_data = User::where('id',$request->id)->first();
            $user_data->logo = asset('/'.$user_data->logo);
            return response()->json([
                'status'=>true,
                'msg'=>__('messages.success'),
                'data'=>$user_data
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
