<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
//use Illuminate\Support\Facades\Mail;

 use Mail;
use App\models\Email;

use App\Mail\DemoMail;

class WebController extends Controller

{

    //
    public function home()
    {
        return view ('home');
    }
    public function error()
    {
        return view('404');
    }
    public function Contact()
    {
        return view('contact');
    }
    

    public function sandemail(Request $request)
    {

// dd($request->all());

//           $data =[
// 'name'=>$request->input('name'),
// 'email'=>$request->input('email'),
// 'phone'=>$request->input('phone'),
// 'message'=>$request->input('message'),
// 'subject'=>$request->input('subject'),


//         ] ;
    
  
      
            Mail::to( 'alaa@email.com')->send( new DemoMail(
                $request->name,
                $request->email,
                $request->phone,
                $request->subject,
                $request->message,

            ));
            return "mail sent!";
    }
  
}
