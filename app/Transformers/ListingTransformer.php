<?php
namespace App\Transformers;
use App\Listing;
use League\Fractal\TransformerAbstract;
class ListingTransformer extends TransformerAbstract
{
    /**
     * A Fractal transformer.
     *
     * @return array
     */
    public function transform(Listing $listing)
    {
        return [
            'id' => (int)$listing->id,
            'rental_type' => (string)$listing->rental_type,
            'last_name' => (string)$listing->last_name,
            'first_name' => (string)$listing->first_name,
            'rental_address' => (string)$listing->rental_address,
            'phone' => (string)$listing->phone,
            'phone_2' => (string)$listing->phone_2,
            'email_address' => (string)$listing->email_address,
            'date_available' => (string)$listing->date_available,
            'rent_amount' => (string)$listing->rent_amount,
            'deposit' => (string)$listing->deposit,
            'lease' => (string)$listing->lease,
            'lease_duration' => (string)$listing->lease_duration,
            'furnished' => (string)$listing->furnished,
            'utilities' => (string)$listing->utilities,
            'no_bedrooms' => (string)$listing->no_bedrooms,
            'no_bathrooms' => (string)$listing->no_bathrooms,
            'handicapped_access' => (string)$listing->handicapped_access,
            'unm_distance' => (string)$listing->unm_distance,
            'bus_distance' => (string)$listing->bus_distance,
            'pets' => (string)$listing->pets,
            'pets_deposit' => (string)$listing->pets_deposit,
            'stove' => (string)$listing->stove,
            'refrigerator' => (string)$listing->refrigerator,
            'dishwasher' => (string)$listing->dishwasher,
            'disposal' => (string)$listing->disposal,
            'washer_dryer' => (string)$listing->washer_dryer,
            'laundry_hookup' => (string)$listing->laundry_hookup,
            'laundry_facilities' => (string)$listing->laundry_facilities,
            'air_conditioning' => (string)$listing->air_conditioning,
            'fireplace' => (string)$listing->fireplace,
            'dining_room' => (string)$listing->dining_room,
            'garage' => (string)$listing->garage,
            'fenced_yard' => (string)$listing->fenced_yard,
            'patio' => (string)$listing->patio,
            'swimming_pool' => (string)$listing->swimming_pool,
            'jacuzzi' => (string)$listing->jacuzzi,
            'additional_info' => (string)$listing->additional_info,
            'date_received' => (string)$listing->date_received,
            'received_by' => (string)$listing->received_by,
            'approved' => (string)$listing->approved,
        ];
    }

    /**
     * A returns the transformed attribute for a original attribute from the  database.
     *
     * @return array element
     */

    public static function originalAttribute($index)
    {
        $attributes = [
            'id' => 'id',
            'rental_type' => 'rental_type',
            'last_name' => 'last_name',
            'first_name' => 'first_name',
            'rental_address' => 'rental_address',
            'phone' => 'phone',
            'phone_2' => 'phone_2',
            'email_address' => 'email_address',
            'date_available' => 'date_available',
            'rent_amount' => 'rent_amount',
            'deposit' => 'deposit',
            'lease' => 'lease',
            'lease_duration' => 'lease_duration',
            'furnished' => 'furnished',
            'utilities' => 'utilities',
            'no_bedrooms' => 'no_bedrooms',
            'no_bathrooms' => 'no_bathrooms',
            'handicapped_access' => '',
            'unm_distance' => 'handicapped_access',
            'bus_distance' => 'bus_distance',
            'pets' => 'pets',
            'pets_deposit' => 'pets_deposit',
            'stove' => 'stove',
            'refrigerator' => 'refrigerator',
            'dishwasher' => 'dishwasher',
            'disposal' => 'disposal',
            'washer_dryer' => 'washer_dryer',
            'laundry_hookup' => 'laundry_hookup',
            'laundry_facilities' => 'laundry_facilities',
            'air_conditioning' => 'air_conditioning',
            'fireplace' => 'fireplace',
            'dining_room' => 'dining_room',
            'garage' => 'garage',
            'fenced_yard' => 'fenced_yard',
            'patio' => 'patio',
            'swimming_pool' => 'swimming_pool',
            'jacuzzi' => 'jacuzzi',
            'additional_info' => 'additional_info',
            'date_received' => 'date_received',
            'received_by' => 'received_by',
            'approved' => 'approved',
        ];
        return isset($attributes[$index]) ? $attributes[$index] : null;
    }

}