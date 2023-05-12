<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ServiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('services')->insert([
            ['id'=>1, 'name'=>'Giao hàng'],
            ['id'=>2, 'name'=>'Đặt chỗ'],
            ['id'=>3, 'name'=>'Bữa ăn tự chọn'],
            ['id'=>4, 'name'=>'Có bãi đỗ xe'],
            ['id'=>5, 'name'=>'Ngồi ngoài trời'],
            ['id'=>6, 'name'=>'Wifi miễn phí'],
            ['id'=>7, 'name'=>'Phong cách gia đình'],
            ['id'=>8, 'name'=>'Nhạc sống'],
            ['id'=>9, 'name'=>'Ven bờ'],
            ['id'=>10, 'name'=>'Phục vụ đồ uống có cồn'],
        ]);
    }
}
