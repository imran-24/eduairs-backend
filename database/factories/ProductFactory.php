<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'user_id' => User::inRandomOrder()->first()?->id ?? User::factory(), // Assign existing user or create new one
            'title' => fake()->words(3, true),
            'description' => fake()->sentence(),
            'category' => fake()->word(),
            'price' => fake()->randomFloat(2, 10, 1000),
            'color' => json_encode(fake()->randomElements(['Red', 'Blue', 'Green', 'Black'], 2)),
            'size' => json_encode(fake()->randomElements(['S', 'M', 'L', 'XL'], 2)),
            'discount' => fake()->randomFloat(2, 0, 50),
            'image' => fake()->imageUrl(640, 480, 'products'), // Random image URL
        ];
    }
}
