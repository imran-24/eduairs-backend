<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $user = auth()->user(); // Ensure the authenticated user is retrieved
        $products = Product::with('user')->where('user_id', $user->id)->paginate(10);
        return response()->json([
            'success' => true,
            'message' => 'Products retrieved successfully',
            'data' => $products,
            'user' => $user
        ], 200);
        
    }

    public function show_all(Request $request)
    {
        $user = $request->user();
        $role = $user->getRoleNames()->first();

        if( $role !== 'admin') abort(403);

        $products = Product::with('user')->paginate(10);
        return response()->json([
            'success' => true,
            'message' => 'Products retrieved successfully',
            'data' => $products,
            'user' => $user,
            'role' => $role
        ], 200);
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreProductRequest $request)
    {
        $validatedData = $request->validated();
        $validatedData['user_id'] = auth()->id();

        $product = Product::create($validatedData);


        return response()->json([
            'success' => true,
            'message' => 'Product created successfully',
            'data' => $product
        ], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Product::find($id);

        if (!$product) {
            return response()->json([
                'success' => false,
                'message' => 'Product not found'
            ], 404);
        }

        return response()->json([
             'success' => true,
             'message' => 'Product found',
             'data' => $product
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
        
     public function update(UpdateProductRequest $request, $id)
     {
        $product = Product::find($id);

        if (!$product) {
            return response()->json([
                'success' => false,
                'message' => 'Product not found'
            ], 404);
        }

        $validatedData = $request->validated();
        $validatedData['user_id'] = auth()->id();

        $product->update($validatedData);
        $updated_product = $product->fresh();
 
        return response()->json([
             'success' => true,
             'message' => 'Product updated successfully',
             'data' => $updated_product
        ], 200);
     }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::find($id);

        if (!$product) {
            return response()->json([
                'success' => false,
                'message' => 'Product not found'
            ], 404);
        }

        $product->delete();

        return response()->json([
            'success' => true,
            'message' => 'Product deleted successfully'
        ], 200);
    }
}
