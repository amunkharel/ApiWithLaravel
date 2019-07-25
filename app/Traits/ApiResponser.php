<?php
namespace App\Traits;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Collection;
trait ApiResponser
{
	private function successResponse($data, $code)
	{
		return response()->json($data, $code);
	}
	protected function errorResponse($message, $code)
	{
		return response()->json(['error' => $message, 'code' => $code], $code);
	}
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

		return $this->successResponse($collection, $code);
	}
	protected function showOne(Collection $collection, $code = 200)
	{
		$transformer = $collection->first()->transformer;
		$collection = $this->transformData($collection, $transformer);
		return $this->successResponse($collection, $code);
	}

	protected function showMessage($message, $code = 200)
	{
		return $this->successResponse(['data' => $message], $code);
	}

	protected function transformData($data, $transformer)
	{
		$transformation = fractal($data, new $transformer);

		return $transformation->toArray();
	}

	protected function sortData(Collection $collection, $transformer)
	{
		if (request()->has('sort_by')) {
			$attribute = $transformer::originalAttribute(request()->sort_by);
			$collection = $collection->sortBy->{$attribute};
		}
		return $collection;
	}


	protected function filterData(Collection $collection, $transformer)
	{
		foreach (request()->query() as $query => $value) {
			//var_dump(request()->query());
			$attribute = $transformer::originalAttribute($query);

			if (isset($attribute, $value)) {
				if($attribute == 'rent_amount')
				{
					$collection = $collection->where($attribute, '<=', $value);
				}

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

	
}