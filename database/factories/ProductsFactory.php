<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;


class ProductsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'product_title' => $this->faker->name(),
            'price' => $this->faker->randomDigit(),
            // 'product_img' => $this->faker->imageUrl(),
            'product_img'=> 'thumb-tomatoes.png',
            'added_by'=> \App\Models\User::all()->random()->id,
            'qty' => $this->faker->randomDigit(),
            'category_id'=> \App\Models\Categories::all()->random()->id,
            'brand_id'=> \App\Models\Brands::all()->random()->id,
            'product_status'=>'Y',
            
        ];
    }
}
