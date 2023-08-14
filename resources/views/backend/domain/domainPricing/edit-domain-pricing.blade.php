  @extends('backend.layouts.master')
@section('content')

 <!-- Content  page -->
 <div class="content-wrapper">
  
  <div class="content-header">
   <div class="container-fluid">
    <div class="row mb-2">
     <div class="col-sm-6">
      <h1 class="m-0"> Manage Domain Pricing </h1>
     </div><!-- /.col -->
     <div class="col-sm-6">
      <ol class="breadcrumb float-sm-right">
       <li class="breadcrumb-item"><a href="{{ route('home') }}"> Home </a></li>
       <li class="breadcrumb-item active"> Domain Pricing </li>
      </ol>
     </div>
    </div>
   </div>
  </div>

  <!-- Main content -->
  <section class="content">
   <div class="container-fluid mt-5">
    
      <div class="row justify-content-center">
       <div class="col-10">
        <div class="card">

         <div class="card-header">
          <h3> Edit Domain Pricing
           <a href="{{ route('domain.pricing.view') }}" class=" btn btn-primary btn-sm float-right"><i class="fa fa-list"></i> Domain Pricing List </a>
          </h3>
         </div>

         <div class="card-body">
          <form method="POST" action="{{ route('domain.pricing.update',$editdata->id) }}" enctype="multipart/form-data" id="myForm">
          @csrf

           <div class="form-row">

            <div class="form-group col-md-6">
             <label for="category_id"> Domain Category <span style="color:red;">*</span> </label>
             <select name="category_id" id="category_id" class="form-control">
              <option value="">Select Category</option>
              @foreach($alldata as $value)
               <option value="{{ $value->id }}" {{(@$editdata->category_id ==$value->id)?'selected':'' }}>{{ $value->name }}</option>
              @endforeach
             </select>
             <font style="color:red">{{ ($errors->has('category_id'))?($errors->first('category_id')):'' }}</font>
            </div>

            <div class="form-group col-md-6">
             <label for="name"> TLD Name <span style="color:red;">*</span></label>
             <input type="text" name="name" class="form-control" placeholder="Enter TLD name" value="{{ $editdata->name }}">
             <font style="color:red">{{ ($errors->has('name'))?($errors->first('name')):'' }}</font>
            </div>

            <div class="form-group col-md-6">
             <label for="price"> New Price <span style="color:red;">*</span></label>
             <input type="number" name="price" class="form-control" placeholder="Enter new price" value="{{ $editdata->price }}">
             <font style="color:red">{{ ($errors->has('price'))?($errors->first('price')):'' }}</font>
            </div>

            <div class="form-group col-md-6">
             <label for="price_duration"> Price Duration <small>Year</small><span style="color:red;">*</span></label>
             <input type="number" name="price_duration" class="form-control" placeholder="Enter duration" value="{{ $editdata->price_duration }}">
             <font style="color:red">{{ ($errors->has('price_duration'))?($errors->first('price_duration')):'' }}</font>
            </div>

            <div class="form-group col-md-6">
             <label for="transferprice"> Transfer Price <span style="color:red;">*</span></label>
             <input type="number" name="transferprice" class="form-control" placeholder="Enter new transfer price" value="{{ $editdata->transferprice }}">
             <font style="color:red">{{ ($errors->has('transferprice'))?($errors->first('transferprice')):'' }}</font>
            </div>

            <div class="form-group col-md-6">
             <label for="transfer_duration"> Transfer Duration <small>Year</small><span style="color:red;">*</span></label>
             <input type="number" name="transfer_duration" class="form-control" placeholder="Enter duration" value="{{ $editdata->transfer_duration }}">
             <font style="color:red">{{ ($errors->has('transfer_duration'))?($errors->first('transfer_duration')):'' }}</font>
            </div>

            <div class="form-group col-md-6">
             <label for="renewalprice"> Renewal price <span style="color:red;">*</span></label>
             <input type="number" name="renewalprice" class="form-control" placeholder="Enter new renewal price" value="{{ $editdata->renewalprice }}">
             <font style="color:red">{{ ($errors->has('renewalprice'))?($errors->first('renewalprice')):'' }}</font>
            </div>

            <div class="form-group col-md-6">
             <label for="renewal_duration"> Renewal Duration <small>Year</small><span style="color:red;">*</span></label>
             <input type="number" name="renewal_duration" class="form-control" placeholder="Enter renewal duration" value="{{ $editdata->renewal_duration }}">
             <font style="color:red">{{ ($errors->has('renewal_duration'))?($errors->first('renewal_duration')):'' }}</font>
            </div>

            <div class="form-group col-md-6">
             <label for="graceprice"> Grace Price </label>
             <input type="number" name="graceprice" class="form-control" placeholder="Enter new renewal price" value="{{ $editdata->graceprice }}">
             <font style="color:red">{{ ($errors->has('graceprice'))?($errors->first('graceprice')):'' }}</font>
            </div>

            <div class="form-group col-md-6">
             <label for="grace_duration"> Grace Duration  <small>Days</small></label>
             <input type="number" name="grace_duration" class="form-control" placeholder="Enter grace duration" value="{{ $editdata->grace_duration }}">
             <font style="color:red">{{ ($errors->has('grace_duration'))?($errors->first('grace_duration')):'' }}</font>
            </div>               

            <div class="form-group col-md-6">
             <label for="status"> Status <span style="color:red;">*</span> </label>
             <select name="status" class="form-control">
              <option value=""> Select Role </option>
              <option value="0" {{ $editdata->status=="0"?"selected":"" }}> Publish </option>
              <option value="1" {{ $editdata->status=="1"?"selected":"" }}> Draft </option>
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
      category_id: {
      required: true,
      },
      name: {
      required: true,
      },
      price: {
      required: true,
      },
      price_duration: {
      required: true,
      },
      transferprice: {
      required: true,
      },
       transfer_duration: {
      required: true,
      },
       renewalprice: {
      required: true,
      },
      renewal_duration: {
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