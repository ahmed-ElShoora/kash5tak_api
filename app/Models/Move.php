<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Move extends Model
{
    use HasFactory;
    protected $table = 'move';
    protected $fillable = ['customer_id','user_id'];

    public function scopeGetMoves($query,$id){
        return $query->where('user_id',$id)->count();
    }
}
