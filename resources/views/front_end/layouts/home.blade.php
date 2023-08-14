@extends('front_end.layouts.index')
@section('home_page')


@php
$count = 0;
@endphp



 <section id="hero" class="d-flex align-items-center"  style="background-image:url({{ !empty($homeCover->image)?url('upload/cover/'.$homeCover->image):url('frontend/image/homeCover/cover.png') }});">


   <div class="container">
    <div class="row justify-content-center" id="domainsection">
     <div class="col-12 domain_head" align="center">
      <h1 align="center"> Search Your Domain  </h1>
     </div>
    <div class="col-12 py-2"  align="center">
     <div class="input-group p-2" >
      <input type="text" class="form-control input" placeholder="Type your desired domain name" aria-label="Recipient's username" aria-describedby="basic-addon2">
      <div class="input-group-append">
       <button class="btn btn-outline-secondary" type="button"> <i class="fa fa-search"></i> </button>
      </div>
     </div>
    </div>                                                           

    <div class="col-12 text-white justify-content-center domein_show">
     <center>
      <ul class="">

      @foreach($domain as $domains)
       <li>
        <span>{{ $domains->name }}</span>              
        <p>Only <span id="com_mp">TK {{ $domains->price }}</span></p>
       </li>
      @endforeach
      </ul>
     </center>
    </div>

   </div>
  </div>

<style type="text/css">

 #hero{
   background-repeat:no-repeat;
   background-position:center;
   background-size: cover;
 }
 .domein_show{
  margin-top:40px;
 }

 .domein_show ul li {
   display: inline-block;
   padding:15px;
 }

  .domein_show ul li span{
   font-size: 60px;
   font-weight: bold;
   color: #FFFFFF;
  }

 .domein_show ul li p {
  font-size: 16px;
  font-family: "SF Pro Display","SF Pro Icons","Helvetica Neue","Helvetica","Arial",sans-serif;

 }

 .domein_show ul li p span{
 font-size: 16px;
 font-weight: bold;
 font-family: "SF Pro Display","SF Pro Icons","Helvetica Neue","Helvetica","Arial",sans-serif;
 }
</style>

  
 </section>

 


 <main id="main">

 

   <!-- ======= Services Section ======= -->
   <section id="services p-0 mt-0 "  style="background-color:#fff;">
    <div class="container mt-3 pt-0" data-aos="fade-up">

     <div class="section-title mb-0 p-3">
      <h1 class="serviceshrad"> Explore our top-notch services </h1>
     </div>

     <div class="row">

      @foreach($services as $service)
      <div class="col-xl-4 col-md-4 col-sm-6 services d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
       <div class="icon-box w-100">
        <div class="mt-2 card-body" align="Center">
         <h4 align="Center" class="py-1">{{ $service['servicetype']['name'] }} </h4>
         <span>{{ $service->history }}</span>
        </div>
        <div class="serviceBtn" align="center">
         <a href="{{ $service->url }}" class="btn btn-primary">VIEW ALL PLANS</a>
        </div>
       </div>
      </div>
      @endforeach

     </div>
    </div>
   </section>
    <!-- =======End Services Section ======= -->




    <section  class="section-bg" style="padding-top:0px;" style="background-color:#FFFFF8;">
      <div class="container pt-0" data-aos="fade-up" >
       
       <div class="section-title py-5" >
        <h1 class="serviceshrad">Choose the bast Web Host that matches your needs.</h1>
        <h4>Top Sale Web Host</h4>
       </div>

       <div class="row">

        @foreach($PackageManage as $Package)  

        <div class="col-xl-3 col-md-4 col-sm-6 host-package1  d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
         <div class="icon-box w-100 p-0 m-0">
          
          <div class=" host-package-head">
            <div class="w-100 py-2 name-body">
             <h3 class="text-justify package-name"><center><b> {{ $Package->name }} </b></center></h3>
           </div>
           <div class="w-100 title_body">
            <h4 class="text-justify package-price">
              <center>
                <strong> ৳ </strong>
                <span> {{ $Package->price }} </span>
                <small> / {{ $Package->duration }} * </small>
              </center>
            </h4>
            <div class="mt-4 host-package-btn" align="center">
             <a href="{{ $Package->url }}" class="btn btn-primary" title="Get Started">Get Started</a>
            </div>
          </div>
          </div>
           
          <div class="mt-3 host-package-body" align="left">
           <center><span class="title">Top Features</span></center>
           <ul class="icon-list-items p-2" style="list-style:none;">

            @php
             $feature = json_decode($Package->fetures);
            @endphp

            @foreach($feature as $features)
            <li class="icon-list-item">
             <span class="icon-list-text"> {{ $features }} </span>
            </li>
            @endforeach

           </ul>
          </div>
         </div>
        </div>

       @endforeach

       </div>
      </div>
    </section>


   <!-- =======home cover host ======= -->
   <section class="section-bg" style="padding-top:0px; background-color:#000000;">
    <div class="container cover_host pt-5" data-aos="fade-up">
     <div class="row">
      <div class="col-md-7 left_side order-2 order-lg-1 px-5">
       <h2 class="text-white">
        {{ $cover->title }}
       </h2>
        
       <p class="text-white mr-5" style="font-size:16px; line-height:30px;">{!! $cover->discriptsion!!}</p>
       
      </div>
      <div class="col-md-5 right_side order-1 order-lg-2">
       <div class="cover-image bg-white p-5"  style="">
        <img src="{{ !empty($cover->image)?url('upload/homeCover_image/'.$cover->image):url('frontend/image/homeCover/cover.png') }}" class="img-fluid center animated p-3">
       </div>
      </div>
     </div>
    </div>
   </section>
   <!-- =======End home cover host ======= -->

   <!-- =======Services Benefit ======= -->
   <section id="benefits" class="py-5" style="padding-top:0px;">
    <div class="container py-5">
     <div class="row">

       <div class="col-xl-4 benefits col-md-6 col-sm-6 d-flex align-items-stretch" data-aos="zoom-out" data-aos-delay="100">
        <div class="icon-box w-100">
         <h3 align="center">Easy management</h3>
         <span class="text-justify">The CPanel is user-friendly and can be utilized by individuals with minimal knowledge.</span>
        </div>
       </div>
       <div class="col-xl-4 benefits col-md-6 col-sm-6 d-flex align-items-stretch" data-aos="zoom-out" data-aos-delay="100">
        <div class="icon-box w-100">
         <h3 align="center">Terminal Entry</h3>
         <span class="text-justify">It provides access to an in-browser terminal program for direct command-line access.</span>
        </div>
       </div>
       <div class="col-xl-4 benefits col-md-6 col-sm-6 d-flex align-items-stretch" data-aos="zoom-out" data-aos-delay="100">
        <div class="icon-box w-100">
         <h3 align="center">One-Click Deploy</h3>
         <span class="text-justify">With our one click installer tool, you can create any type of website: blog, forum, E-commerce etc.</span>
        </div>
       </div>

     </div>
    </div>
   </section>
   <!-- =======End Services Benefit ======= -->

   <!-- =======support ======= -->
   <section id="support">
    <div class="container">
     <div class="row">
      <div class="col-xl-1 col-lg-1"></div>

      <div class="col-xl-10 col-lg-10  col-md-12 col-sm-12 d-flex support" data-aos="zoom-out" data-aos-delay="100" >
       <div class="icon-box py-5 w-100 bg-black" align="center">
        <h3 align="center" class="text-white pb-2">24/7 Support</h3>
        <h4 class="text-justify text-white px-3">Let us help you choose the right Services for your needs.</h4>
        <a href="tel:{{ $settingdata->phone }}" class="btn btn-lg">Call: {{ $settingdata->phone }}</a><br><br>
        <a href="mailto:{{ $settingdata->email }}" class="btn2 btn-lg">Mail: {{ $settingdata->email }}</a><br><br>
        <h5 class="text-white"> Request a <a href="tel:{{ $settingdata->phone }}">Call Back</a> or <a href="https://www.facebook.com/incomitbd" target="_blank">Chat Now</a></h5>
       </div>
      </div>

     </div>
    </div>
   </section>
   <!-- ====End support ====-->
 </main>
<!-- End main -->

@endsection