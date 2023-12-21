<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CategoryController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group(['prefix'=>'auth'] , function(){

    Route::post('login' , [AuthController::class, "login"]);
    Route::post('register' , 'AuthController@register');

    Route::group(["middleware" => 'auth:api'],function(){
        Route::get('user', 'AuthController@getUser');
        Route::get('logout' , 'AuthController@logout');
    });

});

Route::group(['prefix'=>'admin'] , function(){
//     Route::group(["middleware" => ['auth:api']],function(){
        // Route::group(["middleware" => ['checkPermission']],function(){

            Route::get('categories', [CategoryController::class, "index"]);
            Route::post('categories', 'CategoryController@store');
            Route::get('categories/{id}', 'CategoryController@show');
            Route::put('categories/{id}', 'CategoryController@update');
            Route::delete('categories/{id}', 'CategoryController@destroy');

            Route::get('categories/{categoryId}/attributes','PropertyController@index');
            Route::post('categories/{categoryId}/attributes','PropertyController@store');
            Route::get('categories/attributes/{id}','PropertyController@show');
            Route::put('categories/attributes/{id}','PropertyController@update');
            Route::delete('categories/attributes/{id}','PropertyController@destroy');

            Route::get('products','ProductController@index');
            Route::get('products/all_titles','ProductController@getAllTitles');
            Route::get('products/fewer_products','ProductController@getFewerProducts');
            Route::get('products/toggle_notification/{id}','ProductController@toggleNotification');
            Route::post('products','ProductController@store');
            Route::get('products/{id}','ProductController@show');
            Route::get('products/title_is_exist/{title}','ProductController@titleIsExist');
            Route::put('products/{id}','ProductController@update');
            Route::delete('products/{id}','ProductController@destroy');
            Route::post('products/{id}/add_attr','ProductController@addAttr');
            Route::get('products/{id}/get_attr','ProductController@getProductAttrs');
            Route::post('products/{id}/add_image','ProductController@addImage');
            Route::delete('products/gallery/{imageId}','ProductController@deleteImage');
            Route::get('products/gallery/set_main/{imageId}','ProductController@setMainImage');

            Route::get('colors','ColorController@index');
            Route::post('colors','ColorController@store');
            Route::get('colors/{id}','ColorController@show');
            Route::put('colors/{id}','ColorController@update');
            Route::delete('colors/{id}','ColorController@destroy');

            Route::get('brands','BrandController@index');
            Route::post('brands','BrandController@store');
            Route::get('brands/{id}','BrandController@show');
            Route::post('brands/{id}','BrandController@update');
            Route::delete('brands/{id}','BrandController@destroy');

            Route::get('guarantees','GuaranteeController@index');
            Route::post('guarantees','GuaranteeController@store');
            Route::get('guarantees/{id}','GuaranteeController@show');
            Route::put('guarantees/{id}','GuaranteeController@update');
            Route::delete('guarantees/{id}','GuaranteeController@destroy');

            Route::get('discounts','DiscountController@index');
            Route::post('discounts','DiscountController@store');
            Route::get('discounts/{id}','DiscountController@show');
            Route::put('discounts/{id}','DiscountController@update');
            Route::delete('discounts/{id}','DiscountController@destroy');

            Route::get('permissions','PermissionController@index');
            Route::get('roles','RoleController@index');
            Route::get('roles/{id}','RoleController@show');
            Route::post('roles','RoleController@store');
            Route::put('roles/{id}','RoleController@update');
            Route::put('roles/{id}/permissions','RoleController@updatePermissions');
            Route::delete('roles/{id}','RoleController@destroy');
            Route::get('users','UserController@index');
            Route::get('users/{id}','UserController@show');
            Route::post('users','UserController@store');
            Route::put('users/{id}','UserController@update');
            Route::delete('users/{id}','UserController@destroy');

            Route::get('deliveries','DeliveryController@index');
            Route::get('deliveries/{id}','DeliveryController@show');
            Route::post('deliveries','DeliveryController@store');
            Route::put('deliveries/{id}','DeliveryController@update');
            Route::delete('deliveries/{id}','DeliveryController@destroy');

            Route::get('carts','CartController@index');
            Route::post('carts','CartController@store');
            Route::get('carts/{id}','CartController@show');
            Route::put('carts/{id}','CartController@update');
            Route::delete('carts/{id}','CartController@destroy');

            Route::get('orders/orders_statistics','OrderController@getOrdersStatistics');
            Route::get('orders/this_year_orders','OrderController@getThisYearOrders');
            Route::get('orders','OrderController@index');
            Route::post('orders','OrderController@store');
            Route::get('orders/{id}','OrderController@show');
            Route::delete('orders/{id}','OrderController@destroy');
        // });
//     });

});
