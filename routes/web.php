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

/* Home page */
Route::get('/', 'landingController@getAllInfo');
Route::get('/portada', 'landingController@getAllInfo');

/* Blog page */
Route::get('/blog', 'blogController@getInfo');

/* Contact page */
Route::get('/contacte', 'contactController@getInfo');

/* About us page */
Route::get('/sobre-nosaltres', 'aboutController@getInfo');

/* Contact - Ticket */
Route::post('/ticket', 'contactController@addTicket');