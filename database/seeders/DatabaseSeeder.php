<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
         \App\Models\User::factory(5)->create();
         \App\Models\Categories::factory(10)->create();
         \App\Models\Brands::factory(10)->create();
         \App\Models\Products::factory(10)->create();
    }
}
