<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class ContactController extends Controller
{
    public function index() 
    {
        //
    }

    public function message(Request $request) 
    {
        $request->validate([
            'name'=>'required',
            'email'=>'required',
            'message'=>'required'
        ]);

        try{
            Contact::create([
                'name' => $request->name,
                'email' => $request->email,
                'message' => $request->message,
            ]);

            return response()->json([
                'message'=>'Message Send!!'
            ]);
        }catch(\Exception $e){
            Log::error($e->getMessage());
            return response()->json([
                'message'=>'Message not send!'
            ],500);
        }
    }
}
