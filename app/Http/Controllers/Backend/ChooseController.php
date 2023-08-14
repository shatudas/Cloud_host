<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\model\Choose;
use Auth;


class ChooseController extends Controller
{

	//----auth------//
 public function __construct()
 {
  $this->middleware('auth');
 }

 //----add------//
 public function add(){
  $data['editData']= Choose::first();
  return view('backend.setting.choose.choose-page',$data);
 }

 //----update------//
 public function update(Request $request,$id)
 {

  $this->validate($request,[
  'title'          =>'required',
  'discriptsion'   =>'required'
  ]);

   $data = Choose::find($id);
   $data->id           = 1;
	  $data->title        = $request->title;
	  $data->discriptsion = $request->discriptsion;
	  $data->updated_by   = Auth::user()->id;
	    
	  if($request->file('image')){
    $file = $request->file('image');
    @unlink(public_path('upload/choose_image/'.$data->image));
    $filename = 'IMG_'.date('YmdHis').'.'.$file->getClientOriginalExtension();
    $file->move(public_path('upload/choose_image/'),$filename);
    $data['image'] = $filename;
   }
   $data->save();
   return redirect()->route('choose.add')->with('success','Data Update Successfully');
  }
  
}
