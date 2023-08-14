<?php

use Illuminate\Support\Facades\Route;
use App\model\ContactMassage;


//__________AJAX ROUTES___________//
Route::get('get-client/message','Backend\userContactController@getClientMessage')->name('get.client.message');


//------frontEnd Route-------//
Route::get('/','FrontEnd\homeController@homemethod')->name('/');
Route::get('about-page','FrontEnd\AboutController@about_page')->name('about_page');
Route::get('why_choose','FrontEnd\ChoseController@why_choosePage')->name('why_choose');
Route::get('contact','FrontEnd\contactController@contact')->name('contact');


//-----service------//
Route::get('domain-price','FrontEnd\DomainController@domain_price')->name('domain_price');
Route::get('mail','FrontEnd\PackageController@mailPage')->name('mail');
Route::get('VPS','FrontEnd\PackageController@VPSPage')->name('VPS');
Route::get('shared-hosting','FrontEnd\PackageController@shared_hosting')->name('shared_hosting');
Route::get('reseller-hosting','FrontEnd\PackageController@reseller_hosting')->name('reseller_hosting');
Route::get('sms','FrontEnd\PackageController@sms')->name('sms');
Route::get('zimbraMail','FrontEnd\PackageController@zimbraMail')->name('zimbraMail');
Route::get('ofice365','FrontEnd\PackageController@ofice')->name('ofice365');
Route::get('web-development','FrontEnd\PackageController@web_development')->name('web_development');


//_______client massage___________//
Route::post('contact/store','FrontEnd\contactController@store')->name('contact.store');

//_____ Auth And register route _______//
Auth::routes();
Route::get('home','HomeController@adminHome')->name('home')->middleware('is_admin');



//===== User ========//
Route::prefix('user')->group(function()
{
	//______ User _______//
	Route::get('/view','Backend\UserController@view')->name('user.view');
	Route::get('/add','Backend\UserController@add')->name('user.add');
	Route::post('/store','Backend\UserController@store')->name('user.store');
	Route::get('/edit/{id}','Backend\UserController@edit')->name('user.edit');
	Route::post('/update/{id}','Backend\UserController@update')->name('user.update');
	Route::get('/delete/{id}','Backend\UserController@delete')->name('user.delete');
	Route::get('/inacative/{id}','Backend\UserController@inacative')->name('user.inacative');
	Route::get('/active/{id}','Backend\UserController@active')->name('user.active');
});


//======= Profile ========//

Route::prefix('profiles')->group(function()
{
	//________ User Profile _________//
	Route::get('/view','Backend\ProfilesController@view')->name('profiles.view');
	Route::get('/edit','Backend\ProfilesController@edit')->name('profiles.edit');
	Route::post('/store','Backend\ProfilesController@update')->name('profiles.update');
	Route::get('/password/view','Backend\ProfilesController@passwordview')->name('profiles.password.view');
	Route::post('/password/update','Backend\ProfilesController@passwordupdate')->name('profiles.password.update');
});

//======= Slider =========//
Route::prefix('slider')->group(function()
{
	//__________Slider____________//
	Route::get('/slider/view','Backend\sliderController@view')->name('slider.view');
	Route::get('/slider/add','Backend\sliderController@add')->name('slider.add');
	Route::post('/slider/store','Backend\sliderController@store')->name('slider.store');
	Route::get('/slider/edit/{id}','Backend\sliderController@edit')->name('slider.edit');
	Route::post('/slider/update/{id}','Backend\sliderController@update')->name('slider.update');
	Route::get('/slider/delete/{id}','Backend\sliderController@delete')->name('slider.delete');
	Route::get('/slider/inacative/{id}','Backend\sliderController@inacative')->name('slider.inacative');
	Route::get('/slider/active/{id}','Backend\sliderController@active')->name('slider.active');
});



Route::prefix('homecover')->group(function()
{
	//__________Slider____________//
	Route::get('/homecover/add','Backend\HomeCoverController@add')->name('homecover.add');
	Route::post('/homecover/update/{id}','Backend\HomeCoverController@update')->name('homecover.update');
	
});



//======== Setting Backend ===========//
Route::prefix('setting')->group(function()
{

	//_________Cover Page____________//
	Route::get('/cover/view','Backend\coverSettingController@view')->name('cover.setting.view');
	Route::get('/cover/add','Backend\coverSettingController@add')->name('cover.setting.add');
	Route::post('/cover/store','Backend\coverSettingController@store')->name('cover.setting.store');
	Route::get('/cover/edit/{id}','Backend\coverSettingController@edit')->name('cover.setting.edit');
	Route::post('/cover/update/{id}','Backend\coverSettingController@update')->name('cover.setting.update');
	Route::get('/cover/delete/{id}','Backend\coverSettingController@delete')->name('cover.setting.delete');
	Route::get('/cover/inacative/{id}','Backend\coverSettingController@inacative')->name('cover.setting.inacative');
	Route::get('/cover/active/{id}','Backend\coverSettingController@active')->name('cover.setting.active');

	//_________ Genarel Setting _________//
	Route::get('/genarelsetting/add','Backend\GenarelsettingController@add')->name('genarelsetting.add');
	Route::post('/genarelsetting/update/{id}','Backend\GenarelsettingController@update')->name('genarelsetting.update');

	//_________ About ____________//
	Route::get('/about/add','Backend\AboutController@add')->name('about.add');
	Route::post('/about/update/{id}','Backend\AboutController@update')->name('about.update');

	//_________ Choos __________//
	Route::get('/choose/add','Backend\ChooseController@add')->name('choose.add');
	Route::post('/choose/update/{id}','Backend\ChooseController@update')->name('choose.update');

	//__________ Home Cover __________//
	Route::get('/Homecover/add','Backend\CoverController@add')->name('cover.add');
	Route::post('/Homecover/update/{id}','Backend\CoverController@update')->name('cover.update');

});


//======= Service =========//
Route::prefix('service')->group(function()
{

	//_________Services Type_________//
	Route::get('/view','Backend\servicesTypeController@view')->name('servicestype.view');
	Route::get('/add','Backend\servicesTypeController@add')->name('servicestype.add');
	Route::post('/store','Backend\servicesTypeController@store')->name('servicestype.store');
	Route::get('/edit/{id}','Backend\servicesTypeController@edit')->name('servicestype.edit');
	Route::post('/update/{id}','Backend\servicesTypeController@update')->name('servicestype.update');
	Route::get('/delete/{id}','Backend\servicesTypeController@delete')->name('servicestype.delete');
	Route::get('/inacative/{id}','Backend\servicesTypeController@inacative')->name('servicestype.inacative');
	Route::get('/active/{id}','Backend\servicesTypeController@active')->name('servicestype.active');

	//_________ Services Manage ___________//
	Route::get('/services/manege/view','Backend\servicesmanageController@view')->name('services.manege.view');
	Route::get('/services/manege/add','Backend\servicesmanageController@add')->name('services.manege.add');
	Route::post('/services/manege/store','Backend\servicesmanageController@store')->name('services.manege.store');
	Route::get('/services/manege/edit/{id}','Backend\servicesmanageController@edit')->name('services.manege.edit');
	Route::post('/services/manege/update/{id}','Backend\servicesmanageController@update')->name('services.manege.update');
	Route::get('/services/manege/delete/{id}','Backend\servicesmanageController@delete')->name('services.manege.delete');
	Route::get('/services/manege/inacative/{id}','Backend\servicesmanageController@inacative')->name('services.manege.inacative');
	Route::get('/services/manege/active/{id}','Backend\servicesmanageController@active')->name('services.manege.active');

});


//======== Packag =========//
Route::prefix('package')->group(function()
{

	//_________ Package Type ___________//
	Route::get('/package/type/view','Backend\PackagetypeController@view')->name('package.type.view');
	Route::get('/package/type/add','Backend\PackagetypeController@add')->name('package.type.add');
	Route::post('/package/type/store','Backend\PackagetypeController@store')->name('package.type.store');
	Route::get('/package/type/edit/{id}','Backend\PackagetypeController@edit')->name('package.type.edit');
	Route::post('/package/type/update/{id}','Backend\PackagetypeController@update')->name('package.type.update');
	Route::get('/package/type/delete/{id}','Backend\PackagetypeController@delete')->name('package.type.delete');
	Route::get('/package/type/inacative/{id}','Backend\PackagetypeController@inacative')->name('package.type.inacative');
	Route::get('/package/type/active/{id}','Backend\PackagetypeController@active')->name('package.type.active');

	//___________ Package Manage ___________//
	Route::get('/package/manage/view','Backend\PackageManageController@view')->name('package.manege.view');
	Route::get('/package/manage/add','Backend\PackageManageController@add')->name('package.manege.add');
	Route::post('/package/manage/store','Backend\PackageManageController@store')->name('package.manege.store');
	Route::get('/package/manage/edit/{id}','Backend\PackageManageController@edit')->name('package.manege.edit');
	Route::post('/package/manage/update/{id}','Backend\PackageManageController@update')->name('package.manege.update');
	Route::get('/package/manage/delete/{id}','Backend\PackageManageController@delete')->name('package.manege.delete');
	Route::get('/package/manage/inacative/{id}','Backend\PackageManageController@inacative')->name('package.manege.inacative');
	Route::get('/package/manage/active/{id}','Backend\PackageManageController@active')->name('package.manege.active');

	//__________ Package Feature __________//
	Route::get('/package/feature/view','Backend\PackageFeatureController@view')->name('package.feature.view');
	Route::get('/package/feature/add','Backend\PackageFeatureController@add')->name('package.feature.add');
	Route::post('/package/feature/store','Backend\PackageFeatureController@store')->name('package.feature.store');
	Route::get('/package/feature/edit/{id}','Backend\PackageFeatureController@edit')->name('package.feature.edit');
	Route::post('/package/feature/update/{id}','Backend\PackageFeatureController@update')->name('package.feature.update');
	Route::get('/package/feature/delete/{id}','Backend\PackageFeatureController@delete')->name('package.feature.delete');
	Route::get('/package/feature/inacative/{id}','Backend\PackageFeatureController@inacative')->name('package.feature.inacative');
	Route::get('/package/feature/active/{id}','Backend\PackageFeatureController@active')->name('package.feature.active');

	//___________ Package Service ____________//
	Route::get('/package/service/view','Backend\PackageServiceController@view')->name('package.service.view');
	Route::get('/package/service/add','Backend\PackageServiceController@add')->name('package.service.add');
	Route::post('/package/service/store','Backend\PackageServiceController@store')->name('package.service.store');
	Route::get('/package/service/edit/{id}','Backend\PackageServiceController@edit')->name('package.service.edit');
	Route::post('/package/service/update/{id}','Backend\PackageServiceController@update')->name('package.service.update');
	Route::get('/package/service/delete/{id}','Backend\PackageServiceController@delete')->name('package.service.delete');
	Route::get('/package/service/inacative/{id}','Backend\PackageServiceController@inacative')->name('package.service.inacative');
	Route::get('/package/service/active/{id}','Backend\PackageServiceController@active')->name('package.service.active');

});


//=========Domain==========//
Route::prefix('domain')->group(function()
{

 //________ Domain Category ________ //
 Route::get('/domain/category/view','Backend\DomaincategoryController@view')->name('domain.category.view');
 Route::get('/domain/category/add','Backend\DomaincategoryController@add')->name('domain.category.add');
 Route::post('/domain/category/store','Backend\DomaincategoryController@store')->name('domain.category.store');
 Route::get('/domain/category/edit/{id}','Backend\DomaincategoryController@edit')->name('domain.category.edit');
 Route::post('/domain/category/update/{id}','Backend\DomaincategoryController@update')->name('domain.category.update');
 Route::get('/domain/category/delete/{id}','Backend\DomaincategoryController@delete')->name('domain.category.delete');
 Route::get('/domain/category/inacative/{id}','Backend\DomaincategoryController@inacative')->name('domain.category.inacative');
 Route::get('/domain/category/active/{id}','Backend\DomaincategoryController@active')->name('domain.category.active');

 //_________ Domainc Domain Pricing ________//
 Route::get('/domain/pricing/view','Backend\DomainPricingController@view')->name('domain.pricing.view');
 Route::get('/domain/pricing/add','Backend\DomainPricingController@add')->name('domain.pricing.add');
 Route::post('/domain/pricing/store','Backend\DomainPricingController@store')->name('domain.pricing.store');
 Route::get('/domain/pricing/edit/{id}','Backend\DomainPricingController@edit')->name('domain.pricing.edit');
 Route::post('/domain/pricing/update/{id}','Backend\DomainPricingController@update')->name('domain.pricing.update');
 Route::get('/domain/pricing/delete/{id}','Backend\DomainPricingController@delete')->name('domain.pricing.delete');
 Route::get('/domain/pricing/inacative/{id}','Backend\DomainPricingController@inacative')->name('domain.pricing.inacative');
 Route::get('/domain/pricing/active/{id}','Backend\DomainPricingController@active')->name('domain.pricing.active');


});


//=========Domain==========//
Route::prefix('web_development')->group(function()
{
//________ Domain Category ________ //
 Route::get('/web-content/view','Backend\WebContentController@view')->name('web_content.view');
 Route::get('/web-content/add','Backend\WebContentController@add')->name('web_content.add');
 Route::post('/web-content/store','Backend\WebContentController@store')->name('web_content.store');
 Route::get('/web-content/edit/{id}','Backend\WebContentController@edit')->name('web_content.edit');
 Route::post('/web-content/update/{id}','Backend\WebContentController@update')->name('web_content.update');
 Route::get('/web-content/delete/{id}','Backend\WebContentController@delete')->name('web_content.delete');
 Route::get('/web-content/inacative/{id}','Backend\WebContentController@inacative')->name('web_content.inacative');
 Route::get('/web-content/active/{id}','Backend\WebContentController@active')->name('web_content.active');
});



//======= Contact =========//
Route::prefix('contact')->group(function()
{

 //________ Contact ________//
 Route::get('/contact/add','Backend\contactController@add')->name('contact.add');
 Route::post('/contact/update/{id}','Backend\contactController@update')->name('contact.update');

 //_______ Contact User ________//
 Route::get('user/contact/view','Backend\userContactController@view')->name('user.contact.view');
Route::get('user/contact/delete/{id}','Backend\userContactController@delete')->name('user.contact.delete');

});

