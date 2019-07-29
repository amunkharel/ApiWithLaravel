<?php

namespace App\Http\Controllers\Listing;
use App\Http\Controllers\ApiController;
use App\Http\Controllers\Controller;
use App\Listing;
use Illuminate\Http\Request;

class ListingController extends ApiController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //Gets all the listings which are approved by the admin of the site
        $listings = Listing::where('approved', 'Y')->get();

        //showAll function located inside Traits folder and file ApiResponser.php
        //Returns json response of a given model
        return $this->showAll($listings);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules = [
            'rental_type' => 'required|max:20',
            'last_name' => 'required|max:30',
            'first_name' => 'required|max:30',
            'rental_address' => 'required|max:50',
            'phone' => 'required|max:25',
            'phone_2' => 'max:25',
            'email_address' => 'email|max:60',
            'date_available' => 'date_format:Y-m-d|after:today',
            'rent_amount' => 'required|between:2,6',
            'deposit' => 'between:2,6',
            'lease' => 'max:1',
            'lease_duration' => 'max:20',
            'furnished' => 'max:1',
            'utilities' => 'max:1',
            'no_bedrooms' => 'max:5',
            'no_bathrooms' => 'max:5',
            'handicapped_access' => 'max:1',
            'unm_distance' => 'max:10',
            'bus_distance' => 'max:10',
            'pets' => 'max:1',
            'pets_deposit' => 'max:7',
            'stove' => 'max:1',
            'refrigerator' => 'max:1',
            'dishwasher' => 'max:1',
            'disposal' => 'max:1',
            'washer_dryer' => 'max:1',
            'laundry_hookup' => 'max:1',
            'laundry_facilities' => 'max:1',
            'air_conditioning' => 'max:1',
            'fireplace' => 'max:1',
            'dining_room' => 'max:1',
            'garage' => 'max:1',
            'fenced_yard' => 'max:1',
            'patio' => 'max:1',
            'swimming_pool' => 'max:1',
            'jacuzzi' => 'max:1',
            'additional_info' => 'max:191',
            'date_received' => 'date_format:Y-m-d|after:today',
            'received_by' => 'max:30',
            'approved' => 'max:1',

        ];
        $this->validate($request, $rules);
        $newListing = Listing::create($request->all());
        return response()->json(['success' => "New Listing Created Successfully"], 201);


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $listing = Listing::where('id', $id)->get();
        //showOne function located inside Traits Folder and ApiResponser.php file
        //Shows one listing in a json format
        return $this->showOne($listing);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
