<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $fillable = [
        'id',
        'user_id',
        'title_ar',
        'title_en',
        'category_id',
        'price',
        'many',
        'desc_ar',
        'desc_en',
        's',
        'm',
        'l',
        'xl',
        '2xl',
        '3xl',
        '4xl',
    ];

    public function scopeGetTitle($query,$id){
        return $query->where('id',$id)->first()->title_ar;
    }
}
