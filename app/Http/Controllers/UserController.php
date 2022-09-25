<?php

namespace App\Http\Controllers;

use App\Models\User;
use Facade\FlareClient\Http\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Redis;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class UserController extends Controller
{
    public function index() 
    {
        $users = User::all();
        return response()->json($users);

    }

    public function store(Request $request)
    {
        
        $request->validate([
            'name'=>'required',
            'email'=>'required',
            'password'=>'required',
            'image'=>'required|image'

        ]);

        try{
            $imageName = Str::random().'.'.$request->image->getClientOriginalExtension();
            Storage::disk('public')->putFileAs('user/image', $request->image,$imageName);
            $request->password = Hash::make($request->password);
            User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => $request->password,
                'image' => $imageName,
            ]);

            return response()->json([
                'message'=>'User Registration Successfully!!'
            ]);
        }catch(\Exception $e){
            Log::error($e->getMessage());
            return response()->json([
                'message'=>'Something goes wrong while registration!!'
            ],500);
        }
    }

    public function show(User $user)
    {
        return response()->json([
            'user'=>$user
        ]);
    }

    public function update(Request $request, User $user)
    {
        $request->validate([
            'name'=>'required',
            'image'=>'nullable',
            'email'=>'required',
            'password'=>'nullable',
        ]);

        try{

            if($request->hasFile('image')){

                // remove old image
                if($user->image){
                    $exists = Storage::disk('public')->exists("user/image/{$user->image}");
                    if($exists){
                        Storage::disk('public')->delete("user/image/{$user->image}");
                    }
                }

                $imageName = Str::random().'.'.$request->image->getClientOriginalExtension();
                Storage::disk('public')->putFileAs('user/image', $request->image,$imageName);
                $user->image = $imageName;
                
                $user->save();
            }

            $user->name = $request->name;
            $user->email=$request->email;
            $user->role=$request->role;
            // logger($request->all());
            // logger('test');
            if($request->has('password') && !empty($request->password))
            {
                $user->password = Hash::make($request->password);
            }
            $user->update();

            return response()->json([
                'message'=>'Your Profile Update Successfully!!',
                'user'=>$user->refresh()
            ]);

        }catch(\Exception $e){
            Log::error($e->getMessage());
            return response()->json([
                'message'=>'Something goes wrong while updating your profile!!'
            ],500);
        }
    }

    public function destroy(User $user)
    {
        try {

            if($user->image){
                $exists = Storage::disk('public')->exists("user/image/{$user->image}");
                if($exists){
                    Storage::disk('public')->delete("user/image/{$user->image}");
                }
            }

            $user->delete();

            return response()->json([
                'message'=>'User Deleted Successfully!!'
            ]);
            
        } catch (\Exception $e) {
            Log::error($e->getMessage());
            return response()->json([
                'message'=>'Something goes wrong while deleting user!!'
            ]);
        }
    }
}
