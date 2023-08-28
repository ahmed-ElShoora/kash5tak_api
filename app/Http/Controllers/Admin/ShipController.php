<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Ship;
use App\Models\User;
use App\Models\View_Ship;
use Throwable;
use Illuminate\Http\Request;
use App\Http\Traits\UplodeTrait;


class ShipController extends Controller
{
    use UplodeTrait;
    public function index(){
        try {
            $ships = Ship::get();
            return view('admin.ship.index',compact('ships'));
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function edit($id){
        try {
            $ship = Ship::find($id);
            return view('admin.ship.edit',compact('ship','id'));
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function update(Request $request){
        try {
            if ($request->logo != null) {
                $logo = $this->uploud($request->logo);
            }else{
                $logo = $request->old_logo;
            }
            Ship::find($request->id)->update([
                'title_ar'=>$request->title_ar,
                'title_en'=>$request->title_en,
                'desc_ar'=>$request->desc_ar,
                'desc_en'=>$request->desc_en,
                'phone'=>$request->phone,
                'link'=>$request->link,
                'logo'=>$logo
            ]);
            return redirect()->back();
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function delete($id){
        try {
            $delete = Ship::find($id);
            $delete->delete();
            View_Ship::where('ship_id',$id)->delete();
            return redirect()->back();
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function create(){
        try {
            return view('admin.ship.create');
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function store(Request $request){
        try {
            $logo = $this->uploud($request->logo);
            Ship::create([
                'title_ar'=>$request->title_ar,
                'title_en'=>$request->title_en,
                'desc_ar'=>$request->desc_ar,
                'desc_en'=>$request->desc_en,
                'phone'=>$request->phone,
                'link'=>$request->link,
                'logo'=>$logo
            ]);
            return redirect()->back();
        }catch (Throwable $e){
            return view('error.error');
        }
    }

    public function shipShow($id){
        try {
            $users_id = View_Ship::select('user_id')->where('ship_id',$id)->get();
            $datas = User::select('name_ar as name','address','email','phone')->whereIn('id',$users_id)->get();
            return view('admin.include.table',compact('datas'));
        }catch (Throwable $e){
            return view('error.error');
        }
    }
}
