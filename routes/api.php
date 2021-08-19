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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Brand API Routes
$router->group(['prefix'=>'brand'], function() use ($router){

	$router->get('/brands','Api\ApiBrandController@index');
	$router->post('/store-brand','Api\ApiBrandController@storeBrand');
	$router->post('/update-brand','Api\ApiBrandController@updateBrand');
	$router->get('/delete-brand/{id}','Api\ApiBrandController@deleteBrand');

});
