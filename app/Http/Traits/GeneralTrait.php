<?php

namespace App\Http\Traits;

trait GeneralTrait {

    public function reSuccess($msg,$data){
        return response()->json([
            'status'=>true,
            'msg'=>$msg,
            'data'=>$data
        ]);
    }

    public function reError($msg,$data){
        return response()->json([
            'status'=>false,
            'msg'=>$msg,
            'error-code'=>$data
        ]);
    }

}
