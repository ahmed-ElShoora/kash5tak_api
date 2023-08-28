<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Privacy;
use App\Models\Seeting;
use Illuminate\Http\Request;
use Throwable;

class PrivacyPolicy extends Controller
{
    public function updatePrivacy(){
        try {
            $data = Privacy::find(1);
            $data_num = Seeting::where('var','earn_num')->first();
            $data_shoping = Seeting::where('var','shoping')->first();
            $data_num_vil = Seeting::where('var','earn_vil')->first();
            $data_shoping_vil = Seeting::where('var','shoping_vil')->first();
            return view('admin.privacy.index',compact('data','data_num','data_shoping','data_num_vil','data_shoping_vil'));
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function storePrivacy(Request $request){
        try {
            if($request->option == 1){
                $update = Privacy::find(1);
                $update->update([
                    'desc_ar'=>$request->desc_ar,
                    'desc_en'=>$request->desc_en
                ]);
            }else{
                Seeting::where('var','earn_num')->first()->update([
                    'value'=>$request->num
                    ]);
                    Seeting::where('var','earn_vil')->first()->update([
                    'value'=>$request->earn_vil
                    ]);
                    Seeting::where('var','shoping')->first()->update([
                    'value'=>$request->shoping
                    ]);
                    Seeting::where('var','shoping_vil')->first()->update([
                    'value'=>$request->shoping_vil
                    ]);
            }
            return redirect()->back();
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function updatePrivacySala(){
        try {
            $data = Privacy::find(2);
            return view('admin.privacy.sala.index',compact('data'));
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function storePrivacySala(Request $request){
        try {
            $update = Privacy::find(2);
            $update->update([
                'desc_ar'=>$request->desc_ar,
                'desc_en'=>$request->desc_en
            ]);
            return redirect()->back();
        }catch (Throwable $e){
            return view('error.error');
        }
    }
}
