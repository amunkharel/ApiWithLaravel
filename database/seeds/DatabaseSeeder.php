<?php

use App\Listing;
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
    }
}
