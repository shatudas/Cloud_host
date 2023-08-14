<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\model\ServicesType;
use App\model\servicesmanage;


class servicesmanageController extends Controller
{

 //----auth------//
 public function __construct()
 {
  $this->middleware('auth');
 }

 //---- view -----//
 public function view()
 {
  $data['alldata'] = servicesmanage::all();
  return view('backend.service.serviceManage.view-service-manage',$data); 
 }

 //------add------//
	public function add()
	 {
	  $data['type'] = ServicesType::where('status','0')->get();
	  return view('backend.service.serviceManage.add-service-manage',$data);
	 }
 
 //------store------//
	public function store(Request $request)
 {
  $this->validate($request,[
  'service_type_id' =>'required',
  'history'         =>'required',
  'status'          =>'required'
  ]);

  $data = new servicesmanage();

  $data->service_type_id  = $request->service_type_id;
  $data->history          = $request->history;
  $data->status           = $request->status;
  $data->url              = $request->url;
  $data->created_by       = Auth::user()->id;
  $data->save();
  return redirect()->route('services.manege.view')->with('success','Data Upload Successfully');

 }

 //------edit------//
 public function edit($id)
 {
  $data['type'] = ServicesType::where('status','0')->get();
  $data['editData'] = servicesmanage::find($id);
  return view('backend.service.serviceManage.edit-service-manage',$data);
 }

 //-----update-----//
 public function update(Request $request,$id)
  {
   $this->validate($request,[
   'service_type_id' =>'required',
   'history'         =>'required',
   'status'          =>'required'
   ]);

   $data =servicesmanage::find($id);
   $data->service_type_id = $request->service_type_id;
   $data->history          = $request->history;
   $data->status           = $request->status;
   $data->url              = $request->url;
   $data->updated_by = Auth::user()->id;

   $data->save();
   return redirect()->route('services.manege.view')->with('success','Slider Update Successfully');
  }

 //------update------//
 public function delete($id)
  {
   $slider=servicesmanage::find($id);
   $slider->delete();
   return redirect()->route('services.manege.view')->with('error','Data Deleted Successfully');
 }

 //------inactive-------//
 public function inacative($id)
 {
  servicesmanage::find($id)->where('id',$id)->update(['status'=>1]);
  return redirect()->back();
 }
   
 //------active------//
  public function active($id)
  {
   servicesmanage::find($id)->where('id',$id)->update(['status'=>0]);
   return redirect()->back();
  }
  
}
