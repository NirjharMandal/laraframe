<?php
Route::fallback(function(){
    return response()->view('errors.404');
});
Route::get('no-permission', function(){
    return view('errors/no_permission');
})->middleware('menu_permission');
//Route::get('no-permission', 'HomeController@noPermission');
Route::get('documentation', 'Documentation@index')->name('documentation');
/*================================= USER AUTHENTICATION ==========================================*/
Route::get('/', 'Auth\LoginController@showLoginForm')->name('login');
Auth::routes();
Route::post('multi-login-action', 'User\UserController@multiLoginAction');
Route::post('notify-dismiss', 'User\UserController@notifyDismiss');

/*================================= SYSTEM ACCESS ==========================================*/
Route::get('/moduleChanger/{id}/{have_default_id?}', 'ModuleController@moduleChanger')->name('moduleChanger');
/*================================ MENU MANAGER ========================================*/
Route::get('menu_list', 'MenuManagement@menu_list')->name('menu_list');
Route::get('menulist', 'MenuManagement@menuList')->name('menu_list');
Route::post('menu_entry', 'MenuManagement@menu_entry')->name('menu_entry');
Route::post('getMenuRaw', 'MenuManagement@getMenuRaw')->name('getMenuRaw');
Route::post('saveMenuOrder', 'MenuManagement@saveMenuOrder')->name('saveMenuOrder');
Route::post('menuDelete', 'MenuManagement@menuDelete')->name('menuDelete');
Route::get('get_menu_for_level', 'MenuManagement@get_menu_for_level')->name('get_menu_for_level');

/*============================ Customer Search ===================================*/
Route::get('implement', 'CustomSearch\CustomSearch@implement')->name('implement');
Route::post('implement-post', 'CustomSearch\CustomSearch@implementPost')->name('implement');
Route::post('session-search-filter', 'CustomSearch\CustomSearch@sessionSearchFilter')->name('implement');
Route::get('custom-search-autocomplete-query/{mode?}/{master_det_id?}/{id?}', 'CustomSearch\CustomSearch@getAutocompleteQuery');

/*=================================== Dynamic drop down =====================================*/
Route::get('dropdown-index', 'Dropdown_grid\Dropdown_grid@dropdown_index')->name('dropdown_index');
Route::post('dropdown-grid-show', 'Dropdown_grid\Dropdown_grid@dropdown_grid_view')->name('dropdown-grid-show');
Route::post('get-dropdown-grid-data', 'Dropdown_grid\Dropdown_grid@get_dropdown_grid_ajax_data')->name('get-dropdown-grid-data');

/*=============================================MASTER ENTRY====================================================*/
Route::get('grid/{gridname}', 'Master\MasterGridController@getGrid')->name('grid');
Route::post('get-grid-data', 'Master\MasterGridController@getGridData')->name('get-grid-data');
Route::post('delete-record', 'Master\MasterGridController@deleteRecord');
Route::get('form/{formname}', 'Master\MasterFormController@buildMasterForm')->name('form');
Route::get('entryform/{formname}/{table_name?}/{primary_key_field?}/{id?}', 'Master\MasterFormController@buildFormForEntry')->name('entryform');
Route::post('masterFormDataStore', 'Master\MasterFormController@masterFormDataStore')->name('masterFormDataStore');
Route::get('get-autocomplete-query/{mode?}/{master_det_id?}/{id?}', 'Master\MasterFormController@getAutocompleteQuery');



