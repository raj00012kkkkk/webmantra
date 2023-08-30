<?php

namespace Database\Factories;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

class CategoriesFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'cate_name' => $this->faker->unique()->text(16),
            'created_at' => now(), 
        ];
    }

    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'updated_at' => null,
            ];
        });
    }
}
