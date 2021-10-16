@extends('layouts.front')
@section('content')


<section class="section-padding our-service-section" style="padding:10vw; 0vw 12vw 0vw">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center" style="    background: white;padding: 20px;border-radius: 5px;">
                <i class="fas fa-thumbs-up fa-10x"></i>
                <h1 class="mt-3">bedankt voor uw boeking bij <br>Amsterdam Taxi Centrale</h1>
                <a href="https://amsterdamtaxicentrale.com/" class="btn btn-lg btn-dark mt-2">Ga naar homepagina</a>
            </div>
        </div>
    </div>
</section>
{{ session()->forget('booking_done') }}
@endsection
