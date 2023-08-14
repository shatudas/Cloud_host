<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\model\PackageType;
use App\model\PackageManage;
use Auth;


class PackageManageController extends Controller
{
 //----auth------//
 public function __construct()
 {
  $this->middleware('auth');
 }

 //-----view------//
 public function view()
 {
  $data['alldata'] = PackageManage::all();
  return view('backend.package.packagemanage.view-package-manage',$data); 
 }

//-----add---------//
 public function add()
	{
  $data['pakage'] = PackageType::where('status','0')->get();
	 return view('backend.package.packagemanage.add-package-manage',$data);
	}

 //-------store-------//
 public function store(Request $request){
  $this->validate($request,[
  'package_id'  =>'required',
  'name'        =>'required',
  'duration'    =>'required',
  'price'       =>'required',
  'url'         =>'required',
  'status'      =>'required'
  ]);

  $data = new PackageManage();
  $data->package_id = $request->package_id;
  $data->name       = $request->name;
  $data->title      = $request->title;
  $data->duration   = $request->duration;
  $data->price      = $request->price;
  $data->url        = $request->url;
  $data->status     = $request->status;
  $data->fetures    = json_encode($request->feature);
  $data->created_by = Auth::user()->id;
  $data->save();
  return redirect()->route('package.manege.view');
 
 }

 public function edit($id)
 {
  $data['pakage']=PackageType::where('status','0')->get();
  $data['editdata']=PackageManage::find($id);
  return view('backend.package.packagemanage.edit-package-manage',$data);
 }

 public function update(Request $request,$id)
 {
  $data = PackageManage::find($id);
  $data->package_id = $request->package_id;
  $data->name       = $request->name;
  $data->title      = $request->title;
  $data->duration   = $request->duration;
  $data->price      = $request->price;
  $data->url        = $request->url;
  $data->status     = $request->status;
  $data->fetures    = json_encode($request->feature);
  $data->updated_by = Auth::user()->id;

  $data->save();
  return redirect()->route('package.manege.view')->with('success','Date Update Successfully');
 }

 //------inactive-------//
 public function inacative($id)
  {
   PackageManage::find($id)->where('id',$id)->update(['status'=>1]);
   return redirect()->back();
  }
    
  //------active------//
  public function active($id)
  {
   PackageManage::find($id)->where('id',$id)->update(['status'=>0]);
   return redirect()->back();
  }

  //------update------//
  public function delete($id)
  {
   $slider = PackageManage::find($id);
   $slider->delete();
   return redirect()->route('package.manege.view')->with('error','Data Deleted Successfully');
  }

}
