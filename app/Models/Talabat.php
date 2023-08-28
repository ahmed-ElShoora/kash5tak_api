<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Talabat extends Model
{
    use HasFactory;
    protected $table = 'talabats';
    protected $fillable = [
        'product_id',
        'many',
        'customer_id',
        'size',
        'price',
        'read'
    ];
}
