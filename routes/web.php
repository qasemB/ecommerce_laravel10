<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/', function () {
    return redirect("/api/documentation");
    // $user= new User();
    // $user->name = "qasem";
    // $user->email = "qasem@gmail.com";
    // $user->password = bcrypt("123456");
    // $user->save();

    return view('welcome');
});

// Route::get('/', function () {
//     return view('welcome');
// });
