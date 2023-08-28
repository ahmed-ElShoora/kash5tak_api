<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\Admin\LoginController;
use App\Http\Controllers\Admin\PrivacyPolicy;
use App\Http\Controllers\Admin\ShipController;
use App\Http\Controllers\Admin\UpdateImageController;
use App\Http\Controllers\Admin\VendorController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Admin Routes
|--------------------------------------------------------------------------
|
| Here is where you can register Admin routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "Admin" middleware group. Now create something great!
|
*/



Route::get('/admin-login',[LoginController::class,'index'])->name('admin.login');
Route::post('/admin-login',[LoginController::class,'login'])->name('admin.login');


Route::group(['middleware'=>'auth:admin'],function (){
   Route::get('/dashboard',[HomeController::class,'index'])->name('admin.dash');
   Route::get('/admins',[AdminController::class,'index'])->name('admin.admins');
   Route::get('/admin-delete-{id}',[AdminController::class,'delete'])->name('admin.admin.delete');
   Route::get('/admin-create',[AdminController::class,'create'])->name('admin.create.admin');
   Route::post('/admin-create',[AdminController::class,'store'])->name('admin.create.admin.store');
   Route::get('/vendor',[VendorController::class,'index'])->name('admin.vendor');
   Route::get('/vendor-delete-{id}',[VendorController::class,'delete'])->name('admin.vendor.delete');
   Route::get('/images',[UpdateImageController::class,'index'])->name('admin.images');
   Route::post('/images',[UpdateImageController::class,'store'])->name('admin.images.store');
   Route::get('/ship',[ShipController::class,'index'])->name('admin.ship');
   Route::get('/ship-delete-{id}',[ShipController::class,'delete'])->name('admin.ship.delete');
   Route::get('/ship-show-{id}',[ShipController::class,'shipShow'])->name('admin.ship.show');
   Route::get('/ship-create',[ShipController::class,'create'])->name('admin.create.ship');
   Route::post('/ship-create',[ShipController::class,'store'])->name('admin.ship.store');
   Route::get('/ship-create-{id}',[ShipController::class,'edit'])->name('admin.ship.edit');
   Route::post('/ship-create',[ShipController::class,'update'])->name('admin.ship.update');
   Route::get('/category',[CategoryController::class,'index'])->name('admin.category');
   Route::get('/category-delete-{id}',[CategoryController::class,'delete'])->name('admin.category.delete');
   Route::get('/category-create',[CategoryController::class,'create'])->name('admin.create.category');
   Route::post('/category-create',[CategoryController::class,'store'])->name('admin.category.store');
   Route::get('/vendor-show-contact-{id}',[VendorController::class,'showViews'])->name('admin.vendor.show');
   Route::get('/vendor-info-{id}',[VendorController::class,'showVendorInfo'])->name('admin.vendor.info');
      Route::post('/vendor-info-store-rate',[VendorController::class,'showVendorInfoStoreRate'])->name('admin.vendor.info.store.rate');
   Route::get('/vendor-talapats-{id}',[VendorController::class,'showVendorTalapats'])->name('admin.vendor.talapats');
   Route::get('/privacy-policy',[PrivacyPolicy::class,'updatePrivacy'])->name('privacy.policy.update');
   Route::post('/privacy-policy',[PrivacyPolicy::class,'storePrivacy'])->name('privacy.policy.store');
   Route::get('/privacy-policy-sala',[PrivacyPolicy::class,'updatePrivacySala'])->name('privacy.policy.sala.update');
   Route::post('/privacy-policy-sala',[PrivacyPolicy::class,'storePrivacySala'])->name('privacy.policy.sala.store');
});
