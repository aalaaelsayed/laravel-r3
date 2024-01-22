<?php

use Illuminate\Support\Facades\Route;

use App\Http\controllers\ExampleController;
use App\Http\controllers\CarController;
use App\Http\controllers\PostsController;
use App\Http\controllers\WebController;
use App\Mail\DemoMail;
use Illuminate\Support\Facades\Mail;


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
 return view('welcome');
});
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
//Route::get('test20',[ExampleController::class,'createSession']);
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
Route::get('555',function(){

    return view('test');
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
Route::get('testHOME',function(){

    return view('testHOME');
})->name('testHOME');
//////////////////////////////////////////////////////////////////
Route::get('404',[WebController::class,'error'])->name('404');
Route::get('about',[WebController::class,'about'])->name('about');
//Route::get('test20',[WebController::class,'test50'])->name('test20');
Route::post('test30',[WebController::class,'sandemail'])->name('test30');
Route::get('contact',[WebController::class,'Contact'])->name('contact');



Route::get('home',[WebController::class,'home'])->name('home');



Route::get('image',function(){return view('image');});
// routes for cars
Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]
    ], function(){
//Route::get('createCar',[CarController::class,'create'])->name('createCar');
Route::get('createCar',[CarController::class,'create'])->name('createCar');
Route::post('storeCar',[CarController::class,'store'])->name('storeCar');
Route::get('updateCar/{id}',[CarController::class,'edit']);
Route::put('update/{id}',[CarController::class,'update'])->name('update');
Route::get('showCar/{id}',[CarController::class,'show'])->name('showCar');
Route::get('deleteCar/{id}',[CarController::class,'destroy']);
Route::get('trashed',[CarController::class,'trashed'])->name('trashed');
Route::get('forceDelete/{id}',[CarController::class,'forceDelete'])->name('forceDelete');
Route::get('restoreCar/{id}',[CarController::class,'restore'])->name('restoreCar');
Route::get('cars',[CarController::class,'index']);
});
// routes for posts

Route::get('posts',[PostsController::class,'index']);
Route::get('createPost',[PostsController::class,'create'])->name('createPost');
Route::post('storePost',[PostsController::class,'store'])->name('storePost');
Route::get('updatePost/{id}',[PostsController::class,'edit']);
Route::get('deletePost/{id}',[PostsController::class,'destroy']);
Route::get('trashedpost',[PostsController::class,'trashed'])->name('trashedpost');
Route::get('forceDeletepost/{id}',[PostsController::class,'forceDelete'])->name('forceDeletepost');
Route::get('restorepost/{id}',[PostsController::class,'restore'])->name('restorePost');
Route::put('updatep/{id}',[PostsController::class,'update'])->name('updatep');
Route::get('showPost/{id}',[PostsController::class,'show'])->name('showCar');
Auth::routes(['verify'=>true]);
/////////////////
Route::post('imageUpload',[ExampleController::class,'upload'])->name('imageUpload');

Auth::routes(['verify'=>true]);

//Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
