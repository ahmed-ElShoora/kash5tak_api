<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ship extends Model
{
    use HasFactory;
    protected $fillable = [
        'title_ar','title_en','desc_ar','desc_en','logo','link','phone'
    ];
}
