<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/**
 * Listings 
 */

Route::resource('listings', 'Listing\ListingController' , ['only' => ['index', 'show']]);

/**
 * Store request for a listing
 */
Route::name('addlisting')->post('addlisting', 'Listing\ListingController@store');