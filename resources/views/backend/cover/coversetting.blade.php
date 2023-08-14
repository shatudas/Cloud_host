@extends('backend.layouts.master')
 @section('content')

 <!-- Content  page -->
 <div class="content-wrapper">
  
  <div class="content-header">
   <div class="container-fluid">
    <div class="row mb-2">
     <div class="col-sm-6">
      <h1 class="m-0"> Manage Home Cover </h1>
     </div>
     <div class="col-sm-6">
      <ol class="breadcrumb float-sm-right">
       <li class="breadcrumb-item"><a href="{{ route('home') }}"> Home </a></li>
       <li class="breadcrumb-item active"> Home Cover </li>
      </ol>
     </div>
    </div>
   </div>
  </div>

  <section class="content">
   <div class="container-fluid">
    <div class="row justify-content-center ">
     <div class="col-8 bg-light" >
      <div class="card">
          
       <div class="card-header">
        <h3> Home Cover </h3>
       </div>
       <div class="card-body">
        <form method="POST" action="{{ route('homecover.update',$editdata->id) }}" enctype="multipart/form-data" id="myForm">
        @csrf

        <div class="form-row">
         <div class="form-group col-md-4">
          <label for="image"> Image </label>
          <input type="file" name="image" id="image">
          <font style="color:red">{{ ($errors->has('image'))?($errors->first('image')):'' }}</font>
         </div>
         <div class="form-group col-md-8" align="justify-content-center">
          <img id="showImage" src="{{ !empty($editdata->image)?url('upload/cover/'.$editdata->image):url('upload/No-image.jpg') }}" style="width:90%; height:190px; margin-top:30px; border:1px solid #ccc;" >
         </div>
        </div>

        <!-----email----->
        @php
         $datas = json_decode($editdata->title);
        @endphp

        @if( $datas != null)
         <label for="name"> Email </label><br>
         @foreach($datas as $edit)
         <div class="delete_whole_extra_add" id="delete_whole_extra_add">
          <div class="add_item">
           <div class="form-row">

            <div class="form-group col-md-10">
             <input type="text" name="title[]" value="{{ $edit }}" class="form-control" placeholder="Enter Title..">
            </div>

            <div class="form-group col-md-2">
             <div class="form-row"  style="float:right;">
              <span class="btn btn-success addeventmore" >
               <i class="fa fa-plus-circle"></i>
              </span>
              <span class="btn btn-danger removeeventmore" style="margin-left:4px;">
               <i class="fa fa-minus-circle"></i>
              </span>
             </div>
            </div>

           </div>
          </div>
         </div>
         @endforeach
         @else
          <div class="delete_whole_extra_add" id="delete_whole_extra_add">
           <div class="add_item">
            <div class="form-row">

             <div class="form-group col-md-10">
              <label for="name"> Title </label>
              <input type="text" name="title[]" value="" class="form-control" placeholder="Enter Title..">
             </div>

             <div class="form-group col-md-2">
              <div class="form-row"  style="float:right; margin-top:30px;">
               <span class="btn btn-success addeventmore" >
                <i class="fa fa-plus-circle"></i>
               </span>
               <span class="btn btn-danger removeeventmore" style="margin-left:4px;">
                <i class="fa fa-minus-circle"></i>
               </span>
              </div>
             </div>

            </div>
           </div>
          </div>
         @endif

      
         <div class="form-group col-md-12">
          <button type="submit" class="btn btn-primary">Submit</button>
         </div>

        </form>
       </div>
 
      </div>
     </div> 
    </div>
   </div>
  </section>
  
 </div>



<!----array div ----->

 <div class="card-body" style="visibility:hidden; border:0px; box-shadow:none; background-color:none;">
  <div class="whole_extra_item_add" id="whole_extra_item_add">
   <div class="delete_whole_extra_add" id="delete_whole_extra_add"> 
    <div class="form-row">
     <div class="form-group col-md-10">
      <input type="text" name="title[]" class="form-control" placeholder="Enter Title">
     </div>
     <div class="form-group col-md-2" >
      <div class="form-row" style="float:right;">
       <span class="btn btn-success addeventmore">
        <i class="fa fa-plus-circle"></i>
       </span>
       <span class="btn btn-danger removeeventmore" style="margin-left:4px;">
        <i class="fa fa-minus-circle"></i>
       </span>
      </div>
     </div>    
    </div>
   </div>
  </div>
 </div>



  <!------multiple Function show------>
  <script>
   $(document).ready(function (){
    var counter = 0;
    $(document).on("click",".addeventmore", function() {
     var whole_extra_item_add = $("#whole_extra_item_add").html();
     $(this).closest(".add_item").append(whole_extra_item_add);
     counter++;
    });
    $(document).on("click", ".removeeventmore", function (event){
     $(this).closest(".delete_whole_extra_add").remove();
     counter -=1
    });
   });
  </script>

 
 

  @endsection