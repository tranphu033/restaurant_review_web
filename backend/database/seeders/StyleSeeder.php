<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StyleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('styles')->insert([
            ['id'=>1, 'name'=>'Kiểu Việt'],
            ['id'=>2, 'name'=>'Kiểu Âu'],
            ['id'=>3, 'name'=>'Kiểu Á'],
            ['id'=>4, 'name'=>'Kiểu Ấn Độ'],
            ['id'=>5, 'name'=>'Quốc tế'],
            ['id'=>6, 'name'=>'Kiểu Mỹ'],
        ]);
    }
}
