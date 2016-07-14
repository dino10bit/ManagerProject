<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

// Display all SQL executed in Eloquent
/*
Event::listen('illuminate.query', function($query)
{
    print_r($query);
});
*/
/*
Route::get('/', function()
{
	return View::make('hello');
});
*/
//Route::get('/', 'ItemController@dashboard')->before('auth');
Route::get('/', 'TransController@dashboard')->before('auth');

Route::get('/halo', function()
{
    return "Halo, bro";
});

Route::get('/halo-juga', 'SiteController@haloJuga')->before('auth');

// route to show the login form
Route::get('login', array('uses' => 'HomeController@showLogin'));

// route to process the form
Route::post('login', array('uses' => 'HomeController@doLogin'));

// route to process logout
Route::get('logout', array('as' => 'logout', function () {
    Auth::logout();

    return Redirect::to('login');
}))->before('auth');

// route to show dds form
Route::get('/formdds', array('uses' => 'ItemController@formDds'))->before('auth');

// route to add dds data
Route::post('formdds', array('uses' => 'ItemController@saveDds'))->before('auth');

// route to edit dds data
Route::get('edit_dds/{id}', array('uses' => 'ItemController@editDds'))->before('auth');

// route to delete dds data
Route::get('delete_dds/{id}', array('uses' => 'ItemController@deleteDds'))->before('auth');

// route to view dds data
Route::get('view_dds', array('uses' => 'ItemController@viewDds'))->before('auth');

// route to search dds data
Route::post('view_dds', array('uses' => 'ItemController@viewDds'))->before('auth');

// route to show modem form
Route::get('/form_modem', array('uses' => 'ItemController@formModem'))->before('auth');

// route to add modem data
Route::post('form_modem', array('uses' => 'ItemController@saveModem'))->before('auth');

// route to view modem data
Route::get('view_modem', array('uses' => 'ItemController@viewModem'))->before('auth');

// route to search modem data
Route::post('view_modem', array('uses' => 'ItemController@viewModem'))->before('auth');

// route to show obu form
Route::get('/form_obu', array('uses' => 'ItemController@formObu'))->before('auth');

// route to add obu data
Route::post('form_obu', array('uses' => 'ItemController@saveObu'))->before('auth');

// route to view obu data
Route::get('view_obu', array('uses' => 'ItemController@viewObu'))->before('auth');

// route to search obu data
Route::post('view_obu', array('uses' => 'ItemController@viewObu'))->before('auth');

// route to show simcard form
Route::get('/form_simcard', array('uses' => 'ItemController@formSimcard'))->before('auth');

// route to add simcard data
Route::post('form_simcard', array('uses' => 'ItemController@saveSimcard'))->before('auth');

// route to view simcard data
Route::get('view_simcard', array('uses' => 'ItemController@viewSimcard'))->before('auth');

// route to search simcard data
Route::post('view_simcard', array('uses' => 'ItemController@viewSimcard'))->before('auth');

// route to show part form
Route::get('/form_part', array('uses' => 'ItemController@formPart'))->before('auth');

// route to add part data
Route::post('form_part', array('uses' => 'ItemController@savePart'))->before('auth');

// route to view part data
Route::get('view_part', array('uses' => 'ItemController@viewPart'))->before('auth');

// route to search part data
Route::post('view_part', array('uses' => 'ItemController@viewPart'))->before('auth');

// route to show product form
Route::get('/form_product', array('uses' => 'ItemController@formProduct'))->before('auth');

// route to add product data
Route::post('form_product', array('uses' => 'ItemController@saveProduct'))->before('auth');

// route to edit product data
Route::get('edit_product/{id}', array('uses' => 'ItemController@editProduct'))->before('auth');

// route to view product data
Route::get('view_product', array('uses' => 'ItemController@viewProduct'))->before('auth');

// route to search product data
Route::post('view_product', array('uses' => 'ItemController@viewProduct'))->before('auth');


// route to show user form
Route::get('/form_user', array('uses' => 'ItemController@formUser'))->before('auth');

// route to add user data
Route::post('form_user', array('uses' => 'ItemController@saveUser'))->before('auth');

// route to edit user data
Route::get('edit_user/{id}', array('uses' => 'ItemController@editUser'))->before('auth');

// route to view user data
Route::get('view_user', array('uses' => 'ItemController@viewUser'))->before('auth');

// route to get obu api
Route::get('api/get_obu', array('uses' => 'ApiController@getObu'))->before('auth');

// route to get dds api
Route::get('api/get_dds', array('uses' => 'ApiController@getDds'))->before('auth');

// route to get modem api
Route::get('api/get_modem', array('uses' => 'ApiController@getModem'))->before('auth');

// route to get simcard api
Route::get('api/get_simcard', array('uses' => 'ApiController@getSimcard'))->before('auth');

// route to get user api
Route::get('api/get_user', array('uses' => 'ApiController@getUser'))->before('auth');

// route to get part api
Route::get('api/get_part', array('uses' => 'ApiController@getPart'))->before('auth');


// route to get part api
Route::get('api/get_owner', array('uses' => 'ApiController@getOwner'))->before('auth');

// route to get owner api
Route::get('api/get_owner', array('uses' => 'ApiController@getOwner'))->before('auth');

// route to get vehicle api
Route::get('api/get_vehicle', array('uses' => 'ApiController@getVehicle'))->before('auth');

// route to get master product api
Route::get('api/get_product', array('uses' => 'ApiController@getProduct'))->before('auth');

// route to get detail product api
Route::get('api/get_detail_product', array('uses' => 'ApiController@getDetailProduct'))->before('auth');

// route to get new simcard api
Route::get('api/get_new_simcard', array('uses' => 'ApiController@getNewSimcard'))->before('auth');

// route to get master transaksi api
Route::get('api/get_transaksi', array('uses' => 'ApiController@getTransaksi'))->before('auth');

// route to get master product api
Route::get('api/get_master_product', array('uses' => 'ApiController@getMasterProduct'))->before('auth');

// route to get tecnician api
Route::get('api/get_technician', array('uses' => 'ApiController@getTechnician'))->before('auth');

// route to print product
Route::get('print/product/{id}', array('uses' => 'PrintController@product'))->before('auth');

// route to print product
Route::get('print/claimte/{id}', array('uses' => 'PrintController@claimte'))->before('auth');

// route to create do
Route::get('form_do/{id}', array('uses' => 'DoController@formDO'))->before('auth');

// route to save temp do
Route::post('form_do', array('uses' => 'DoController@saveTempDO'))->before('auth');

// route to save do
Route::post('save_do', array('uses' => 'DoController@saveDO'))->before('auth');

// route to view do
Route::get('view_do', array('uses' => 'DoController@viewDO'))->before('auth');
Route::get('view_po', array('uses' => 'DoController@viewPO'))->before('auth');

// route to view detail do
Route::get('detail_do', array('uses' => 'DoController@detailDO'))->before('auth');

// route to reset do session
Route::get('delete_session_do', array('uses' => 'DoController@deSessionDO'))->before('auth');

// route to show service form
Route::get('service/form_service', array('uses' => 'ServiceController@formService'))->before('auth');

// route to add service data
Route::post('service/form_service', array('uses' => 'ServiceController@saveService'))->before('auth');

// route to view service data
Route::get('view_service', array('uses' => 'ServiceController@viewService'))->before('auth');

// route to search claim data
Route::post('view_service', array('uses' => 'ServiceController@viewService'))->before('auth');

// add by syifur - Th, 2014-11-13

// route to show claim_te form
Route::get('/formclaimte', array('uses' => 'ClaimteController@formClaimte'))->before('auth');

// route to add claim_te data
Route::post('formclaimte', array('uses' => 'ClaimteController@saveClaimte'))->before('auth');

// route to view claim data
Route::get('viewclaimte', array('uses' => 'ClaimteController@viewClaimte'))->before('auth');

// route to search claim data
Route::post('viewclaimte', array('uses' => 'ClaimteController@viewClaimte'))->before('auth');


// route company and company category
Route::get('company/form_compcat', array('uses'=> 'CompanyController@formCompcat'))->before('auth');

Route::get('company/form_company', array('uses'=> 'CompanyController@formCompany'))->before('auth');

Route::post('company/form_compcat', array('uses' => 'CompanyController@saveCompcat'))->before('auth');

Route::post('company/form_company', array('uses' => 'CompanyController@saveCompany'))->before('auth');


// route vehicle
Route::get('vehicle/form_vmanufacture', array('uses'=> 'VehicleController@formManufacture'))->before('auth');

Route::post('vehicle/form_vmanufacture', array('uses'=> 'VehicleController@saveManufacture'))->before('auth');


Route::get('vehicle/form_vmodel', array('uses'=> 'VehicleController@formVmodel'))->before('auth');

Route::post('vehicle/form_vmodel', array('uses'=> 'VehicleController@saveVmodel'))->before('auth');

Route::get('vehicle/form_vehicle', array('uses'=> 'VehicleController@formVehicle'))->before('auth');

Route::post('vehicle/form_vehicle', array('uses'=> 'VehicleController@saveVehicle'))->before('auth');


// route transaksi
Route::get('trans/view_transaksi', array('uses'=> 'TransController@viewTransaksi'))->before('auth');
Route::get('trans/view_detail_transaksi/{id}', array('uses'=> 'TransController@viewDetailTransaksi'))->before('auth');

Route::get('trans/form_transaksi', array('uses'=> 'TransController@formTransaksi'))->before('auth');
Route::post('trans/form_transaksi', array('uses'=> 'TransController@saveTransaksi'))->before('auth');

Route::get('trans/edit_transaksi/{id}', array('uses'=> 'TransController@editTransaksi'))->before('auth');
Route::post('trans/edit_transaksi', array('uses'=> 'TransController@saveTransaksi'))->before('auth');

Route::get('trans/form_detail_transaksi', array('uses'=> 'TransController@formDetailTransaksi'))->before('auth');
Route::post('trans/form_detail_transaksi', array('uses'=> 'TransController@saveDetailTransaksi'))->before('auth');


// route user
Route::post('user/view_user', array('uses'=> 'OrangController@viewUser'))->before('auth');
Route::get('user/view_user', array('uses'=> 'OrangController@viewUser'))->before('auth');
Route::get('user/form_user', array('uses'=> 'OrangController@formUser'))->before('auth');
Route::post('user/form_user', array('uses'=>'OrangController@saveUser'))->before('auth');

Route::get('calender/calender', array('uses'=>'OrangController@calender'))->before('auth');


// route master product
Route::get('product/form_master_product', array('uses'=> 'ProductController@formProduct'))->before('auth');
Route::post('product/form_master_product', array('uses'=> 'ProductController@addProduct'))->before('auth');

Route::get('product/edit_master_product/{id}', array('uses'=> 'ProductController@editProduct'))->before('auth');
Route::post('product/edit_master_product', array('uses'=> 'ProductController@addProduct'))->before('auth');

Route::get('product/view_product', array('uses'=> 'ProductController@viewProduct'))->before('auth');
Route::post('product/view_product', array('uses'=> 'ProductController@viewProduct'))->before('auth');

// route detail product
Route::post('product/form_detail_product', array('uses'=> 'ProductController@addDetailProduct'))->before('auth');
Route::get('product/form_detail_product', array('uses'=> 'ProductController@formDetailProduct'))->before('auth');

Route::get('product/edit_detail_product/{id}', array('uses'=> 'ProductController@editDetailProduct'))->before('auth');

Route::get('product/view_detail_product', array('uses'=> 'ProductController@viewDetailProduct'))->before('auth');
Route::post('product/view_detail_product', array('uses'=> 'ProductController@viewDetailProduct'))->before('auth');
