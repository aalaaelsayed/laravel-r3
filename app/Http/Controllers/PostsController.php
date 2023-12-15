<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\models\Post;

class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    private $columns = ['title', 'description', 'published'];

    public function index()
    {
        $posts =post::get();
        return view ('posts',compact("posts"));
           //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        // 
           return view ('addpost');

       
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        //$posts= new post();
        //$posts->title =$request->title;
        //$posts->auther =$request->auther;
        //$posts->description =$request->description;
       //if(isset($request->published)){
        //$posts->published = 1;

       //}else{
        //$posts->published = 0;

       //}
       //$posts->created_at;
       //$posts->id;

        //$posts->save();
        //return'data inserted successfully';
        $data =$request->only($this->columns);
$data['published'] =isset($request->published);
post::create($data);
return redirect('posts');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
        $post = post::findOrFail($id);
        return view ('showPost',compact("post"));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
        $post = post::findOrFail($id);
        return view ('updatePost',compact("post"));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        $data =$request->only($this->columns);
        $data['published'] =isset($request->published);
        post::where ('id',$id) ->update($data);
        return redirect('posts');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
