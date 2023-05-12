<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class IconSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('icons')->insert([
            ['name' => 'like', 'value' => '👍'],
            ['name' => 'dislike', 'value' => '👎'],
            ['name' => 'heart', 'value' => '❤'],
            ['name' => 'wow', 'value' => '😮'],
            ['name' => 'sad', 'value' => '😢'],
            ['name' => 'angry', 'value' => '😡']
        ]);
    }
}
