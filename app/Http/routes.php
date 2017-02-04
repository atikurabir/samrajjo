<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});


/* Category Route*/


Route::get('/categories','CategoriesController@index');
Route::get('/categories/{id}','CategoriesController@show');
Route::Post('/categories','CategoriesController@store');
Route::Post('/categories/edit','CategoriesController@edit');
Route::Post('/categories/{category}','CategoriesController@update');
Route::Post('/categories/{category}/delete','CategoriesController@destroy');




Route::Post('/categories/{category}/subcategory','SubcategoriesController@index');

Route::get('/test', function () {
    return view('category.test');
});