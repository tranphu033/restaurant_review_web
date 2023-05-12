<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            ['username'=>'vanphu','password'=>'phu123', 'fullname'=>'Tran Van Phu', 'email'=>'phu@gmail.com', 'phone'=>'0333333333', 'role'=>1],
            ['username'=>'quanghuy','password'=>'huy123', 'fullname'=>'Nguyen Quang Huy', 'email'=>'huy@gmail.com', 'phone'=>'0333333334', 'role'=>2],
            ['username'=>'hongquang','password'=>'quangadmin', 'fullname'=>'Nguyen Hong Quang', 'email'=>'quangad@gmail.com', 'phone'=>'0333333335', 'role'=>3],
        ]);
    }
}
