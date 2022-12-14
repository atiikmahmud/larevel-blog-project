<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post("login", [AuthController::class, "login"]);

Route::group(['middleware' => 'api'], function() {
    Route::post("logout", [AuthController::class, "logout"]);
    Route::post("refresh", [AuthController::class, "refresh"]);
    Route::post("me", [AuthController::class, "me"]);
});

Route::resource('users', UserController::class);

Route::get('/posts', [PostController::class, 'index']);
Route::post('/create-post', [PostController::class, 'store']);
Route::get('/posts/{id}', [PostController::class, 'show']);
Route::get('/posts/user/{id}', [PostController::class, 'userPost']);

Route::get('/comment/{id}', [CommentController::class, 'index']);
Route::post('/comment', [CommentController::class, 'store']);

Route::post('/message', [ContactController::class, "message"]);