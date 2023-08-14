@extends('backend.layouts.master')
@section('content')

<!-- Content  page  -->
<div class="content-wrapper">
 
 <div class="content-header">
  <div class="container-fluid">
   <div class="row mb-2">
    <div class="col-sm-6">
     <h1 class="m-0"> Manage Package </h1>
    </div>
    <div class="col-sm-6">
     <ol class="breadcrumb float-sm-right">
      <li class="breadcrumb-item"><a href="{{ route('home') }}"> Home </a></li>
      <li class="breadcrumb-item active"> Package  </li>
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
       <h3>Package List
        <a href="{{ route('package.manege.add') }}" class=" btn btn-primary btn-sm float-right">
         <i class="fa fa-plus-circle"></i> Add Package
        </a>
       </h3>
      </div>
              
      <div class="card-body">
       <table id="example1" class="table table-bordered table-striped">
        <thead>
         <tr>
          <th> Show Sl </th>
          <th> Services Type </th>
          <th> Package Name </th>
          <th> Duration </th>
          <th> Price  </th>
          <th align="center"> Status </th>
          <th align="center"> Action </th>
         </tr>
        </thead>
        <tbody>
         @foreach($alldata as $key => $type)
         <tr>    
          <td>{{ $key+1 }}</td>
          <td>{{ $type['package_type']['name'] }}</td>
          <td>{{ $type->name }}</td>
          <td>{{ $type->duration }}</td>
          <td>{{ $type->price }}</td>
          
          <td align="center">
           @if($type->status=='0')
            <a href="{{ route('package.manege.inacative',$type->id) }}" class="btn btn-primary btn-sm"> Publish </a>
           @else
            <a href="{{ route('package.manege.active',$type->id) }}" class="btn btn-danger btn-sm"> Draft </a>
           @endif
          </td>    
          <td>           
           <a title="Edit" href="{{ route('package.manege.edit',$type->id) }}" class="btn btn-sm btn-primary">
            <i class="fa fa-edit"></i>
           </a>
           <a title="Delete" href="{{ route('package.manege.delete',$type->id) }}" id="delete" class="btn btn-sm btn-danger">
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