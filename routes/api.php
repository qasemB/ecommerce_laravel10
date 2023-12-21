<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ColorController;
use App\Http\Controllers\DeliveryController;
use App\Http\Controllers\DiscountController;
use App\Http\Controllers\GuaranteeController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\PropertyController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
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

Route::group(['prefix' => 'auth'], function () {

    Route::post('login', [AuthController::class, "login"]);
    Route::post('register', [AuthController::class, "register"]);

    Route::group(["middleware" => 'auth:api'], function () {
        Route::get('user', [AuthController::class, 'getUser']);
        Route::get('logout', [AuthController::class, 'logout']);
    });
});

Route::group(['prefix' => 'admin'], function () {
    Route::group(["middleware" => ['auth:api']], function () {
        Route::group(["middleware" => ['checkPermission']], function () {

            Route::get('categories', [CategoryController::class, "index"]);
            Route::post('categories', [CategoryController::class, 'store']);
            Route::get('categories/{id}', [CategoryController::class, 'show']);
            Route::put('categories/{id}', [CategoryController::class, 'update']);
            Route::delete('categories/{id}', [CategoryController::class, 'destroy']);

            Route::get('categories/{categoryId}/attributes', [PropertyController::class, 'index']);
            Route::post('categories/{categoryId}/attributes', [PropertyController::class, 'store']);
            Route::get('categories/attributes/{id}', [PropertyController::class, 'show']);
            Route::put('categories/attributes/{id}', [PropertyController::class, 'update']);
            Route::delete('categories/attributes/{id}', [PropertyController::class, 'destroy']);

            Route::get('products', [ProductController::class, 'index']);
            Route::get('products/all_titles', [ProductController::class, 'getAllTitles']);
            Route::get('products/fewer_products', [ProductController::class, 'getFewerProducts']);
            Route::get('products/toggle_notification/{id}', [ProductController::class, 'toggleNotification']);
            Route::post('products', [ProductController::class, 'store']);
            Route::get('products/{id}', [ProductController::class, 'show']);
            Route::get('products/title_is_exist/{title}', [ProductController::class, 'titleIsExist']);
            Route::put('products/{id}', [ProductController::class, 'update']);
            Route::delete('products/{id}', [ProductController::class, 'destroy']);
            Route::post('products/{id}/add_attr', [ProductController::class, 'addAttr']);
            Route::get('products/{id}/get_attr', [ProductController::class, 'getProductAttrs']);
            Route::post('products/{id}/add_image', [ProductController::class, 'addImage']);
            Route::delete('products/gallery/{imageId}', [ProductController::class, 'deleteImage']);
            Route::get('products/gallery/set_main/{imageId}', [ProductController::class, 'setMainImage']);

            Route::get('colors', [ColorController::class, 'index']);
            Route::post('colors', [ColorController::class, 'store']);
            Route::get('colors/{id}', [ColorController::class, 'show']);
            Route::put('colors/{id}', [ColorController::class, 'update']);
            Route::delete('colors/{id}', [ColorController::class, 'destroy']);

            Route::get('brands', [BrandController::class, 'index']);
            Route::post('brands', [BrandController::class, 'store']);
            Route::get('brands/{id}', [BrandController::class, 'show']);
            Route::post('brands/{id}', [BrandController::class, 'update']);
            Route::delete('brands/{id}', [BrandController::class, 'destroy']);

            Route::get('guarantees', [GuaranteeController::class, 'index']);
            Route::post('guarantees', [GuaranteeController::class, 'store']);
            Route::get('guarantees/{id}', [GuaranteeController::class, 'show']);
            Route::put('guarantees/{id}', [GuaranteeController::class, 'update']);
            Route::delete('guarantees/{id}', [GuaranteeController::class, 'destroy']);

            Route::get('discounts', [DiscountController::class, 'index']);
            Route::post('discounts', [DiscountController::class, 'store']);
            Route::get('discounts/{id}', [DiscountController::class, 'show']);
            Route::put('discounts/{id}', [DiscountController::class, 'update']);
            Route::delete('discounts/{id}', [DiscountController::class, 'destroy']);

            Route::get('permissions', [PermissionController::class, 'index']);
            Route::get('roles', [RoleController::class, 'index']);
            Route::get('roles/{id}', [RoleController::class, 'show']);
            Route::post('roles', [RoleController::class, 'store']);
            Route::put('roles/{id}', [RoleController::class, 'update']);
            Route::put('roles/{id}/permissions', [RoleController::class, 'updatePermissions']);
            Route::delete('roles/{id}', [RoleController::class, 'destroy']);
            Route::get('users', [UserController::class, 'index']);
            Route::get('users/{id}', [UserController::class, 'show']);
            Route::post('users', [UserController::class, 'store']);
            Route::put('users/{id}', [UserController::class, 'update']);
            Route::delete('users/{id}', [UserController::class, 'destroy']);

            Route::get('deliveries', [DeliveryController::class, 'index']);
            Route::get('deliveries/{id}', [DeliveryController::class, 'show']);
            Route::post('deliveries', [DeliveryController::class, 'store']);
            Route::put('deliveries/{id}', [DeliveryController::class, 'update']);
            Route::delete('deliveries/{id}', [DeliveryController::class, 'destroy']);

            Route::get('carts', [CartController::class, 'index']);
            Route::post('carts', [CartController::class, 'store']);
            Route::get('carts/{id}', [CartController::class, 'show']);
            Route::put('carts/{id}', [CartController::class, 'update']);
            Route::delete('carts/{id}', [CartController::class, 'destroy']);

            Route::get('orders/orders_statistics', [OrderController::class, 'getOrdersStatistics']);
            Route::get('orders/this_year_orders', [OrderController::class, 'getThisYearOrders']);
            Route::get('orders', [OrderController::class, 'index']);
            Route::post('orders', [OrderController::class, 'store']);
            Route::get('orders/{id}', [OrderController::class, 'show']);
            Route::delete('orders/{id}', [OrderController::class, 'destroy']);
        });
    });
});
