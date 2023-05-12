<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        $this->call([UserSeeder::class]);
        $this->call([RestaurantSeeder::class]);
        $this->call([IconSeeder::class]);
        $this->call([DistrictSeeder::class]);
        $this->call([StyleSeeder::class]);
        $this->call([ServiceSeeder::class]);
        $this->call([ResStyleSeeder::class]);
        $this->call([ResServiceSeeder::class]);
    }
}
