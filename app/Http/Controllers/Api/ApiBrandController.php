<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Brand;

class ApiBrandController extends Controller
{
    //
    public function index(){
    	$brands = Brand::where('publication_status',1)->get();
    	return response()->json($brands); 
    }

    public function storeBrand(Request $request){
    	// dd($request->all());
    		$brand = new Brand();
    		$brand->brand_name = $request->brand_name;
    		$brand->brand_description = $request->brand_description;
    		$brand->publication_status = $request->publication_status;
    		$brand->save();

    		return response()->json($brand);
    }

    public function updateBrand(Request $request){
    	// dd($request->all());
    	$brand = Brand::find($request->id);
    	$brand->brand_name = $request->brand_name;
    	$brand->brand_description = $request->brand_description; 
    	$brand->publication_status = $request->publication_status;
    	$brand->save(); 

    	return response()->json('Update Successfully');
 
    }

    public function deleteBrand($id){
    	$brand = Brand::find($id);
    	$brand->delete();
    	return response()->json('Brand deleted Successfully');

    }
}
