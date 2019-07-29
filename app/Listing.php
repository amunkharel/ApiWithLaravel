<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Transformers\ListingTransformer;

class Listing extends Model
{
    //initialize a transformer class for the model located at App\Transformers\ListingTransformer
	public $transformer = ListingTransformer::class;

    //table name for the model in the database
    protected $table = 'listings';

    /**
     * The attributes that should be filled in the db
     *
     * @var array
     */
    protected $fillable = [
        'rental_type',
        'last_name',
        'first_name',
        'rental_address',
        'phone',
        'phone_2',
        'email_address',
        'date_available',
        'rent_amount',
        'deposit',
        'lease',
        'lease_duration',
        'furnished',
        'utilities',
        'no_bedrooms',
        'no_bathrooms',
        'handicapped_access',
        'unm_distance',
        'bus_distance',
        'pets',
        'pets_deposit',
        'stove',
        'refrigerator',
        'dishwasher',
        'disposal',
        'washer_dryer',
        'laundry_hookup',
        'laundry_facilities',
        'fireplace',
        'dining_room',
        'garage',
        'fenced_yard',
        'patio',
        'swimming_pool',
        'jacuzzi',
        'additional_info',
        'date_received',
        'received_by',
        'approved',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'created_at',
        'updated_at',
    ];

}
