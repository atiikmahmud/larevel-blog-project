<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;

class PostController extends Controller
{
    public function index() 
    {
        $post = Post::with('users')->get();
        return Response::json($post);
    }

    public function create() 
    {
        return view('post.create');
    }

    public function store(Request $request) 
    {
        $request->validate([
            'title'=>'required',
            'body'=>'required',
            'tag'=>'required',
            'user_id'=>'required',
        ]);

        try{
            Post::create([
                'title' => $request->title,
                'body' => $request->body,
                'tag' => $request->tag,
                'user_id' => $request->user_id,
            ]);

            return response()->json([
                'message'=>'Post create successfully!!'
            ]);
        }catch(\Exception $e){
            Log::error($e->getMessage());
            return response()->json([
                'message'=>'Post not create!!'
            ],500);
        }
    }
}
