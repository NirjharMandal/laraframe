<?php
Route::get('property', 'Law\PropertyController@propertyEntry')->name('property');


Route::get('client', 'Law\ClientController@clientEntry')->name('client');
Route::post('save-basic-info', 'Law\ClientController@saveBasicInfo')->name('save-basic-info');
Route::post('save-passport-info', 'Law\ClientController@savePassportInfo')->name('save-passport-info');


Route::get('contract', 'Law\ContractController@contractEntry')->name('contract');
