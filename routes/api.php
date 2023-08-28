<?php

use App\Http\Controllers\Api\ImageStart;
use App\Http\Controllers\Api\LoginController;
use App\Http\Controllers\Api\PrivacyController;
use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\SearchControler;
use App\Http\Controllers\Api\ShipController;
use App\Http\Controllers\Api\TalapatController;
use App\Http\Controllers\Api\UserController;
use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\Api\CategoryController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group([
    'middleware'=>['changeLang','api.password']
],function (){
    
    Route::get('/ver',[ImageStart::class,'version']);
    Route::get('/images-start',[ImageStart::class,'index']);
    Route::post('/sign-up',[LoginController::class,'signup']);
    Route::post('/login',[LoginController::class,'login']);
    Route::post('/categories',[CategoryController::class,'index']);
    Route::post('/get-customer', [UserController::class,'getUsers']);
    Route::post('/search-customer', [SearchControler::class,'searchUsers']);
    Route::post('/get-all-product', [UserController::class,'getAllProduct']);
    Route::post('/search-all-product', [SearchControler::class,'searchAllProduct']);
    Route::post('/product-info', [UserController::class,'productInfo']);
    Route::post('/check-customer-here', [UserController::class,'checkUserHere']);
    Route::post('/insert-customer', [UserController::class,'insertUser']);
    Route::post('/move-customer', [UserController::class,'moveUser']);
    Route::get('/privacy-policy', [PrivacyController::class,'privacyPolicy']);
    Route::get('/privacy-policy-sala', [PrivacyController::class,'privacyPolicySala']);
    Route::post('/add-buy-operation', [TalapatController::class,'index']);
    Route::post('/latest-product', [ProductController::class,'latestProduct']);
    Route::get('/earn-num', [ProductController::class,'reEarnNum']);
    Route::post('/read-talap', [TalapatController::class,'moveTalap']);
    Route::group([
        'middleware' => 'api.guard:user-api',
    ], function () {
        Route::post('/logout', [LoginController::class,'logout']);
        Route::post('/delete-user', [LoginController::class,'DeleteUser']);
        Route::post('/get-product', [ProductController::class,'getProduct']);
        Route::post('/create-product', [ProductController::class,'createProduct']);
        Route::post('/update-product', [ProductController::class,'updateProduct']);
        Route::post('/delete-product', [ProductController::class,'deleteProduct']);
        Route::post('/delete-product-image', [ProductController::class,'deleteProductImage']);
        Route::post('/show-product', [ProductController::class,'showProduct']);
        Route::post('/show-user', [LoginController::class,'showUser']);
        Route::post('/update-user', [LoginController::class,'updateUser']);
        Route::get('/ship', [ShipController::class,'ship']);
        Route::post('/search-ship', [SearchControler::class,'searchShip']);
        Route::post('/ship-view', [ShipController::class,'shipView']);
        Route::post('/get-talapat', [TalapatController::class,'getTalapet']);
        Route::post('/get-statistics', [TalapatController::class,'getStatistics']);
    });
});
