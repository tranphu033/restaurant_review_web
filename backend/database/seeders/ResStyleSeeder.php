<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ResStyleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('res_style')->insert([
            ['restaurant_id'=>1, 'style_id'=>2],
            ['restaurant_id'=>2, 'style_id'=>2],
            ['restaurant_id'=>2, 'style_id'=>3],
            ['restaurant_id'=>3, 'style_id'=>3],
            ['restaurant_id'=>3, 'style_id'=>4],
            ['restaurant_id'=>4, 'style_id'=>1],
            ['restaurant_id'=>5, 'style_id'=>1],
            ['restaurant_id'=>5, 'style_id'=>2],
            ['restaurant_id'=>5, 'style_id'=>3],
            ['restaurant_id'=>5, 'style_id'=>5],
            ['restaurant_id'=>6, 'style_id'=>1],
            ['restaurant_id'=>7, 'style_id'=>1],
            ['restaurant_id'=>7, 'style_id'=>3],
            ['restaurant_id'=>8, 'style_id'=>1],
            ['restaurant_id'=>9, 'style_id'=>1],
            ['restaurant_id'=>9, 'style_id'=>5],
            ['restaurant_id'=>10, 'style_id'=>4],
            ['restaurant_id'=>11, 'style_id'=>1],
            ['restaurant_id'=>12, 'style_id'=>1],
            ['restaurant_id'=>12, 'style_id'=>6],
        ]);
    }
}
