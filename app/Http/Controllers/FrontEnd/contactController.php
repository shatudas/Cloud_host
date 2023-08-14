<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\model\ContactMassage;
use App\model\contact;
use App\model\CoverSetting;


class contactController extends Controller
{
   public function contact(){

    
    $data['contact']=contact::first();
    $data['contactcover']=CoverSetting::where('cover_id','contact')->first();
    return view ('front_end.contact.contact_page',$data);
  }

  public function store(Request $request){
  	
  	$this->validate($request,[
   'name'    =>'required',
   'phone'   =>'required',
   'email'   =>'required',
   'subject' =>'required',
   'message' =>'required'
   ]);

    $data=new ContactMassage();
    $data->name    = $request->name;
    $data->phone   = $request->phone;
    $data->email   = $request->email;
    $data->subject = $request->subject;
    $data->message = $request->message;
    $data->save();
    return redirect()->route('contact')->with('success','Data Insert Successfully');
   


  } 



}
