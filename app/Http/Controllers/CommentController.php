<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;

class CommentController extends Controller
{
    public function index($id)
    {
        $comment = Comment::where('post_id', $id)->with('users')->get();
        // dd($comment[0]['comment']);
        return Response::json($comment);
    }
    
    public function store(Request $request)
    {
        $request->validate([
            'comment' => 'required',
            'post_id' => 'required',
            'user_id' => 'required',
        ]);

        try{
            Comment::create([
                'comment' => $request->comment,
                'post_id' => $request->post_id,
                'user_id' => $request->user_id,
            ]);

            return response()->json([
                'message' => 'Commented successfully!'
            ]);
        }catch(\Exception $e)
        {
            Log::error($e->getMessage());
            return response()->json([
                'message' => 'Comment not submitted!'
            ],500);
        }
    }
}
