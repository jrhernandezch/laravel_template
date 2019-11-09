@extends('main')

@section('content')

  <header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        @foreach ($slides as $slide)
          @if($loop->first)
            <div class="carousel-item active">
          @else
            <div class="carousel-item">
          @endif
          <img src="{!! asset('img/slide/'.$slide->image) !!}">
          <div class="carousel-caption d-none d-md-block">
            <h3>{!! $slide->title !!}</h3>
            {!! $slide->content !!}
          </div>
        </div>
        @endforeach
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </header>

  <!-- Icons Grid -->
  <section class="features-icons background-section text-center">
    <div class="container">
      <div class="row">
        @foreach ($topicons as $icons)
        <div class="col-lg-4">
          <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
            <div class="features-icons-icon d-flex">
              <i class="{!! $icons->icon !!} m-auto text-dark"></i>
            </div>
            <h3>{!! $icons->title !!}</h3>
            <p class="lead mb-0">{!! $icons->content !!}</p>
          </div>
        </div>
        @endforeach
      </div>
    </div>
  </section>

  <!-- Image Showcases -->
  <section class="showcase">
    <!-- Section Title -->
    <div class="section-header pt-5 pb-5">
      <h3 class="section-title">SERVEIS</h3>
      <span class="section-divider"></span>
      <p class="section-description">Quins són els nostres serveis?</p>
    </div>

    <div class="container-fluid p-0">
      @foreach ($services as $service)
        @if($loop->iteration%2 != 0)
          <div class="row no-gutters">
            <div class="col-lg-6 order-lg-2 text-white showcase-img image-service">
              <img src="{!! asset('img/services/'.$service->image) !!}">
            </div>
            <div class="col-lg-6 order-lg-1 my-auto showcase-text">
              <h2>{!! $service->title !!}</h2>
              <p class="lead mb-0">{!! $service->content !!}</p>
            </div>
          </div>
        @else
          <div class="row no-gutters">
            <div class="col-lg-6 text-white showcase-img image-service">
              <img src="{!! asset('img/services/'.$service->image) !!}">
            </div>
            <div class="col-lg-6 my-auto showcase-text">
              <h2>{!! $service->title !!}</h2>
              <p class="lead mb-0">{!! $service->content !!}</p>
            </div>
          </div>
        @endif
      @endforeach
    </div>
  </section>
    
  <!-- Clients -->
  <section class="testimonials text-center background-section">
  <div class="container">
    <!-- Section Title -->
    <div class="section-header pt-3 pb-5">
      <h3 class="section-title">CASOS D'ÈXIT</h3>
      <span class="section-divider"></span>
      <p class="section-description">Els nostres clients confien en nosaltres</p>
    </div>
    
    <div class="row">
      <div class="col-lg-4">
        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
          <img class="img-fluid rounded-circle mb-3" src="{!! asset('img/clients/testimonials-1.jpg') !!}" alt="">
          <h5>Margaret E.</h5>
          <p class="font-weight-light mb-0">"This is fantastic! Thanks so much guys!"</p>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
          <img class="img-fluid rounded-circle mb-3" src="{!! asset('img/clients/testimonials-2.jpg') !!}" alt="">
          <h5>Fred S.</h5>
          <p class="font-weight-light mb-0">"Bootstrap is amazing. I've been using it to create lots of super nice landing pages."</p>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
          <img class="img-fluid rounded-circle mb-3" src="{!! asset('img/clients/testimonials-3.jpg') !!}" alt="">
          <h5>Sarah W.</h5>
          <p class="font-weight-light mb-0">"Thanks so much for making these free resources available to us!"</p>
        </div>
      </div>
    </div>
  </div>
  </section>

@endsection