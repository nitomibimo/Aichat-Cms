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


Route::get('/', 'Auth\LoginController@loginview')->name('index');
Route::get('/dashboard', 'PageController@dashboard')->name('dashboard');
Route::post('/postlogin', 'Auth\LoginController@postlogin')->name('post-login');
Route::get('/getreport', 'PageController@report')->name('getreport');
Route::get('/getuser', 'PageController@user')->name('getuser');
Route::get('/getprize', 'PageController@prize')->name('getprize');
Route::get('/winner_filter', 'PageController@winner_filter')->name('winner_filter');
Route::post('/filter-post', 'PageController@filter_post')->name('filter-post');
Route::get('/winner_filter_period', 'PageController@winner_filter_period')->name('winner_filter_period');
Route::post('/filter-post-period', 'PageController@filter_post_period')->name('filter-post-period');
Route::get('/winner_filter_prize', 'PageController@winner_filter_prize')->name('winner_filter_prize');
Route::post('/filter-post-prize', 'PageController@filter_post_prize')->name('filter-post-prize');
Route::get('/exportexcel', 'PageController@exportExcel')->name('exportexcel');
Route::get('/exportview', 'PageController@exportview')->name('exportview');
Route::get('/exportjson', 'PageController@exportjson')->name('exportjson');
