<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ResServiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('res_service')->insert([
            ['restaurant_id'=>1, 'service_id'=>1],
            ['restaurant_id'=>1, 'service_id'=>2],
            ['restaurant_id'=>1, 'service_id'=>3],
            ['restaurant_id'=>2, 'service_id'=>2],
            ['restaurant_id'=>2, 'service_id'=>8],
            ['restaurant_id'=>2, 'service_id'=>4],
            ['restaurant_id'=>3, 'service_id'=>3],
            ['restaurant_id'=>3, 'service_id'=>9],
            ['restaurant_id'=>3, 'service_id'=>5],
            ['restaurant_id'=>4, 'service_id'=>4],
            ['restaurant_id'=>4, 'service_id'=>5],
            ['restaurant_id'=>4, 'service_id'=>6],
            ['restaurant_id'=>5, 'service_id'=>1],
            ['restaurant_id'=>5, 'service_id'=>3],
            ['restaurant_id'=>5, 'service_id'=>5],
            ['restaurant_id'=>6, 'service_id'=>9],
            ['restaurant_id'=>6, 'service_id'=>4],
            ['restaurant_id'=>6, 'service_id'=>8],
            ['restaurant_id'=>7, 'service_id'=>3],
            ['restaurant_id'=>7, 'service_id'=>5],
            ['restaurant_id'=>7, 'service_id'=>7],
            ['restaurant_id'=>8, 'service_id'=>4],
            ['restaurant_id'=>8, 'service_id'=>6],
            ['restaurant_id'=>8, 'service_id'=>8],
            ['restaurant_id'=>9, 'service_id'=>4],
            ['restaurant_id'=>9, 'service_id'=>7],
            ['restaurant_id'=>9, 'service_id'=>10],
            ['restaurant_id'=>10, 'service_id'=>3],
            ['restaurant_id'=>10, 'service_id'=>9],
            ['restaurant_id'=>10, 'service_id'=>10],
            ['restaurant_id'=>11, 'service_id'=>1],
            ['restaurant_id'=>11, 'service_id'=>7],
            ['restaurant_id'=>11, 'service_id'=>9],
            ['restaurant_id'=>12, 'service_id'=>2],
            ['restaurant_id'=>12, 'service_id'=>8],
            ['restaurant_id'=>12, 'service_id'=>10],
        ]);
    }
}
