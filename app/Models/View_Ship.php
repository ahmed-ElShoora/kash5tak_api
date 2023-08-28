<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class View_Ship extends Model
{
    use HasFactory;
    protected $table = 'view_ships';
    protected $fillable = ['user_id','ship_id'];

    public function scopeGetviews($query,$id){
        $query->where('ship_id',$id);
    }
}
