<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ImageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('images')->insert([
            'splash_screen'=>'uploads/splash.jpg',
            'male_screen'=>'uploads/male.jpg',
            'female_screen'=>'uploads/female.jpg',
            'baby_screen'=>'uploads/baby.jpg',
        ]);
    }
}
