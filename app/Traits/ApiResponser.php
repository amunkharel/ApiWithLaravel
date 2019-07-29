<?php
namespace App\Traits;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Collection;
trait ApiResponser
{


    /**
     * Returns a JSON response with a collection of Data
     *
     * @param  Illuminate\Support\Collection $data
     * @param  Response Code $code
     *
     * @return \Illuminate\Http\Response
     */

	private function successResponse($data, $code)
	{
		return response()->json($data, $code);
	}


	 /**
     * Returns a JSON response if found error in request
     *
     * @param  Illuminate\Support\Collection $message
     * @param  Response Code $code
     *
     * @return \Illuminate\Http\Response
     */

	protected function errorResponse($message, $code)
	{
		return response()->json(['error' => $message, 'code' => $code], $code);
	}

	/**
     * Transforms, sorts, filters collection of data with caching ability and 
     * returns a json format for the request of all data
     *
     * @param  Illuminate\Support\Collection $collection
     * @param  Response Code $code
     *
     * @return \Illuminate\Http\Response
     */


	protected function showAll(Collection $collection, $code = 200)
	{
		if($collection->isEmpty())
		{
			return $this->successResponse($collection, $code);
		}
		$transformer = $collection->first()->transformer;
		$collection = $this->filterData($collection, $transformer);

		$collection = $this->sortData($collection, $transformer);


		$collection = $this->transformData($collection, $transformer);

		$collection = $this->cacheResponse($collection);

		return $this->successResponse($collection, $code);
	}

	/**
     * Gets data for one instance of model, transfoms the data, caches the data
     * and returns a JSON response
     *
     * @param  Illuminate\Support\Collection $collection
     * @param  Response Code $code
     *
     * @return \Illuminate\Http\Response
     */

	protected function showOne(Collection $collection, $code = 200)
	{
		$transformer = $collection->first()->transformer;
		$collection = $this->transformData($collection, $transformer);
		$collection = $this->cacheResponse($collection);
		return $this->successResponse($collection, $code);
	}

	/**
     * Returns a json response for a collection of messages
     *
     * @param  Illuminate\Support\Collection $message
     * @param  Response Code $code
     *
     * @return \Illuminate\Http\Response
     */


	protected function showMessage($message, $code = 200)
	{
		return $this->successResponse(['data' => $message], $code);
	}

	/**
     * Transforms a collection of data using transformer package
     *
     * @param  Illuminate\Support\Collection $data
     * @param  App\Transformers\ListingTransformer $transformer
     *
     * @return Array of transformed data
     */

	protected function transformData($data, $transformer)
	{
		$transformation = fractal($data, new $transformer);

		return $transformation->toArray();
	}

	/**
     * Sorts  a collection of transformed data according to user's request
     *
     * @param  Illuminate\Support\Collection $collection
     * @param  App\Transformers\ListingTransformer $transformer
     *
     * @return Illuminate\Support\Collection $collection
     */

	protected function sortData(Collection $collection, $transformer)
	{
		if (request()->has('sort_by')) {
			//gets a transformed attribute of the data for sorting
			$attribute = $transformer::originalAttribute(request()->sort_by);
			$collection = $collection->sortBy->{$attribute};
		}
		return $collection;
	}

	/**
     * Filters  a collection of transformed data according to user's request
     *
     * @param  Illuminate\Support\Collection $collection
     * @param  App\Transformers\ListingTransformer $transformer
     *
     * @return Illuminate\Support\Collection $collection
     */


	protected function filterData(Collection $collection, $transformer)
	{
		foreach (request()->query() as $query => $value) {
			//var_dump(request()->query());
			//gets a transformed attribute for the user's query
			$attribute = $transformer::originalAttribute($query);

			if (isset($attribute, $value)) {
				if($attribute == 'rent_amount')
				{
					//The rent amount has to be less than or equal to what user requests
					$collection = $collection->where($attribute, '<=', $value);
				}

				// the date requested should be before the date user selects
				else if( $attribute == 'date_available')
				{
					$value = date($value);
					$collection = $collection->where($attribute, '<=' , $value);
				}

				else
				{
					$collection = $collection->where($attribute, $value);
				}
			}




		}
		return $collection;
	}

	/**
     * Caches user responses for 30 seconds
     *
     * @param  Illuminate\Support\Collection $data
     *
     * @return Illuminate\Support\Collection $data
     */


	protected function cacheResponse($data)
	{
		//current url
		$url = request()->url();
		//other request in the url
		$queryParams = request()->query();
		
		//sorts the requests in the URL
		ksort($queryParams);

		$queryString = http_build_query($queryParams);

		//caches the full url for 30 seconds
		$fullUrl = "{$url}?{$queryString}";
		return Cache::remember($fullUrl, 30/60, function() use($data) {
			return $data;
		});
	}

	
}