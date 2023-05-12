<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DistrictSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('districts')->insert([
            ['id'=>1, 'name'=>'Tây Hồ'],
            ['id'=>2, 'name'=>'Hoàn Kiếm'],
            ['id'=>3, 'name'=>'Hai Bà Trưng'],
            ['id'=>4, 'name'=>'Ba Đình'],
            ['id'=>5, 'name'=>'Long Biên'],
        ]);
    }
}
