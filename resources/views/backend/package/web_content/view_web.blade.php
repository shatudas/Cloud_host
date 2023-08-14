@extends('backend.layouts.master')
@section('content')

<!-- Content  page  -->
<div class="content-wrapper">
 
 <div class="content-header">
  <div class="container-fluid">
   <div class="row mb-2">
    <div class="col-sm-6">
     <h1 class="m-0"> Web Content </h1>
    </div>
    <div class="col-sm-6">
     <ol class="breadcrumb float-sm-right">
      <li class="breadcrumb-item"><a href="{{ route('home') }}"> Home </a></li>
      <li class="breadcrumb-item active"> Web Content </li>
     </ol>
    </div>
   </div>
  </div>
 </div>

 <!-- Main content -->
 <section class="content">
  <div class="container-fluid">
   <div class="row">
    <div class="col-12">

     <div class="card">

      <div class="card-header">
       <h3> Web Content List
        <a href="{{ route('web_content.add') }}" class=" btn btn-primary btn-sm float-right">
         <i class="fa fa-plus-circle"></i> Add Web Content 
        </a>
       </h3>
      </div>
              
      <div class="card-body">
       <table id="example1" class="table table-bordered table-striped">
        <thead>
         <tr>
          <th> Show Sl </th>
          <th> Title </th>
          <th> Discriptsion </th>
          <th align="center"> Image </th>
          <th align="center"> Status </th>
          <th align="center"> Action </th>
         </tr>
        </thead>
        <tbody>
         @foreach($alldata as $key => $value)
         <tr>    
          <td>{{ $key+1 }}</td>
          <td>{{ $value->title }}</td>
          <td>{{ $value->discriptsion }}</td>
          <td>
           <center>
            <img src="{{ (!empty($value->image))?url('upload/web_image/'.$value->image):url('upload/No-image.jpg') }}" width="130px;" height="70px;">
           </center>
          </td>
          <td align="center">
           @if($value->status=='0')
            <a href="{{ route('web_content.inacative',$value->id) }}" class="btn btn-primary btn-sm"> Publish </a>
           @else
            <a href="{{ route('web_content.active',$value->id) }}" class="btn btn-danger btn-sm"> Draft </a>
           @endif
          </td>    
          <td>           
           <a title="Edit" href="{{ route('web_content.edit',$value->id) }}" class="btn btn-sm btn-primary">
            <i class="fa fa-edit"></i>
           </a>
           <a title="Delete" href="{{ route('web_content.delete',$value->id) }}" id="delete" class="btn btn-sm btn-danger">
            <i class="fa fa-trash"></i>
           </a>
          </td> 
         </tr>
         @endforeach
        </tbody>
       </table>
      </div>
     
     </div>   
    </div>
   </div>
  </div>
 </section>

</div>
  <!-- /.content-wrapper -->


  
  


  @endsection