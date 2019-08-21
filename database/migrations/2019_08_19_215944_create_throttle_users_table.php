<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateThrottleUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('throttle_users', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('requests')->unsigned()->default('0');
            $table->float('hours', 5, 2)->default('0.00');
            $table->char('email_sent', 1)->nullable()->default('N');
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
        Schema::dropIfExists('throttle_users');
    }
}
