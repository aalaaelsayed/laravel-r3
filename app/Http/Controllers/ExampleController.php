<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ExampleController extends Controller
{
    //
    public function show(){
        return'welcome to my first controller';
    }
    public function data(Request $request){
        return $request->all();
    }
}
