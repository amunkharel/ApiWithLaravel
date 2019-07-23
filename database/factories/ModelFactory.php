<?php

use App\Listing;


/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/** @var \Illuminate\Database\Eloquent\Factory $factory */


$factory->define(Listing::class, function (Faker\Generator $faker) {
    return [
        'rental_type' => $faker->randomElement(['Apartment', 'House', 'Room', 'Duplex', 'Condo', 'Townhouse', 'Efficiency']),
        'last_name' => $faker->name,
        'first_name' => $faker->name,
        'rental_address' => $faker->streetAddress,
        'phone' => $faker->phoneNumber,
        'phone_2' => $faker->phoneNumber,
        'email_address' => $faker->unique()->safeEmail,
        'date_available' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'rent_amount' => $faker->numberBetween(100, 1000),
        'deposit' => $faker->numberBetween(500, 1000),
        'lease' => $faker->randomElement(['Y', 'N']),
        'lease_duration' => 'year',
        'furnished' => $faker->randomElement(['Y', 'N']),
        'utilities' => $faker->randomElement(['Y', 'N']),
        'no_bedrooms' => $faker->numberBetween(1, 5),
        'no_bathrooms' => $faker->numberBetween(1, 5),
        'handicapped_access' => $faker->randomElement(['Y', 'N']),
        'unm_distance' => '2 blocks',
        'bus_distance' => '3 blocks',
        'pets' => $faker->randomElement(['Y', 'N']),
        'pets_deposit' => $faker->numberBetween(50, 200),
        'stove' => $faker->randomElement(['Y', 'N']),
        'refrigerator' => $faker->randomElement(['Y', 'N']),
        'dishwasher' => $faker->randomElement(['Y', 'N']),
        'disposal' => $faker->randomElement(['Y', 'N']),
        'washer_dryer' => $faker->randomElement(['Y', 'N']),
        'laundry_hookup' => $faker->randomElement(['Y', 'N']),
        'laundry_facilities' => $faker->randomElement(['Y', 'N']),
        'air_conditioning' => $faker->randomElement(['Y', 'N']),
        'fireplace' => $faker->randomElement(['Y', 'N']),
        'dining_room' => $faker->randomElement(['Y', 'N']),
        'garage' => $faker->randomElement(['Y', 'N']),
        'fenced_yard' => $faker->randomElement(['Y', 'N']),
        'patio' => $faker->randomElement(['Y', 'N']),
        'swimming_pool' => $faker->randomElement(['Y', 'N']),
        'jacuzzi' => $faker->randomElement(['Y', 'N']),
        'additional_info' => 'Some Additional Info on the apartment',
        'date_received' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'received_by' => 'Web Entry',
        'approved' => $faker->randomElement(['Y', 'N']),
    ];
});
