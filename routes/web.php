<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get( '/', function () {
	return view( 'home.home' );
} );


Auth::routes();

Route::get( '/logout', function () {
	if ( @Auth::check() ) {
		Auth::logout();
	}

	return redirect( '/' );
} );

Route::get( '/home', 'HomeController@index' )->name( 'home' );

Route::resource( '/products', 'ProductController' );
Route::get( '/products/{id}/delete', 'ProductController@destroy' );
Route::get( '/manage/products', 'ProductController@manage' );
Route::get( '/manage/categories', 'CategoryController@manage' );

Route::get( '/admin/users', 'UserController@index' );
Route::get( '/admin/users/delete/{id}', 'UserController@delete' );
Route::get( '/admin/users/make_admin/{id}', 'UserController@make_admin' );
Route::get( '/admin/users/unmake_admin/{id}', 'UserController@unmake_admin' );


Route::get( '/cart', 'CartController@index' );
Route::get( '/cart/add/{product_id}/{number}', 'CartController@add_to_cart' );
Route::get( '/cart/remove/{product_id}', 'CartController@remove_from_cart' );
Route::get( '/checkout', 'CartController@checkout' );
Route::post( '/save_checkout', 'CartController@save_checkout' );

Route::get( '/orders', 'OrderController@all' );
Route::get( '/orders/{id}', 'OrderController@show' );


Route::get( '/profile/info', 'ProfileController@info' );
Route::post( '/profile/save_info', 'ProfileController@save_info' );


Route::resource( '/categories', "CategoryController" );
Route::get( '/categories/{id}/delete', "CategoryController@delete" );

