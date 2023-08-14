@extends('backend.layouts.master')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

  <div class="content-header">
   <div class="container-fluid">
    <div class="row mb-2">
     <div class="col-sm-6">
      <h1 class="m-0"> Manage Service Type </h1>
     </div><!-- /.col -->
     <div class="col-sm-6">
      <ol class="breadcrumb float-sm-right">
       <li class="breadcrumb-item"><a href="{{ route('home') }}"> Home </a></li>
       <li class="breadcrumb-item active"> Service Type </li>
      </ol>
     </div><!-- /.col -->
    </div><!-- /.row -->
   </div><!-- /.container-fluid -->
  </div>

  <!-- Main content -->
  <section class="content">
   <div class="container-fluid">
    <div class="row justify-content-center">
     <div class="col-8">

      <div class="card">
       
       <div class="card-header">
        <h3> Edit Service Type
         <a href="{{ route('servicestype.view') }}" class=" btn btn-primary btn-sm float-right">
          <i class="fa fa-list"></i> List Service Type </a>
        </h3>
       </div>
               
       <!-- /.card-header -->
       <div class="card-body">
        <form method="POST" action="{{ route('servicestype.update',$editdata->id) }}" enctype="multipart/form-data" id="myForm"> 
         @csrf
         <div class="form-row">


          <div class="form-group col-md-12">
           <label for="name"> Name  </label>
           <input type="text" name="name" class="form-control" value="{{ $editdata->name }}">
          </div>

          <div class="form-group col-md-12">
           <label for="status"> Status <span style="color:red;">*</span> </label>
           <select name="status" class="form-control">
            <option value=""> Select Role </option>
            <option value="0" {{ $editdata->status=="0"?"selected":"" }}> Publish</option>
            <option value="1" {{ $editdata->status=="1"?"selected":"" }}>Draft</option>
           </select>
          </div>

          <div class="form-group col-md-12">
           <input type="submit" value="Update"  class="btn btn-primary">
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
     rules:{
      name: {
      required: true,
      },
      status: {
      required: true,
      },
     },

     messages:{
      name:{
       required: "Please Services Name",
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