@extends('backend.layouts.master')
@section('content')

 <!-- Content  page -->
 <div class="content-wrapper">
  
  <div class="content-header">
   <div class="container-fluid">
    <div class="row mb-2">
     <div class="col-sm-6">
      <h1 class="m-0"> Manage Package Services </h1>
     </div><!-- /.col -->
     <div class="col-sm-6">
      <ol class="breadcrumb float-sm-right">
       <li class="breadcrumb-item"><a href="{{ route('home') }}"> Home </a></li>
       <li class="breadcrumb-item active"> Package Services </li>
      </ol>
     </div>
    </div>
   </div>
  </div>

  <!-- Main content -->
  <section class="content">
   <div class="container-fluid mt-5">
    
      <div class="row justify-content-center">
       <div class="col-8">
        <div class="card">

         <div class="card-header">
          <h3> Add Package Services
           <a href="{{ route('package.service.view') }}" class=" btn btn-primary btn-sm float-right"><i class="fa fa-list"></i> Package Services List </a>
          </h3>
         </div>
         <div class="card-body">
          <form method="POST" action="{{ route('package.service.store') }}" enctype="multipart/form-data" id="myForm">
          @csrf

           <div class="form-row">
               
            <div class="form-group col-md-12">
             <label for="package_id">Package Type  <span style="color:red;">*</span> </label>
             <select name="package_id" id="package_id" class="form-control">
              <option value="">Select Package Type</option>
              @foreach($pakage as $value)
               <option value="{{ $value->id }}">{{ $value->name }}</option>
              @endforeach
             </select>
             <font style="color:red">{{ ($errors->has('package_id'))?($errors->first('package_id')):'' }}</font>
            </div>

            <div class="form-group col-md-12">
             <label for="title"> Service Title  <span style="color:red;">*</span></label>
             <input type="text" name="title" class="form-control" placeholder="Enter Feature Title ">
             <font style="color:red">{{ ($errors->has('title'))?($errors->first('title')):'' }}</font>
            </div>

            <div class="form-group col-md-12">
             <label for="detalis"> Short Detalis </label>
             <input type="text" name="detalis" class="form-control" placeholder="Enter Feature Detalis">
             <font style="color:red">{{ ($errors->has('detalis'))?($errors->first('detalis')):'' }}</font>
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
      

             <div class="form-group col-md-6">
             <label for="image"> Image <span style="color:red;">*</span></label>
             <input type="file" name="image" class="form-control" id="image">
             <font style="color:red">{{ ($errors->has('image'))?($errors->first('image')):'' }}</font>
            </div>

            <div class="form-group col-md-4 " align="center">
             <img id="showImage" src="{{ url('upload/No-image.jpg') }}" style="width:70%; height:130px; border:1px solid #ccc;">
            </div>


            
            <div class="form-group col-md-12">
             <input type="submit" value="Upload"  class="btn btn-primary">
            </div>

           </div>
          </form>
         </div>

        </div>
       </div>
      </div>
     
   </div>
  </section>
  
 </div>

  <script>
   $(function () {
    $('#myForm').validate({
     rules: {
      package_id: {
      required: true,
      },

      title: {
       required: true,
      },

      status: {
       required: true,
      },

      image: {
       required: true,
      },

      },

      messages:{
      
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