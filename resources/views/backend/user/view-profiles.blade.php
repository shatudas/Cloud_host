@extends('backend.layouts.master')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Manage Profile</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Profile</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>

 <!-- Main content -->
 <section class="content">
  <div class="container-fluid">
   <div class="row">
    <div class="col-md-4 offset-md-4">
      <!-- Profile Image -->
            <div class="card card-primary card-outline">
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle" src="{{!empty($user->image)?url('upload/user_images/'.$user->image):url('upload/No-image.jpg')}}"
                       alt="User profile picture">
                </div>

                <h3 class="profile-username text-center">{{$user->nmae}}</h3>

                <p class="text-muted text-center">{{$user->address}}</p>

                <table width="100%;" class="table table-bordered">
                  <tbody>
                    <tr>
                      <td>Mobile</td>
                      <td>{{$user->mobile}}</td>
                    </tr>
                    <tr>
                      <td>Email</td>
                      <td>{{$user->email}}</td>
                    </tr>
                    <tr>
                      <td>Gender</td>
                      <td>{{$user->gender}}</td>
                    </tr>
                  </tbody>
                </table>

                <a href="{{route('profiles.edit')}}" class="btn btn-primary btn-block"><b>Edit Profile</b></a>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
    </div>
   </div>
  </div>
 </section>
    
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


  @endsection