@extends('backend.layouts.master')
@section('content')

 <!-- Content  page -->
 <div class="content-wrapper">
  
  <div class="content-header">
   <div class="container-fluid">
    <div class="row mb-2">
     <div class="col-sm-6">
      <h1 class="m-0"> Manage Package </h1>
     </div><!-- /.col -->
     <div class="col-sm-6">
      <ol class="breadcrumb float-sm-right">
       <li class="breadcrumb-item"><a href="{{ route('home') }}"> Home </a></li>
       <li class="breadcrumb-item active"> Package </li>
      </ol>
     </div>
    </div>
   </div>
  </div>

  <section class="content">
   <div class="container-fluid">
    <div class="row justify-content-center">
     <div class="col-10">
      <div class="card">
          
       <div class="card-header">
        <h3>Add Manage Package
         <a href="{{ route('package.manege.view') }}" class=" btn btn-success btn-sm float-right"> 
         <i class="fa fa-list"></i> Manage Package List </a>
        </h3>
       </div>

       <div class="card-body">
        <form method="POST" action="{{ route('package.manege.store') }}" enctype="multipart/form-data" id="myForm" >
         @csrf

         <div class="form-row">

          <div class="form-group col-md-6">
           <label for="package_id">Package Type  <span style="color:red;">*</span> </label>
           <select name="package_id" id="package_id" class="form-control">
            <option value="">Select Package Type</option>
            @foreach($pakage as $value)
             <option value="{{ $value->id }}">{{ $value->name }}</option>
            @endforeach
           </select>
           <font style="color:red">{{ ($errors->has('package_id'))?($errors->first('package_id')):'' }}</font>
          </div>

          <div class="form-group col-md-6">
           <label for="name"> Package Name  <span style="color:red;">*</span></label>
           <input type="text" name="name" class="form-control" placeholder="Enter Name">
           <font style="color:red">{{ ($errors->has('name'))?($errors->first('name')):'' }}</font>
          </div>

          <div class="form-group col-md-6">
           <label for="title">Title</label>
           <input type="text" name="title" class="form-control" placeholder="Enter Title">
          </div>

          <div class="form-group col-md-6">
           <label for="duration">Duration  <span style="color:red;">*</span></label>
           <input type="text" name="duration" class="form-control" placeholder="Enter Package Duration">
           <font style="color:red">{{ ($errors->has('duration'))?($errors->first('duration')):'' }}</font>
          </div>

          <div class="form-group col-md-6">
           <label for="price">Price  <span style="color:red;">*</span></label>
           <input type="text" name="price" class="form-control" placeholder="Enter Package Price">
           <font style="color:red">{{ ($errors->has('price'))?($errors->first('price')):'' }}</font>
          </div>

          <div class="form-group col-md-6">
           <label for="url">Purchase URL  <span style="color:red;">*</span></label>
           <input type="text" name="url" class="form-control" placeholder="Enter Purchase URL">
           <font style="color:red">{{ ($errors->has('url'))?($errors->first('url')):'' }}</font>
          </div>

          <div class="form-group col-md-6">
           <label for="status"> Status <span style="color:red;">*</span> </label>
           <select name="status" class="form-control">
            <option value=""> Select Role </option>
            <option value="0"> Publish </option>
            <option value="1"> Draft </option>
           </select>
           <font style="color:red">{{ ($errors->has('status'))?($errors->first('status')):'' }}</font>
          </div>


         </div>


          <div class="card">
           <div class="card-body">
            <div class="add_item">
             <div class="form-row">
        
              <div class="form-group col-md-6" style="padding-top:30px;">
               <h2> Package Feature</h2>
              </div>
              <div class="form-group col-md-6" style="padding-top:30px; float:right;">
               <span class="btn btn-success addeventmore">
                <i class="fa fa-plus-circle"></i>
               </span>
              </div>

             </div>
            </div>
           </div>
          </div>

         <button type="submit" class="btn btn-primary">Submit</button>
        </form>
       </div>
      </div> 


     


     </div>
    </div>
   </div>
  </section>
  
 </div>


 <div class="card-body"  style="visibility: hidden;">
   <div class="whole_extra_item_add" id="whole_extra_item_add">
    <div class="delete_whole_extra_add" id="delete_whole_extra_add">
         
     <div class="form-row  justify-content-center">

      <div class="form-group col-md-6">
       <label for="class"> Package Feature Add </label>
       <input type="text" name="feature[]" class="form-control" placeholder="Package Feature">
      </div>


      <div class="form-group col-md-2" style="padding-top:30px;">
       <div class="form-row">
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


  <script type="text/javascript">
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

  <script>
   $(function () {
    $('#myForm').validate({
     rules: {
      package_id: {
      required: true,
      },

      name: {
       required: true,
      },
      duration: {
       required: true,
      },
      price: {
       required: true,
      },
      url: {
       required: true,
      },
      status: {
       required: true,
      },
      },

      messages:{
       package_id: {
        required: "Enter Package Type",
       },
       name: {
        required: "Enter Package name",
       },
       duration: {
        required: "Enter Package Duration",
       },
       price: {
        required: "Enter Package Price",
       },
       url: {
        required: "Enter Package URL",
       },
       status:{
        required: "Please select status",
        },
      },
       errorElement: 'span',
       errorPlacement: function (error, element) {
         error.addClass('invalid-feedback');
         element.closest('.form-group').append(error);
       },
       highlight: function (element, errorClass, validClass) {
         $(element).addClass('is-invalid');
       },
       unhighlight: function (element, errorClass, validClass) {
         $(element).removeClass('is-invalid');
       }
     });
   });
  </script>


  @endsection