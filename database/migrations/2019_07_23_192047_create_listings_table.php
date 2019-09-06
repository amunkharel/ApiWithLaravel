<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateListingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('listings', function (Blueprint $table) {
            $table->increments('id');
            $table->string('rental_type', 20);
            $table->string('last_name', 30)->nullable();
            $table->string('first_name', 30);
            $table->string('rental_address', 50);
            $table->string('phone', 25);
            $table->string('phone_2', 25)->nullable();
            $table->string('email_address', 60)->nullable();
            $table->date('date_available');
            $table->integer('rent_amount')->unsigned();
            $table->integer('deposit')->nullable()->unsigned();
            $table->char('lease', 1)->nullable();
            $table->string('lease_duration', 20)->nullable();
            $table->char('furnished', 1)->nullable();
            $table->char('utilities', 1)->nullable();
            $table->string('no_bedrooms', 5)->nullable();
            $table->string('no_bathrooms', 5)->nullable();
            $table->char('handicapped_access', 1)->nullable();
            $table->string('unm_distance', 20)->nullable();
            $table->string('bus_distance', 10)->nullable();
            $table->char('pets', 1)->nullable();
            $table->string('pets_deposit', 7)->nullable();
            $table->char('stove', 1)->nullable()->default('N');
            $table->char('refrigerator', 1)->nullable()->default('N');
            $table->char('dishwasher', 1)->nullable()->default('N');
            $table->char('disposal', 1)->nullable()->default('N');
            $table->char('washer_dryer', 1)->nullable()->default('N');
            $table->char('laundry_hookup', 1)->nullable()->default('N');
            $table->char('laundry_facilities', 1)->nullable()->default('N');
            $table->char('air_conditioning', 1)->nullable()->default('N');
            $table->char('fireplace', 1)->nullable()->default('N');
            $table->char('dining_room', 1)->nullable()->default('N');
            $table->char('garage', 1)->nullable()->default('N');
            $table->char('fenced_yard', 1)->nullable()->default('N');
            $table->char('patio', 1)->nullable()->default('N');
            $table->char('swimming_pool', 1)->nullable()->default('N');
            $table->char('jacuzzi', 1)->nullable()->default('N');
            $table->string('additional_info', 191)->nullable();
            $table->date('date_received')->nullable();
            $table->string('received_by', 30)->nullable();
            $table->char('approved', 1)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('listings');
    }
}
