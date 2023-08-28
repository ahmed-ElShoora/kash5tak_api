<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('user_id');
            $table->string('title_ar');
            $table->string('title_en');
            $table->string('category_id');
            $table->string('price');
            $table->string('many')->nullable();
            $table->string('desc_ar');
            $table->string('desc_en');
            $table->boolean('s')->nullable();
            $table->boolean('m')->nullable();
            $table->boolean('l')->nullable();
            $table->boolean('xl')->nullable();
            $table->boolean('2xl')->nullable();
            $table->boolean('3xl')->nullable();
            $table->boolean('4xl')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
};
