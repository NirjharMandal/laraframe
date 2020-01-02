<?php
Route::get('property/{propertyid?}', 'Law\PropertyController@propertyEntry')->name('property');
Route::post('save-property-info', 'Law\PropertyController@saveBasicInfo')->name('save-basic-info');
Route::post('save-land-info', 'Law\PropertyController@saveLandInfo')->name('save-land-info');
Route::post('save-toponomic-info', 'Law\PropertyController@saveToponomicInfo')->name('save-toponomic-info');
Route::post('save-municipal-info', 'Law\PropertyController@saveMunicipalInfo')->name('save-municipal-info');
Route::post('save-map-info', 'Law\PropertyController@saveMapInfo')->name('save-map-info');
Route::post('save-fiscal-info', 'Law\PropertyController@saveFiscalInfo')->name('save-fiscal-info');
Route::post('save-cityhall-info', 'Law\PropertyController@saveCityhallInfo')->name('save-cityhall-info');
Route::post('save-energy-info', 'Law\PropertyController@saveEnergyInfo')->name('save-energy-info');
Route::post('save-technical-info', 'Law\PropertyController@saveTechnicalInfo')->name('save-technical-info');
Route::post('save-constitutive-info', 'Law\PropertyController@saveConstitutiveInfo')->name('save-constitutive-info');
Route::post('save-infrastructures-info', 'Law\PropertyController@saveInfrastructuresInfo')->name('save-infrastructures-info');
Route::post('save-usage-info', 'Law\PropertyController@saveUsageLicense')->name('save-usage-info');
Route::post('save-burden-info', 'Law\PropertyController@saveBurdenProperty')->name('save-burden-info');

Route::get('client/{clientid?}', 'Law\ClientController@clientEntry')->name('client');
Route::post('save-basic-info', 'Law\ClientController@saveBasicInfo')->name('save-basic-info');
Route::post('save-citizen-info', 'Law\ClientController@saveCitizen')->name('save-citizen-info');
Route::post('save-passport-info', 'Law\ClientController@savePassportInfo')->name('save-passport-info');
Route::post('save-certificate-info', 'Law\ClientController@saveCertificate')->name('save-certificate-info');
Route::post('save-legal-info', 'Law\ClientController@saveLegal')->name('save-legal-info');
Route::post('save-letter-info', 'Law\ClientController@saveLetter')->name('save-letter-info');
Route::post('save-transfer-info', 'Law\ClientController@saveTransfer')->name('save-transfer-info');

Route::get('contract/{contractid?}', 'Law\ContractController@contractEntry')->name('contract');
Route::post('save-contract-info', 'Law\ContractController@saveContractInfo')->name('save-contract-info');
Route::post('save-reservation-info', 'Law\ContractController@saveReservationInfo')->name('save-reservation-info');
Route::post('save-deal-info', 'Law\ContractController@saveDealInfo')->name('save-deal-info');
Route::post('save-promise-info', 'Law\ContractController@savePromiseInfo')->name('save-promise-info');
Route::post('save-annexed-info', 'Law\ContractController@saveAnnexedInfo')->name('save-annexed-info');
Route::post('save-deed-info', 'Law\ContractController@saveDeedInfo')->name('save-deed-info');
Route::post('save-financial-info', 'Law\ContractController@saveFinancialInfo')->name('save-financial-info');
Route::post('save-payment-method-info', 'Law\ContractController@savePaymentMethodInfo')->name('save-payment-method-info');



Route::post('remove-file-record', 'Law\LawController@removeFileRecord')->name('contract');
