<?php

use Illuminate\Support\Facades\Route;

use App\Http\controllers\ExampleController;
use App\Http\controllers\CarController;
use App\Http\controllers\PostsController;


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

//Route::get('/', function () {
 //   return view('welcome');
//});
/////////////////////////////
Route::fallback(function(){
    return redirect('/');
});

Route::get('login',function(){

    return view('login');
});
//////////////////
Route::post('logged',function(){

    return 'your email is : </br>'.'your password is';
})->name('logged');
//////////////////
Route::get('control',[ExampleController::class,'show']);
Route::post('control',[ExampleController::class,'data']);

//////////////////////
// store data into car table
//Route::get('storeCar',[CarController::class,'store']);


Route::prefix('blog')->group(function(){
    //blog home
    Route::get('/',function(){

    return view('blog');
});
///////////////////////

Route::get('science',function(){

    return'science for blog';
});
/////////////////////
Route::get('math',function(){

    return'math for blog';
});
///////////////////////
Route::get('sports',function(){

    return'sports for blog';
});
//////////////////////
Route::get('medical',function(){

    return'medical for blog';
});
});
// routes for cars
Route::get('createCar',[CarController::class,'create'])->name('createCar');
Route::post('storeCar',[CarController::class,'store'])->name('storeCar');
Route::get('updateCar/{id}',[CarController::class,'edit']);
Route::put('update/{id}',[CarController::class,'update'])->name('update');
Route::get('showCar/{id}',[CarController::class,'show'])->name('showCar');


Route::get('cars',[CarController::class,'index']);
// routes for posts
Route::get('createPost',[PostsController::class,'create'])->name('createPost');
Route::post('storePost',[PostsController::class,'store'])->name('storePost');
Route::get('posts',[PostsController::class,'index']);
Route::get('updatePost/{id}',[PostsController::class,'edit']);

Route::put('update/{id}',[PostsController::class,'update'])->name('update');
Route::get('showPost/{id}',[PostsController::class,'show'])->name('showCar');


