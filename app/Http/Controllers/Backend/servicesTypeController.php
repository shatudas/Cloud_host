<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\model\ServicesType;
use Auth;


class servicesTypeController extends Controller
{
  
 //----auth------//
 public function __construct()
 {
  $this->middleware('auth');
 }

 //-----view------//
 public function view()
  {
   $data['alldata'] = ServicesType::all();
   return view('backend.service.servicesType.view-service-type',$data); 
  }

 //------add------//
	public function add()
	 {
	  return view('backend.service.servicesType.add-service-type');
	 }
 
 //------add------//
	public function store(Request $request)
 {
  $this->validate($request,[
  'name'   =>'required',
  'status' =>'required'
  ]);

  $data = new ServicesType();
  $data->name       = $request->name;
  $data->status     = $request->status;
  $data->created_by = Auth::user()->id;

  $data->save();
  return redirect()->route('servicestype.view')->with('success','Service Type Successfully');
 }

 //-----update-----//
 public function update(Request $request,$id)
 {
  $data = ServicesType::find($id);
  $data->name       = $request->name;
  $data->status     = $request->status;
  $data->updated_by = Auth::user()->id;

  $data->save();
  return redirect()->route('servicestype.view')->with('success','Service Update Successfully');
 }

 //------edit------//
 public function edit($id)
  {
   $editdata=ServicesType::find($id);
   return view('backend.service.servicesType.edit-service-type',compact('editdata'));
  }

 //------inactive-------//
 public function inacative($id)
 {
  ServicesType::find($id)->where('id',$id)->update(['status'=>1]);
  return redirect()->back();
 }
   
 //------active------//
  public function active($id)
  {
   ServicesType::find($id)->where('id',$id)->update(['status'=>0]);
   return redirect()->back();
  }

 //------update------//
 public function delete($id)
  {
  $slider=ServicesType::find($id);
  $slider->delete();
  return redirect()->route('servicestype.view')->with('error','Service Deleted Successfully');
 }

}
