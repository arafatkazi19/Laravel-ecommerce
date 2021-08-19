<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Brand;

class ApiBrandController extends Controller
{
    //
    public function storeBrand(Request $request){
    	// dd($request->all());
    		$brand = new Brand();
    		$brand->brand_name = $request->brand_name;
    		$brand->brand_description = $request->brand_description;
    		$brand->publication_status = $request->publication_status;
    		$brand->save();

    		return response()->json($brand);
    }
}
