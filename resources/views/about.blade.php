@extends('main')

@section('content')
  <section class="pt-5 pb-5 background-section">
    <div class="container">
      <!-- Title -->
      <div class="section-header">
        <h3 class="section-title">SOBRE NOSALTRES</h3>
        <span class="section-divider"></span>
        <p class="section-description">Qui som? Què fem? Què tenim?</p>
      </div>
      
      <!-- Intro Content -->
      <div class="row pt-4 pb-4">
        @foreach($aboutus as $us)
          <div class="col-lg-6">
            <img class="img-fluid rounded mb-4" src="{!! asset('img/about/'.$us->image) !!}" alt="{!! $us->name !!}">
          </div>
          <div class="col-lg-6">
            <h2>{!! $us->name !!}</h2>
            {!! $us->content !!}            
          </div>
        @endforeach
      </div>
      <!-- /.row -->
    </div>
  </section>

  <!-- Team -->
  <section class="pt-5 pb-5">
    <div class="container">
      <!-- Team Members -->
      <h2>El nostre equip</h2>
      <div class="row pt-3 pb-3">
        @foreach($aboutteam as $team)
          <div class="col-lg-4 mb-4">
            <div class="card h-100 text-center">
              <img class="card-img-top" src="{!! asset('img/about/'.$team->image) !!}" alt="{!! $team->name !!}">
              <div class="card-body">
                <h4 class="card-title pt-3">{!! $team->name !!}</h4>
                <h6 class="card-subtitle mb-2 text-muted pt-3">{!! $team->position !!}</h6>
                <p class="card-text pt-3">{!! $team->content !!}</p>
              </div>
              <div class="card-footer text-dark">
                {!! $team->mail !!}
              </div>
            </div>
          </div>
        @endforeach
      </div>
      <!-- /.row -->
    </div>
  </section>

  <section class="pt-5 pb-5 bg-light">
    <div class="container">
      <!-- Our Customers -->
      <h2>Els nostres clients</h2>
      <div class="row pt-3">
        @foreach($aboutclient as $client)
          <div class="col-lg-2 col-sm-4 mb-4">
            <img class="img-fluid" src="{!! asset('img/clients/'.$client->image) !!}" title="{!! $client->name !!}, {!! $client->content !!}" alt="{!! $client->name !!}, {!! $client->content !!}">
          </div>
        @endforeach
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->
  </section>
@endsection