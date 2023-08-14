<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\model\DomainCategory;
use App\model\DomainPricing;
use Auth;
use image;

class DomainPricingController extends Controller
{

	 //----auth------//
	 public function __construct()
	 {
	  $this->middleware('auth');
	 }

	 //-----view------//
	 public function view()
	 {
	  $data['alldata'] = DomainPricing::all();
	  return view('backend.domain.domainPricing.view-domain-pricing',$data); 
	 }
  
  //----auth------//
  public function add()
   {
    $data['pakage'] = DomainCategory::where('status','0')->get();
    return view('backend.domain.domainPricing.add-domain-pricing',$data); 
   }

  //----store------//
  public function store(Request $request)
  {   
	  $this->validate($request,[
		 'category_id'       =>'required',
		 'name'              =>'required',
		 'price'             =>'required',
		 'price_duration'    =>'required',
		 'transferprice'     =>'required',
		 'transfer_duration' =>'required',
		 'renewalprice'      =>'required',
		 'renewal_duration'  =>'required',
		 'status'            =>'required'
	  ]);

		 $data=new DomainPricing();
		 $data->category_id        = $request->category_id;
		 $data->name               = $request->name;
		 $data->price              = $request->price;
		 $data->price_duration     = $request->price_duration;
		 $data->transferprice      = $request->transferprice;
		 $data->transfer_duration  = $request->transfer_duration;
		 $data->renewalprice       = $request->renewalprice;
		 $data->renewal_duration   = $request->renewal_duration;
		 $data->graceprice         = $request->graceprice;
		 $data->grace_duration     = $request->grace_duration;
		 $data->status             = $request->status;
		 $data->created_by         = Auth::user()->id;

			$data->save();
			return redirect()->route('domain.pricing.view')->with('success','Data Upload Successfully');
  }

  //------edit------//
  public function edit($id)
	  {
	   $data['alldata'] = DomainCategory::where('status','0')->get();
	   $data['editdata'] = DomainPricing::find($id);
	   return view('backend.domain.domainPricing.edit-domain-pricing',$data);
	  }

  //------update-------//
  public function update(Request $request,$id)
   {
    $this->validate($request,[
			 'category_id'       =>'required',
			 'name'              =>'required',
			 'price'             =>'required',
			 'price_duration'    =>'required',
			 'transferprice'     =>'required',
			 'transfer_duration' =>'required',
			 'renewalprice'      =>'required',
			 'renewal_duration'  =>'required',
			 'status'            =>'required'
		  ]);

    $data =DomainPricing::find($id);

    $data->category_id        = $request->category_id;
			 $data->name               = $request->name;
			 $data->price              = $request->price;
			 $data->price_duration     = $request->price_duration;
			 $data->transferprice      = $request->transferprice;
			 $data->transfer_duration  = $request->transfer_duration;
			 $data->renewalprice       = $request->renewalprice;
			 $data->renewal_duration   = $request->renewal_duration;
			 $data->graceprice         = $request->graceprice;
			 $data->grace_duration     = $request->grace_duration;
			 $data->status             = $request->status;
    $data->updated_by         = Auth::user()->id;

    $data->save();
    return redirect()->route('domain.pricing.view')->with('success','data Update Successfully');
   }

  //------inactive-------//
		public function inacative($id)
		 {
		  DomainPricing::find($id)->where('id',$id)->update(['status'=>1]);
		  return redirect()->back();
		 }
		   
		//------active------//
		public function active($id)
		 {
		  DomainPricing::find($id)->where('id',$id)->update(['status'=>0]);
		  return redirect()->back();
		 }
      
  //------delete-------//
		public function delete($id)
	  {
	   $data = DomainPricing::find($id); 
		  $data->delete();
		  return redirect()->route('domain.pricing.view')->with('error','Data Deleted Successfully');
	  }

}
