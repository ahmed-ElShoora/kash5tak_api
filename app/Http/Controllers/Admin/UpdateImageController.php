<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Image;
use Illuminate\Http\Request;
use App\Http\Traits\UplodeTrait;
use Throwable;

class UpdateImageController extends Controller
{
    use UplodeTrait;
    public function index(){

        try {
            $data = Image::first();
            return view('admin.images.index',compact('data'));
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function store(Request $request){
        try{
            $splash_screen = $request->splash_screen_old;
            $male_screen = $request->male_screen_old;
            $female_screen = $request->female_screen_old;
            $baby_screen = $request->baby_screen_old;

            if ($request->splash != null){
                $splash_screen = $this->uploud($request->splash);
            }

            if ($request->male != null){
                $male_screen = $this->uploud($request->male);
            }

            if ($request->female != null){
                $female_screen = $this->uploud($request->female);
            }

            if ($request->baby != null){
                $baby_screen = $this->uploud($request->baby);
            }

            $update = Image::first();
            $update->update([
                'splash_screen'=>$splash_screen,
                'male_screen'=>$male_screen,
                'female_screen'=>$female_screen,
                'baby_screen'=>$baby_screen
            ]);
            return redirect()->back();
            //return response()->json($request->all());
        }catch (Throwable $e){
            return view('error.error');
        }
    }
}
