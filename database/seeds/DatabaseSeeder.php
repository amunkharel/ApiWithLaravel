<?php

use App\Listing;
use App\ThrottleUser;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	//Creates 50 listings in the database using modelfactory
        factory(Listing::class, 50)->create();
        factory(ThrottleUser::class, 1)->create();
    }
}
