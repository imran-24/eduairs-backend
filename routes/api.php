<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProductController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Route::post('/register', [AuthController::class, 'register']);

Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);
Route::post('/logout', [AuthController::class, 'destroy']);



Route::middleware('auth:sanctum')->group(function(){

    Route::get('/user', function(Request $request){
        $user = $request->user();
        return response()->json([
            'data' => $user,
            'role' => $user->getRoleNames()->first()
        ]);
    });
    
    Route::get('/admin/products', [ProductController::class, 'show_all']);
    Route::apiResource('products', ProductController::class);


    // Route::get('/admin/dashboard', [AdminController::class, 'index'])->name('admin.dashboard')->middleware('role:Admin');

});
