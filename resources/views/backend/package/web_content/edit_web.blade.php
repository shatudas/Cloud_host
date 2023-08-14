@extends('backend.layouts.master')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

  <div class="content-header">
   <div class="container-fluid">
    <div class="row mb-2">
     <div class="col-sm-6">
      <h1 class="m-0"> Manage Web Content </h1>
     </div><!-- /.col -->
     <div class="col-sm-6">
      <ol class="breadcrumb float-sm-right">
       <li class="breadcrumb-item"><a href="{{ route('home') }}"> Home </a></li>
       <li class="breadcrumb-item active"> Web Content </li>
      </ol>
     </div><!-- /.col -->
    </div><!-- /.row -->
   </div><!-- /.container-fluid -->
  </div>

  <!-- Main content -->
  <section class="content">
   <div class="container-fluid">
    <div class="row justify-content-center">
     <div class="col-10">

      <div class="card">
       
       <div class="card-header">
        <h3> Edit Web Content
         <a href="{{ route('web_content.view') }}" class=" btn btn-primary btn-sm float-right">
          <i class="fa fa-list"></i> List Web Content </a>
        </h3>
       </div>
               
       <!-- /.card-header -->
       <div class="card-body">
        <form method="POST" action="{{ route('web_content.update',$editData->id) }}" enctype="multipart/form-data" id="myForm"> 
         @csrf
         <div class="form-row">
                
          <div class="form-group col-md-6">
           <label for="title"> Title  <span style="color:red;">*</span> </label>
           <input type="text" name="title" class="form-control" value="{{ $editData->title }}">
           <font style="color:red">{{ ($errors->has('title'))?($errors->first('title')):'' }}</font>
          </div>

          <div class="form-group col-md-6">
           <label for="title"> Title  </label>
           <textarea rows="5" class="form-control" name="discriptsion" >{{ $editData->discriptsion }}</textarea>
            <font style="color:red">{{ ($errors->has('discriptsion'))?($errors->first('discriptsion')):'' }}</font>
          </div>

          <div class="form-group col-md-6">
           <label for="status"> Status <span style="color:red;">*</span> </label>
           <select name="status" class="form-control">
            <option value=""> Select Role </option>
            <option value="0" {{ $editData->status=="0"?"selected":"" }}> Publish</option>
            <option value="1" {{ $editData->status=="1"?"selected":"" }}>Draft</option>
           </select>
          </div>

          <div class="form-group col-md-6">
           <label for="image"> Image <span style="color:red;">*</span> </label>
           <input type="file" name="image" class="form-control" id="image">
          </div>

          <div class="form-group col-md-6">
           <img id="showImage" src="{{ !empty($editData->image)?url('upload/web_image/'.$editData->image):url('upload/No-image.jpg') }}" style="width:70%; height:130px; border:1px solid #ccc;" >
          </div>

          <div class="form-group col-md-6">
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
      title: {
      required: true,
      },
      discriptsion: {
      required: true,
      },
      image: {
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