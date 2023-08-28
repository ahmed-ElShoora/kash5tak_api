<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;
    protected $fillable = [
        'id',
        'name',
        'email',
        'address',
        'phone'
    ];

    public function scopeGetData($query,$id){
        return $query->where('id',$id)->first();
    }
}
