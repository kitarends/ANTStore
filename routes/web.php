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


Route::get('/', function () {
    return view('home.home');
});


Auth::routes();


Route::middleware(['auth'])->group(function () {
    Route::get('/logout', function () {
        Auth::logout();

        return redirect('/');
    });
    Route::get('/profile/info', 'ProfileController@info');
    Route::post('/profile/save_info', 'ProfileController@save_info');
    Route::get('/orders/{id}/dispose', 'OrderController@dispose');
    Route::get('/orders', 'OrderController@all');
    Route::get('/orders/{id}', 'OrderController@show');

});

Route::redirect('/home', '/')->name('home');


Route::get('/cart', 'CartController@index');
Route::get('/cart/add/{product_id}/{number}', 'CartController@add_to_cart');
Route::get('/cart/remove/{product_id}', 'CartController@remove_from_cart');
Route::get('/checkout', 'CartController@checkout');
Route::post('/save_checkout', 'CartController@save_checkout');


Route::middleware(['auth', 'admin'])->group(function () {
    Route::get('/manage/orders', 'OrderController@manage');

    Route::get('/manage', 'AdminController@dashboard');

    Route::resource('/products', 'ProductController')->except(['show']);
    Route::get('/products/{id}/delete', 'ProductController@destroy');
    Route::get('/manage/products', 'ProductController@manage')->middleware('admin');
    Route::get('/manage/categories', 'CategoryController@manage');
    Route::get('/manage/blogs', 'BlogController@manage');

    Route::get('/profile/info', 'ProfileController@info');
    Route::post('/profile/save_info', 'ProfileController@save_info');

    Route::resource('/categories', "CategoryController")->except(['show']);
    Route::get('/categories/{id}/delete', "CategoryController@delete");

    Route::resource('/blogs', "BlogController")->except(['show', 'index']);
    Route::get('/blogs/{id}/delete', "BlogController@delete");

    Route::get('/manage/users', 'UserController@index');
    Route::get('/manage/users/{id}/delete', 'UserController@delete');
    Route::get('/manage/users/{id}/make_admin', 'UserController@make_admin');
    Route::get('/manage/users/{id}/unmake_admin', 'UserController@unmake_admin');

    Route::get('/orders/{id}/confirm', 'OrderController@confirm');
    Route::get('/orders/{id}/ship', 'OrderController@ship');
    Route::get('/orders/{id}/done', 'OrderController@done');
});
Route::resource('/products', 'ProductController')->only(['show']);

Route::resource('/categories', "CategoryController")->only(['show']);
Route::resource('/blogs', "BlogController")->only(['show', 'index']);

Route::get('/search', 'SearchController@index');

Route::get('/about', 'BlogController@about');
Route::get('/contact', 'BlogController@contact');
Route::get('/dmca', 'BlogController@dmca');
Route::get('/terms_of_service', 'BlogController@terms_of_service');

