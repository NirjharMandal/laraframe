<?php



Route::get('property', 'Law\PropertyController@propertyEntry')->name('property');


Route::get('client/{clientid?}', 'Law\ClientController@clientEntry')->name('client');
Route::post('save-basic-info', 'Law\ClientController@saveBasicInfo')->name('save-basic-info');
Route::post('save-citizen-info', 'Law\ClientController@saveCitizen')->name('save-citizen-info');
Route::post('save-passport-info', 'Law\ClientController@savePassportInfo')->name('save-passport-info');
Route::post('save-certificate-info', 'Law\ClientController@saveCertificate')->name('save-certificate-info');
Route::post('save-legal-info', 'Law\ClientController@saveLegal')->name('save-legal-info');
Route::post('save-letter-info', 'Law\ClientController@saveLetter')->name('save-letter-info');
Route::post('save-transfer-info', 'Law\ClientController@saveTransfer')->name('save-transfer-info');

Route::get('contract', 'Law\ContractController@contractEntry')->name('contract');




Route::post('remove-file-record', 'Law\ClientController@removeFileRecord')->name('contract');
