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

//Route::get('/', function () {
 //   return view('welcome');
//});
/////////////////////////////
Route::fallback(function(){
    return redirect('/');
});

Route::get('about',function(){

    return view('about');
});
//////////////////
Route::get('contact_us',function(){

    return view('contact-us');
});

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