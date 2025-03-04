<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
           
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade'); // Foreign key reference to users table
            $table->string('title');
            $table->text('description'); 
            $table->string('category');
            $table->float('price');
            $table->json('color'); 
            $table->json('size');
            $table->float('discount')->default(0); // Default discount is 0
            $table->string('image')->nullable(); // Image URL or file path
            $table->timestamps();
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
};
