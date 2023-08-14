<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\model\genarelSetting;
use App\model\HomeCover;
use App\model\servicesmanage;
use App\model\PackageManage;
use App\model\DomainPricing;
use App\model\Cover;
class homeController extends Controller
{
 
 //------home------//
 public function homemethod()
  {
   $data['cover']=HomeCover::first();
   $data['settingdata']=genarelSetting::first();
   $data['homeCover']=Cover::first();
   $data['domain']=DomainPricing::where('status','0')->orderBy('id','ASC')->limit(5)->get();
   $data['services']=servicesmanage::where('status','0')->orderBy('id','ASC')->limit(6)->get();
   $data['PackageManage']=PackageManage::where('package_id','3')->where('status','0')->limit(4)->get();
 	 return view ('front_end.layouts.home',$data);
  }


  public function webCategory($data){
   if (isset($data)){
    $page_data = $data;
    return view ('front_end.services.webCategory',compact('page_data'));
   }
   else{
    return redirect()->back();
  }
 }

 public function websinglepage($data){
   if (isset($data)){
    $page_data = $data;
    return view ('front_end.services.webSinglePage',compact('page_data'));
   }
   else{
    return redirect()->back();
  }
 }







 


}
