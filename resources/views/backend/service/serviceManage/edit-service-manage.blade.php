@extends('backend.layouts.master')
@section('content')

 <!-- Content  page -->
 <div class="content-wrapper">
  
  <div class="content-header">
   <div class="container-fluid">
    <div class="row mb-2">
     <div class="col-sm-6">
      <h1 class="m-0"> Manage Service history </h1>
     </div><!-- /.col -->
     <div class="col-sm-6">
      <ol class="breadcrumb float-sm-right">
       <li class="breadcrumb-item"><a href="{{ route('home') }}"> Home </a></li>
       <li class="breadcrumb-item active"> Service history </li>
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
          <h3> Edit Service history
           <a href="{{ route('services.manege.view') }}" class=" btn btn-primary btn-sm float-right"><i class="fa fa-list"></i> Service history List </a>
          </h3>
         </div>

         <div class="card-body">
          <form method="POST" action="{{ route('services.manege.update',$editData->id) }}" enctype="multipart/form-data" id="myForm">
          @csrf

           <div class="form-row">
               
            <div class="form-group col-md-12">
             <label for="service_type_id">Select Type <span style="color:red;">*</span> </label>
             <select class="form-control" name="service_type_id">
              <option value="" >Select Type </option>
               @foreach($type as $service)
                <option value="{{ $service->id }}" {{(@$editData->service_type_id==$service->id)?'selected':'' }}>{{ $service->name }}</option>
               @endforeach
             </select>
             <font style="color:red">{{ ($errors->has('service_type_id'))?($errors->first('service_type_id')):'' }}</font>
            </div>

            <div class="form-group col-md-12">
             <label for="history"> Service History <span style="color:red;">*</span> </label>
             <textarea type="text" name="history"class="form-control" rows="4">{!! $editData->history !!}</textarea>
             <font style="color:red">{{ ($errors->has('history'))?($errors->first('history')):'' }}</font>
            </div>

            <div class="form-group col-md-12">
             <label for="url"> GET Url </label>
             <input type="text" name="url" class="form-control" value="{{ $editData->url }}">
             <font style="color:red">{{ ($errors->has('url'))?($errors->first('url')):'' }}</font>
            </div>
      
            <div class="form-group col-md-12">
             <label for="status"> Status <span style="color:red;">*</span> </label>
             <select name="status" class="form-control">
              <option value=""> Select Role </option>
              <option value="0" {{ $editData->status=="0"?"selected":"" }}> Publish </option>
              <option value="1" {{ $editData->status=="1"?"selected":"" }}> Draft </option>
             </select>
             <font style="color:red">{{ ($errors->has('status'))?($errors->first('status')):'' }}</font>
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
      service_type_id: {
      required: true,
      },
      history: {
       required: true,
      },
      status: {
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