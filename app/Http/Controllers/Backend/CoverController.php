<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\model\HomeCover;
use Auth;

class CoverController extends Controller
{
 
 //----auth------//
 public function __construct()
 {
  $this->middleware('auth');
 }

 //-----add-----//
 public function add(){
  $data['editData'] = HomeCover::first();
  return view('backend.setting.Homecover.Homecover-page',$data);
 }

  //-----update-----//
 public function update(Request $request,$id)
  {
   $this->validate($request,[
   'title'          =>'required',
   'discriptsion'   =>'required'
   ]);

   $data = HomeCover::find($id);
   $data->id           = 1;
	  $data->title        = $request->title;
	  $data->discriptsion = $request->discriptsion;
	  $data->updated_by   = Auth::user()->id;
	    
	  if($request->file('image')){
    $file = $request->file('image');
    @unlink(public_path('upload/choose_image/'.$data->image));
    $filename = 'IMG_'.date('YmdHis').'.'.$file->getClientOriginalExtension();
    $file->move(public_path('upload/homeCover_image/'),$filename);
    $data['image'] = $filename;
   }
   $data->save();
   return redirect()->route('cover.add')->with('success','Data Update Successfully');
  }

  
}
