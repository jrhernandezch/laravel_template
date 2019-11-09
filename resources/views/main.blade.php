<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Meta forms -->
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>La meva empresa</title>

  <!-- Favicons -->
  <link href="{{ asset('img/favicon.png') }}" rel="icon">

  <!-- Bootstrap core CSS -->
  <link href="{!! asset('vendor/bootstrap/css/bootstrap.min.css') !!}" rel="stylesheet">

  <link href="{!! asset('vendor/fontawesome-free/css/all.min.css') !!}" rel="stylesheet">
  <link href="{!! asset('vendor/simple-line-icons/css/simple-line-icons.css') !!}" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="{!! asset('css/custom-style.css') !!}" rel="stylesheet">
  <link href="{!! asset('css/landing-page.min.css') !!}" rel="stylesheet">

</head>

<body>

  <header id="header">
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg">
      <div class="container">
        <a class="navbar-brand" href="{{ url('/portada') }}" alt="logo" title="logo">
          @foreach ($infologo as $logo)
            {!! $logo->content !!}
          @endforeach
        </a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="{{ url('/sobre-nosaltres') }}">Nosaltres</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{{ url('/blog') }}">Blog</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{{ url('/contacte') }}">Contacte</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

  @yield('content')

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
          <ul class="list-inline mb-2">
            <li class="list-inline-item">
              <a href="#">Termes d'ús</a>
            </li>
            <li class="list-inline-item">&sdot;</li>
            <li class="list-inline-item">
              <a href="#">Política de privacitat</a>
            </li>
          </ul>
          <p class="text-muted small mb-4 mb-lg-0">&copy; La teva web 2019. Tots els drets reservats.</p>
        </div>
        <div class="col-lg-6 h-100 text-center text-lg-right my-auto">
          <ul class="list-inline mb-0">
            @foreach($socialmedia as $social)
              @switch($social->id_socialmedia)
                @case(1)
                  <li class="list-inline-item mr-3">
                    <a href="{!! $social->url !!}" target="_blank" title="{!! $social->name !!}">
                      <i class="fab fa-facebook fa-2x fa-fw"></i>
                    </a>
                  </li>
                  @break

                @case(2)
                  <li class="list-inline-item mr-3">
                    <a href="{!! $social->url !!}" target="_blank" title="{!! $social->name !!}">
                      <i class="fab fa-twitter-square fa-2x fa-fw"></i>
                    </a>
                  </li>
                  @break

                @case(3)
                  <li class="list-inline-item">
                    <a href="{!! $social->url !!}" target="_blank" title="{!! $social->name !!}">
                      <i class="fab fa-instagram fa-2x fa-fw"></i>
                    </a>
                  </li>
                  @break

                @default
              @endswitch
            @endforeach
          </ul>
        </div>
      </div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="{!! asset('vendor/jquery/jquery.min.js') !!}"></script>
  <script src="{!! asset('vendor/bootstrap/js/bootstrap.bundle.min.js') !!}"></script>
  <script>
    // Header fixed and Back to top button
    $(window).scroll(function() {
      if ($(this).scrollTop() > 20) {
        $('#header').addClass('header-fixed');
      } else {
        $('#header').removeClass('header-fixed');
      }
    });
  </script>

</body>

</html>
