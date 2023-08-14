<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\model\About;
use App\model\genarelSetting;

class AboutController extends Controller
{
  
 public function about_page(){
 	$data['about']=About::first();
 	$data['settingdata']=genarelSetting::first();
  return view ('front_end.about.about_page',$data);
 }


}
