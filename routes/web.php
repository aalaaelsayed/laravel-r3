<?php

use Illuminate\Support\Facades\Route;

use App\Http\controllers\ExampleController;
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