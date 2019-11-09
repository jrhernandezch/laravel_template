@extends('main')

@section('content')
  <!-- Blog -->
  <section class="pt-5 pb-5 background-section">
    <div class="container">
      <!-- Title -->
      <div class="section-header">
        <h3 class="section-title">BLOG</h3>
        <span class="section-divider"></span>
        <p class="section-description">Què passa per la nostra empresa?</p>
      </div>
      
      <!-- Heading Row -->
      <div class="row align-items-center my-5">
        @foreach($firstblog as $first)
          <div class="col-lg-7">
            <img class="img-fluid rounded mb-4 mb-lg-0" src="{!! asset('img/blog/'.$first->image) !!}" alt="{!! $first->title !!}">
          </div>
          <!-- /.col-lg-8 -->
          <div class="col-lg-5">
            <h1 class="font-weight-light">{!! $first->title !!}</h1>
            {!! $first->content !!}
            <a class="btn btn-dark" href="">Més informació</a>
          </div>
          <!-- /.col-md-4 -->
        @endforeach
      </div>
      <!-- /.row -->
    </div>
  </section>

  <!-- Page Content -->
  <div class="container">   
    <!-- Important -->
    @foreach($importantblog as $important)
      <div class="card text-secondary background-section my-5 py-4 text-center">
        <div class="card-body">
          <p class="text-dark m-0">{!! $important->content !!}</p>
        </div>
      </div>
    @endforeach

    <!-- Content Row -->
    <div class="row">
      @foreach($blogs as $blog)
        @if($loop->first == false)
          <div class="col-md-4 mb-5">
            <div class="card h-100">
              <a href="#" title="Llegir més">
                <img class="card-img-top" src="{!! asset('img/blog/'.$blog->image) !!}" alt="{!! $blog->title !!}">
              </a>
              <div class="card-body">
                <h3 class="card-title">{!! $blog->title !!}</h3>
                <p class="card-text">{!! $blog->content !!}</p>
              </div>
              <div class="card-footer text-center">
                <a href="#" class="btn btn-dark btn-sm">Més informació</a>
              </div>
            </div>
          </div>
        @endif
      @endforeach
    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->
@endsection