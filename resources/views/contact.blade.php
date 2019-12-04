@extends('main')

@section('content')
  <section class="pt-5 pb-5 background-section">
    <!-- Page Content -->
    <div class="container">
      <!-- Title -->
      <div class="section-header">
        <h3 class="section-title">CONTACTE</h3>
        <span class="section-divider"></span>
        <p class="section-description">Vols contactar amb nosaltres?</p>
      </div>

      <!-- Content Row -->
      <div class="row pt-4">
        @foreach ($contactinfo as $info)
        <!-- Map Column -->
        <div class="col-lg-8 mb-4">
          <!-- Embedded Google Map -->
          <iframe width="100%" height="400px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="{!! $info->map !!}"></iframe>
        </div>
        <!-- Contact Details Column -->
        <div class="col-lg-4 mb-4">
          {!! $info->content !!}
          <p>
            <abbr title="Phone">P</abbr>: {!! $info->phone !!}
          </p>
          <p>
            <abbr title="Email">E</abbr>:
            <a href="mailto:{!! $info->email !!}">{!! $info->email !!}
            </a>
          </p>
          <p>
            <abbr title="Hours">H</abbr>: {!! $info->hours !!}
          </p>
        </div>
        @endforeach
      </div>
      <!-- /.row -->
    </div>
  </section>
  <!-- Contact Form -->
  <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
  <section class="pt-5 pb-5">
    <!-- Page Content -->
    <div class="container">
      <div class="row">
        <div class="col-lg-8 mb-4">
          <h3>Envia'ns un missatge</h3>
          <form name="sentMessage" action="{{ url('ticket')}}" method="POST" id="contactForm" >
            {{ csrf_field() }}
            <div class="control-group form-group">
              <div class="controls">
                <label>Nom</label>
                <input type="text" class="form-control" name="name" id="name" required placeholder="Si us plau, entreu el vostre nom.">
                <p class="help-block"></p>
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Telèfon</label>
                <input type="tel" class="form-control" name="phone" id="phone" required placeholder="Si us plau, entreu el vostre telèfon.">
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Direcció de correu</label>
                <input type="email" class="form-control" name="email" id="email" required placeholder="Si us plau, entreu el vostre e-mail.">
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Assumpte</label>
                <input type="text" class="form-control" name="subject" id="subject" required placeholder="Si us plau, entreu el assumpte.">
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Missatge</label>
                <textarea rows="10" cols="100" class="form-control" name="message" id="message" required placeholder="Si us plau, entreu el vostre missatge" maxlength="999" style="resize:none"></textarea>
              </div>
            </div>
            <div id="success"></div>
            <!-- For success/fail messages -->
            <button type="submit" class="btn btn-dark" id="sendMessageButton">Envía missatge</button>
          </form>
        </div>

      </div>
      <!-- /.row -->
    </div>
  </section>
  <!-- /.container -->
@endsection