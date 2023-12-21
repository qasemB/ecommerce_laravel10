<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

/**
 *     @OA\Info(
 *         version="1.0",
 *         title="Admin panel API",
 *         description="Codeyad-React Learning-Ecommerce admin panel API"
 *     )
 *     @OA\SecurityScheme(
 *         securityScheme="bearer_token",
 *         type="http",
 *         scheme="bearer"
 *     )
 *     @OA\Tag(
 *         name="Auth",
 *         description="User authentication Actions"
 *    )
 *    @OA\Tag(
 *         name="Categories",
 *         description="Product categories Actions"
 *    )
 *    @OA\Tag(
 *         name="Category Attributes",
 *         description="Category attributes Actions"
 *    )
 *    @OA\Tag(
 *         name="Products",
 *         description="Products Actions"
 *    )
 *    @OA\Tag(
 *         name="Colors",
 *         description="Colors Actions"
 *    )
 *    @OA\Tag(
 *         name="Brands",
 *         description="Brands Actions"
 *    )
 *    @OA\Tag(
 *         name="Guarantees",
 *         description="Guarantees Actions"
 *    )
 *   @OA\Tag(
 *         name="Discounts",
 *         description="Discounts Actions"
 *    )
 *   @OA\Tag(
 *         name="Users",
 *         description="User Actions"
 *   )
 *   @OA\Tag(
 *         name="Deliveries",
 *         description="Deliveries Actions"
 *   )
 *   @OA\Tag(
 *         name="Carts",
 *         description="Carts Actions"
 *   )
 *   @OA\Tag(
 *         name="Orders",
 *         description="Orders Actions"
 *   )
 */

class Controller extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;
}
