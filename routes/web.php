<?php
/*==========================================---DASHBOARD---======================================================*/
Route::get('home', 'DashboardController@index')->name('home');
Route::get('dashboard', 'DashboardController@getDashboard');
Route::get('my-dashboard', 'DashboardController@getMyDashboard');

Route::any('dashboard-setposition/{userid?}/{moduleid?}', 'DashboardController@DashboardSetPosition')->name('dashboard-setposition');
Route::any('dashboard-setwidget/{userid?}/{moduleid?}', 'DashboardController@DashboardSetMyWidgets')->name('dashboard-setposition');
Route::post('dashboard-fetch-list', 'DashboardController@fetchList')->name('dashboard-fetch-list');
Route::post('dashboard-fetch-summary', 'DashboardController@fetchSummary')->name('dashboard-fetch-summary');
Route::post('dashboard-fetch-pie', 'DashboardController@fetchPie')->name('dashboard-fetch-pie');

/*=================================== USER MANAGEMENT =========================================*/
Route::resource('users', 'User\UserController');
Route::post('getUserRaw', 'User\UserController@getUserRaw')->name('getUserRaw');
Route::post('profile', 'User\UserController@getUserProfile')->name('get-user-profile');
Route::match(['get', 'post'], 'user-list', 'User\UserController@List')->name('user-list');
Route::get('user-entry/{id?}', 'User\UserController@entryForm')->name('user-entry');
Route::match(['get', 'post'], 'store-user-info', 'User\UserController@storeUser')->name('store-user-info');



/*================================ MENU USER MANUAL ========================================*/
Route::post('get-existing-manual-info', 'MenuUserManual@getExistingManualInfo')->name('get-existing-manual-info');
Route::post('update-manual-info', 'MenuUserManual@updateManualInfo')->name('update-manual-info');




/*=============================== Customer Create ========================*/
Route::get('customer/{id?}', 'Customer\CustomerController@createNewCustomer')->name('new-customer');
Route::post('store-customer', 'Customer\CustomerController@storeCustomer')->name('store-customer');
Route::post('delete-customers', 'Customer\CustomerController@deleteCustomer')->name('delete-customers');
Route::get('check-email-availablity/{email?}', 'Customer\CustomerController@checkEmailValidity')->name('check-validity');
Route::post('chk-email-availablity', 'Customer\CustomerController@chkEmailValidity')->name('check-e-validity');
Route::get('check-contact-availability', 'Customer\CustomerController@checkContactValidity')->name('check-cont-validity');

Route::get('add-more-customer-details', function () {
    return View::make('Customer.contact_person_details', array('exData' => array()));
});

/*===============================User Profile========================*/
Route::get('profile', 'User\UserController@getUserProfiles')->name('getUserProfile');
Route::post('update-user-profile', 'User\UserController@updateUserProfile')->name('update-user-profile');
Route::get('reset_password', 'User\UserController@resetUserPassword')->name('resetPassword');
Route::post('reset-password-submit', 'User\UserController@resetPasswordSubmit');

/*=================Delegation Process=================*/
Route::get('get-approval-modules', 'Delegation\MyApprovalList@index')->name('approvalModules');
Route::post('seen-approval-notification', 'Delegation\MyApprovalList@seenApprovalNotification')->name('seen-approval-notification');
Route::get('get-delegation-list', 'Delegation\MyApprovalList@getDelegationList')->name('get-delegation-list');
Route::match(['get', 'post'], 'get-delegation-list', 'Delegation\MyApprovalList@getDelegationList')->name('get-delegation-list');


/*======================================================================================================================*/
/*======================================================================================================================*/
/*======================================================================================================================*/
/*========================= Attachment =========================== */
Route::post('support-document-upload', 'Attachment\AttachmentController@supportDocumentUpload')->name('support-document-upload');
Route::post('get-supporting-files', 'Attachment\AttachmentController@getSupportingFiles')->name('get-supporting-files');
Route::post('delete-attachments-item', 'Attachment\AttachmentController@deleteAttachmentsItem')->name('delete-attachments-item');

/* ================ System Settings In Admin Module ================= */
Route::get('session-filter/{debug?}', 'Auth\SessionFilterController@setUserFilterArray')->name('session-filter');
Route::get('session-permission-filter', 'Auth\SessionFilterController@setPermissionFilterArray')->name('session-permission-filter');

Route::get('system-settings/view', 'SystemSettingsController@view');
Route::post('update-system-settings', 'SystemSettingsController@update')->name('update-system-settings');
Route::post('delete-attachments-ajax', 'Attachment\AttachmentController@deleteAttachmentsAjax')->name('delete-attachments-ajax');

/**************************************************************************/
/*==========================================Testing routes for nirjhar======================================================*/
/*==========================================Testing routes for nirjhar======================================================*/
Route::get('ddd', 'ModuleController@getModuleList');
Route::get('sendnotice', 'TestController@sendNotice')->name('sendnotice');
Route::get('getnotice', 'TestController@getNotice')->name('getnotice');

/*==========================================Testing routes for nirjhar======================================================*/
/*==========================================Testing routes for nirjhar======================================================*/
/*============================== Delegation Process ===============================*/
Route::get('delegation-link-view-test/{code?}', 'Delegation\DelegationProcess@delegationLinkViewTest');
Route::any('delegation-initialize/{path?}', 'Delegation\DelegationProcess@delegationInitialize');
Route::post('delegation-approval-process', 'Delegation\DelegationProcess@delegationApprove');
Route::post('delegation-decline-process', 'Delegation\DelegationProcess@delegationDeclineProcess');
Route::get('waiting-for-approval/{slug}', 'Delegation\DelegationProcess@waitingForApproval');

Route::get('emp-category-entry/{id?}', 'HrEmpCategory\HrEmpCategoryController@create')->name('emp-category-entry');
Route::any('emp-category-store/{id?}/', 'HrEmpCategory\HrEmpCategoryController@store')->name('emp-category-store');
Route::post('go-to-hr-delegation-process', 'HrIncrementPromotion\HrIncrementController@goToHRDelegationProcess')->name('go-to-hr-delegation-process');
Route::post('hr-salary-bulk-approved', 'HrIncrementPromotion\HrIncrementController@HRsalaryBulkApproved')->name('hr-salary-bulk-approved');
Route::post('go-to-leave-delegation-process', 'HR\LeaveManager@goToLeaveDelegationProcess')->name('go-to-leave-delegation-process');