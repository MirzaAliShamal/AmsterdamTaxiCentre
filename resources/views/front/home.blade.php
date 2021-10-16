@extends('layouts.front')
@section('content')
@section('css')
<style>
    .language {
        text-align: right;
        margin-bottom: 15px;
    }
    .language a {
        display: inline-block;
        margin-left: 5px;
    }
.our-vehicles-section
{
    margin-top:12vw;
}

@media only screen and (max-width: 993px) {
  .our-vehicles-section
{
    margin-top:17%;
}
}

</style>
@endsection
@if (checkOn())
    <section class="our-vehicles-section pt-3">
        <div class="container">
            <form action="{{ route('book') }}" class="form-booking" method="POST" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="fare" id="fare" value="">
                <div class="row">
                    <div class="col-md-10 m-auto">
                        <div class="language">
                            <a href="{{ route('setlocale', 'en') }}"><img src="{{ asset('english.svg') }}" class="img-fluid" width="30px" alt=""></a>
                            <a href="{{ route('setlocale', 'nl') }}"><img src="{{ asset('dutch.svg') }}" class="img-fluid" width="25px" alt=""></a>
                        </div>
                        <div class="booking-form">

                            <div id="msform">
                                <fieldset>
                                    <div class="form-card">


                                        <div class="row">
                                            <div class="col-lg-12 d-none">
                                                <div class="ride-map-area">
                                                    <div id="ride-map"></div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="distance-error">
                                                    <span class="error">
                                                        <strong></strong>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-12">
                                                <div class="form-group mb-0">
                                                    <div class="destination">
                                                        <label for="">{{ trans('booking.pickup') }}</label>
                                                        <i class="fas fa-map-marker-alt"></i>
                                                        <input type="text" name="from_location" placeholder="{{ trans('booking.pickup') }}" id="spoint" value="" class="form-control validate" autocomplete="off">
                                                        <input type="hidden" id="slat" name="slat" checkHide="true" required="">
                                                        <input type="hidden" id="slon" name="slon" checkHide="true" required="">
                                                    </div>

                                                    <span class="error">
                                                        <strong></strong>
                                                    </span>
                                                </div>
                                                <div class="dropdown position-relative">
                                                    <p>{{ trans('booking.choose') }} <a href="javascript:;" class="dropdown-link" data-target="airport-pickup">{{ trans('booking.airport') }} <i class="fas fa-chevron-down" style="font-size: 10px;"></i></a> or <a href="javascript:;" class="dropdown-link" data-target="cruise-pickup">{{ trans('booking.cruise') }} <i class="fas fa-chevron-down" style="font-size: 10px;"></i></a> {{ trans('booking.terminal') }}</p>
                                                    <div class="menu-dropdown pickup" id="airport-pickup">
                                                        <ul>
                                                            @foreach (airportTerminal() as $item)
                                                                <li data-lat="{{ $item->lat }}" data-long="{{ $item->long }}" data-type="1">{{ $item->name }}</li>
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                    <div class="menu-dropdown pickup" id="cruise-pickup">
                                                        <ul>
                                                            @foreach (cruiseTerminal() as $item)
                                                                <li data-lat="{{ $item->lat }}" data-long="{{ $item->long }}" data-type="2">{{ $item->name }}</li>
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="extra-fields airport-extra" style="display: none;">
                                                    <div class="form-group">
                                                        <label for="flight_no">{{ trans('booking.flight_number') }}</label>
                                                        <input type="text" class="form-control" name="flight_no" id="flight_no" autocomplete="off">
                                                        <span class="error">
                                                            <strong></strong>
                                                        </span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="arrival_from">{{ trans('booking.arrival_from') }}</label>
                                                        <input type="text" class="form-control" name="arrival_from" id="arrival_from" autocomplete="off">
                                                        <span class="error">
                                                            <strong></strong>
                                                        </span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="airline">{{ trans('booking.airline') }}</label>
                                                        <input type="text" class="form-control" name="airline" id="airline" autocomplete="off">
                                                        <span class="error">
                                                            <strong></strong>
                                                        </span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="meeting_point">{{ trans('booking.meeting_point') }}</label>
                                                        <select name="meeting_point" id="meeting_point" class="form-control">
                                                            <option value="" selected>Select an option</option>
                                                            <option value="at arrivals with a name board">{{ trans('booking.at_arrivals_with_the_name_board') }}</option>
                                                        </select>
                                                        <span class="error">
                                                            <strong></strong>
                                                        </span>
                                                    </div>
                                                </div>

                                                <div class="form-group extra-fields cruise-extra" style="display: none;">
                                                    <label for="ship_name">{{ trans('booking.ship_name') }}</label>
                                                    <input type="text" class="form-control" name="ship_name" id="ship_name" value="" autocomplete="off">
                                                    <span class="error">
                                                        <strong></strong>
                                                    </span>
                                                </div>
                                            </div>

                                            <div class="col-lg-6 col-md-6 col-sm-12">
                                                <div class="form-group mb-0">
                                                    <div class="destination">
                                                        <label for="">{{ trans('booking.destination') }}</label>
                                                        <i class="fas fa-map-marker-alt"></i>
                                                        <input type="text" name="to_location" placeholder="{{ trans('booking.destination') }}" id="epoint" class="form-control validate" autocomplete="off">
                                                        <input type="hidden" id="elat" name="elat" checkHide="true" required="">
                                                        <input type="hidden" id="elon" name="elon" checkHide="true" required="">
                                                    </div>

                                                    <span class="error">
                                                        <strong></strong>
                                                    </span>
                                                </div>
                                                <div class="dropdown position-relative">
                                                    <p>{{ trans('booking.choose') }} <a href="javascript:;" class="dropdown-link" data-target="airport-destination">{{ trans('booking.airport') }} <i class="fas fa-chevron-down" style="font-size: 10px;"></i></a> of <a href="javascript:;" class="dropdown-link" data-target="cruise-destination">{{ trans('booking.cruise') }} <i class="fas fa-chevron-down" style="font-size: 10px;"></i></a> {{ trans('booking.terminal') }}</p>
                                                    <div class="menu-dropdown dropoff" id="airport-destination">
                                                        <ul>
                                                            @foreach (airportTerminal() as $item)
                                                                <li data-lat="{{ $item->lat }}" data-long="{{ $item->long }}">{{ $item->name }}</li>
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                    <div class="menu-dropdown dropoff" id="cruise-destination">
                                                        <ul>
                                                            @foreach (cruiseTerminal() as $item)
                                                                <li data-lat="{{ $item->lat }}" data-long="{{ $item->long }}">{{ $item->name }}</li>
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-6 col-md-6 col-sm-12 mt-sm-3">
                                                <label for="direction">{{ trans('booking.direction') }}</label>
                                                <div class="form-group mb-3">
                                                    <div class="direction-options mb-0">
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="radio" name="direction" id="direction-oneway" value="1" checked>
                                                            <label class="form-check-label" for="direction-oneway"><i class="fas fa-long-arrow-alt-right"></i> {{ trans('booking.one_way') }}</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="radio" name="direction" id="direction-twoway" value="2">
                                                            <label class="form-check-label" for="direction-twoway"><i class="fas fa-exchange-alt"></i> {{ trans('booking.return') }}</label>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <span class="error">
                                                            <strong></strong>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-6 col-md-6 col-sm-12 mt-sm-3">
                                                <div class="date-error">
                                                    <span class="error">
                                                        <strong></strong>
                                                    </span>
                                                </div>
                                                <div class="pickup-block">
                                                    <label for="date-time">{{ trans('booking.date_time') }}</label>
                                                    <div class="form-group mb-2">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <input type="text" class="form-control datepicker" id="pickup_date" name="pickup_date" value="{{ now()->format('m/d/Y') }}" autocomplete="off" readonly>
                                                                <span class="error">
                                                                    <strong></strong>
                                                                </span>
                                                            </div>
                                                            <div class="col-6">
                                                                <input type="text" class="form-control timepicker" id="pickup_time" name="pickup_time" value="{{ now()->addHour(2)->format('H:i') }}" autocomplete="off" readonly>
                                                                <span class="error">
                                                                    <strong></strong>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="return-block" style="display: none;">
                                                    <label for="date-time">Terugkeer datum & tijd</label>
                                                    <div class="form-group mb-2">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <input type="text" class="form-control datepicker" id="return_date" name="return_date" value="{{ now()->format('m/d/Y') }}" autocomplete="off" readonly>
                                                                <span class="error">
                                                                    <strong></strong>
                                                                </span>
                                                            </div>
                                                            <div class="col-6">
                                                                <input type="text" class="form-control timepicker" id="return_time" name="return_time" value="{{ now()->addHour(2)->format('H:i') }}" autocomplete="off" readonly>
                                                                <span class="error">
                                                                    <strong></strong>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-12 col-md-12 col-sm-12">

                                                <div class="select-car-wrapper mb-3">
                                                    <div class="selected-car">
                                                        <div class="form-group">
                                                            <div class="custom-control custom-radio">
                                                                <input type="radio" class="custom-control-input" id="alto" name="vehicle_type" value="Sedan" required>
                                                                <label class="custom-control-label" for="alto">Sedan <small>(4 {{ trans('booking.persons') }} + 2 {{ trans('booking.big_suitcases') }} + 2 {{ trans('booking.small_suitcases') }})</small></label>
                                                            </div>
                                                            <div class="custom-control custom-radio">
                                                                <input type="radio" class="custom-control-input" id="luxury" name="vehicle_type" value="Stationwagen">
                                                                <label class="custom-control-label" for="luxury">Stationwagen <small>(4 {{ trans('booking.persons') }} + 2 {{ trans('booking.big_suitcases') }} + 4 {{ trans('booking.small_suitcases') }})</small></label>
                                                            </div>
                                                            <div class="custom-control custom-radio">
                                                                <input type="radio" class="custom-control-input" id="tourist" name="vehicle_type" value="Bus">
                                                                <label class="custom-control-label" for="tourist">Bus <small>(8 {{ trans('booking.persons') }} + 4 {{ trans('booking.big_suitcases') }} + 8 {{ trans('booking.small_suitcases') }})</small></label>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <input type="hidden" id="passengers" class="form-control validate" value="4" name="passengers" autocomplete="off">
                                                    <input type="hidden" id="large_cases" class="form-control validate" value="2" name="large_cases" autocomplete="off">
                                                    <input type="hidden" id="small_cases" class="form-control validate" value="2" name="small_cases" autocomplete="off">
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12">
                                                <h2>{{ trans('booking.ride_price') }}</h2>
                                                <div class="form-group">
                                                    <div id="results"></div>
                                                </div>
                                            </div>

                                        </div>



                                    </div> <input type="button" name="next" class="next btn btn-dark btn-lg mt-3" value="{{ trans('booking.next_step') }}" />
                                </fieldset>
                                <fieldset>
                                    <div class="form-card">



                                            <div class="row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                                        <div class="payment-options-wrapper">
                                                            <label for="payment">{{ trans('booking.payment_method') }}</label>
                                                            <div class="form-group mb-4">
                                                                <div class="payment-options mb-0">
                                                                    <div class="form-check w-50 p-0">
                                                                        <input class="form-check-input" type="radio" name="payment_method" id="cash-pay" value="1">
                                                                        <label class="form-check-label" for="cash-pay">{{ trans('booking.in_cash') }}</label>
                                                                    </div>
                                                                    <div class="form-check w-50 p-0">
                                                                        <input class="form-check-input" type="radio" name="payment_method" id="banking-pay" value="2">
                                                                        <label class="form-check-label" for="banking-pay">{{ trans('booking.pin_card') }}</label>
                                                                    </div>
                                                                </div>

                                                                <div>
                                                                    <span class="error">
                                                                        <strong></strong>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                                        <h2>{{ trans('booking.contact') }}</h2>
                                                        <div class="contact">
                                                            <div class="row">
                                                                <div class="col-lg-12 col-md-12 col-sm-12">
                                                                    <div class="form-group">
                                                                        <label for="phone">{{ trans('booking.phone') }}</label><br>
                                                                        <input type="text" id="phone" class="form-control phone validate">
                                                                        <input type="hidden" id="number" name="phone">
                                                                        <span class="error">
                                                                            <strong></strong>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-md-6 col-sm-12">
                                                                    <div class="form-group">
                                                                        <label for="name">{{ trans('booking.name') }}</label>
                                                                        <input type="name" id="name" class="form-control validate" placeholder="" name="name" autocomplete="off">
                                                                        <span class="error">
                                                                            <strong></strong>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-md-6 col-sm-12">
                                                                    <div class="form-group">
                                                                        <label for="email">{{ trans('booking.email') }}</label>
                                                                        <input type="email" id="email" class="form-control validate" name="email" autocomplete="off">
                                                                        <span class="error">
                                                                            <strong></strong>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            <label for="instruction">{{ trans('booking.instructions') }}</label>
                                                            <textarea name="instruction" id="instruction" class="form-control" rows="5"></textarea>
                                                            <span class="error">
                                                                <strong></strong>
                                                            </span>
                                                        </div>
                                                    </div>




                                            </div>



                                    </div>

                                    <p id="output" style="display:none;">Please enter a valid number below</p>
                                    <input type="button" name="previous" class="previous btn btn-dark btn-lg" value="{{ trans('booking.prev') }}" />
                                    <button type="button" class="btn btn-success btn-lg book-now ">{{ trans('booking.book') }}</button>

                                </fieldset>
                            </div>



                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
@else
    <h2 class="position-absolute" style="top: 45%; left:27%;">If you need a taxi call the centrale <span style="font-size:38px;">+316 8567 2263</span></h2>
@endif

                    <div style="display:none;" id="contact-map"></div>
@endsection
@section('js')
    <script src="{{ asset('theme/js/map-script.js?v7.2') }}"></script>
    <script>

    var bus_per_km       = {{ setting('bus_per_km') }};
    var bus_per_minute   = {{ setting('bus_per_minute') }};
    var sedan_per_km     = {{ setting('sedan_per_km') }};
    var sedan_per_minute = {{ setting('sedan_per_minute') }};


        function validateFields() {
            $(".validate").each(function (index, element) {
                if( $(this).val() == ""){
                    $(this).closest('.form-group').removeClass('valid');
                    $(this).closest('.form-group').addClass('in-valid');
                    $(this).closest('.form-group').find('.error strong').html('Please Fill out this field!');
                } else {
                    $(this).closest('.form-group').removeClass('in-valid');
                    $(this).closest('.form-group').addClass('valid');
                    $(this).closest('.form-group').find('.error strong').html('');
                }
            });

            if (!$("[name='direction']").is(':checked')) {
                $("[name='direction']").closest('.form-group').removeClass('valid');
                $("[name='direction']").closest('.form-group').addClass('in-valid');
                $("[name='direction']").closest('.form-group').find('.error strong').html('Please Select Any!');
            } else {
                $("[name='direction']").closest('.form-group').removeClass('in-valid');
                $("[name='direction']").closest('.form-group').addClass('valid');
                $("[name='direction']").closest('.form-group').find('.error strong').html('');
            }

            if (!$("[name='vehicle_type']").is(':checked')) {
                $("[name='vehicle_type']").closest('.form-group').removeClass('valid');
                $("[name='vehicle_type']").closest('.form-group').addClass('in-valid');
                $("[name='vehicle_type']").closest('.form-group').find('.error strong').html('Please Select Any!');
            } else {
                $("[name='vehicle_type']").closest('.form-group').removeClass('in-valid');
                $("[name='vehicle_type']").closest('.form-group').addClass('valid');
                $("[name='vehicle_type']").closest('.form-group').find('.error strong').html('');
            }

            if (!$("[name='payment_method']").is(':checked')) {
                $("[name='payment_method']").closest('.form-group').removeClass('valid');
                $("[name='payment_method']").closest('.form-group').addClass('in-valid');
                $("[name='payment_method']").closest('.form-group').find('.error strong').html('Please Select Any!');
            } else {
                $("[name='payment_method']").closest('.form-group').removeClass('in-valid');
                $("[name='payment_method']").closest('.form-group').addClass('valid');
                $("[name='payment_method']").closest('.form-group').find('.error strong').html('');
            }
        }

        let nowTime = moment().format('HH:mm');

        function currDate() {
            var date = new Date();
            var newDate = date.toString('MM/dd/yyyy');
            return newDate;
        }

        function timeDiff(date, start, end) {
            var str0 = currDate()+" "+ start;
            var str1 = date+" "+ end;
            var diff = (Date.parse(str1) - Date.parse(str0))/1000/60;
            return diff;
        }

        function check1HourGap(date, time) {
            $diff = timeDiff(date, nowTime, time);
            console.log($diff);

            if ($diff < 60) {
                $("#pickup_time").closest('div').find('.error strong').html("Only 1 hour gap allowed from current time, If you need urgent then call us at +44 23 8022 2555");
            } else {
                $("#pickup_time").closest('div').find('.error strong').html("");
            }
        }

        function checkPickReturnGap() {
            $startDate = $("#pickup_date").val();
            $startTime = $("#pickup_time").val();

            $endDate = $("#return_date").val();
            $endTime = $("#return_time").val();

            $str1 = new Date($startDate+" "+$startTime);
            $str2 = new Date($endDate+" "+$endTime);

            console.log($str1);
            console.log($str2);

            $difference = $str2 > $str1;

            if(!$difference) {
                $(".date-error").find('.error strong').html('Pick Date should be lesser than return date!');
            } else {
                $(".date-error").find('.error strong').html("");
            }

            // alert($difference);
        }

        $(document).ready(function () {
            google.load("maps", "3.exp", {
                callback: initMap,
                other_params: 'key=AIzaSyA6GhjR-WmiKCgr71McBioeymDd6_Ti_0s&libraries=places,drawing'
            });

            $("#check").change(function (e) {
                e.preventDefault();

                $val = $(this).val();
                $lat = $(this).find(':selected').data('lat');
                $long = $(this).find(':selected').data('long');

                $("#spoint").val($val);

                latlon1 = new google.maps.LatLng($lat,$long);
                printMarker(latlon1 , smarker);
                gmarkers.push(printMarker(latlon1 , smarker));

                if(latlon1 != null && latlon2 != null){
                    showDirections(latlon1 , latlon2);
                    fitMap(latlon1);
                    distance = haversine_distance(smarker, emarker);
                    // console.log(distance);
                    $('#distance').val(distance);
                    // calcRoute();
                }
            });

            $("[name='direction']").change(function (e) {
                e.preventDefault();

                $( "[name='vehicle_type']" ).prop( "checked", false );
                $('#results').html('');
                $val = $(this).val();
                if ($val == 1) {
                    $(".return-block").slideUp();
                } else {
                    $(".return-block").slideDown();
                }
            });

            $("[name='vehicle_type']").change(function (e) {
                e.preventDefault();
                $val = $(this).val();

                $direction_value = $('input[name="direction"]:checked').val();


                if ($val === "Sedan") {
                    $("#passengers").val("4");
                    $("#large_cases").val("2");
                    $("#small_cases").val("2");


                    total_fare = (( total_distance *  sedan_per_km) + ( total_minutes * sedan_per_minute )) * $direction_value;

                    if(total_fare < 15)
                    {
                        total_fare = 15 * $direction_value;
                    }

                    $('#fare').val(total_fare);
                    $('#results').html('<h3>€'+Math.ceil(total_fare)+'</h3><h4> '+ (total_distance).toFixed(1) +' KM ('+Math.ceil(total_minutes)+' Minutes)</h4>');

                }
                else if ($val === "Stationwagen")
                {
                    $("#passengers").val("4");
                    $("#large_cases").val("2");
                    $("#small_cases").val("4");

                    total_fare = (( total_distance *  sedan_per_km) + ( total_minutes * sedan_per_minute )) * $direction_value;

                    if(total_fare < 15)
                    {
                        total_fare = 15 * $direction_value;
                    }

                    $('#fare').val(total_fare);
                    $('#results').html('<h3>€'+Math.ceil(total_fare)+'</h3><h4> '+ (total_distance).toFixed(1) +' KM ('+Math.ceil(total_minutes)+' Minutes)</h4>');


                }
                else if ($val === "Bus")
                {

                    $("#passengers").val("8");
                    $("#large_cases").val("4");
                    $("#small_cases").val("8");

                    total_fare = (( total_distance *  bus_per_km) + ( total_minutes * bus_per_minute )) * $direction_value;

                    if(total_fare < 15)
                    {
                        total_fare = 15 * $direction_value;
                    }

                    if(total_fare < 30 && $direction_value == 2)
                    {
                        total_fare = 30;
                    }

                    $('#fare').val(total_fare);
                    $('#results').html('<h3>€'+Math.ceil(total_fare)+'</h3><h4> '+ (total_distance).toFixed(1) +' KM ('+Math.ceil(total_minutes)+' Minutes)</h4>');

                }
            });



            $(".dropdown-link").click(function (e) {
                e.preventDefault();
                $id = $(this).data('target');
                $(".menu-dropdown").fadeOut();

                $("#"+$id).fadeIn();
            });

            $(document).click(function(){
                $(".menu-dropdown").fadeOut();
            });
            $(".dropdown").click(function(e){
                e.stopPropagation();
            });

            $(".pickup ul li").click(function (e) {
                e.preventDefault();
                $(".menu-dropdown").fadeOut();
                $elm = $(this);
                $(".extra-fields").hide();

                if ($elm.data('type') == "1") {
                    $(".airport-extra").show();
                    $(".cruise-extra").find("#ship_name").removeClass("validate");
                    $(".airport-extra").find("#meeting_point").addClass("validate");
                } else {
                    $(".cruise-extra").show();
                    $(".cruise-extra").find("#ship_name").addClass("validate");
                    $(".airport-extra").find("#meeting_point").removeClass("validate");
                }

                $val = $elm.text();
                $lat = $elm.data('lat');
                $long = $elm.data('long');

                $("#spoint").val($val);
                $("#slat").val($lat);
                $("#slon").val($long);

                latlon1 = new google.maps.LatLng($lat,$long);
                printMarker(latlon1 , smarker);
                gmarkers.push(printMarker(latlon1 , smarker));

                if(latlon1 != null && latlon2 != null){
                    showDirections(latlon1 , latlon2);
                    fitMap(latlon1);
                    distance = haversine_distance(smarker, emarker);
                    $('#distance').val(distance);
                }
            });

            $(".dropoff ul li").click(function (e) {
                e.preventDefault();
                $(".menu-dropdown").fadeOut();

                $elm = $(this);

                $val = $elm.text();
                $lat = $elm.data('lat');
                $long = $elm.data('long');

                $("#epoint").val($val);
                $("#elat").val($lat);
                $("#elat").val($long);

                latlon2 = new google.maps.LatLng($lat, $long);
                printMarker(latlon2 , emarker , 2);

                if(latlon1 != null && latlon2 != null){
                    showDirections(latlon1 , latlon2);
                    fitMap(latlon2);
                    distance = haversine_distance(smarker, emarker);
                    $('#distance').val(distance);
                }
            });

            $(".book-now").click(function (e) {
                e.preventDefault();
                validateFields();
                if ($(".in-valid").length == 0) {
                    $(".form-booking").submit();
                }
                // toastr.error("Please fill all the required fields to book");
            });



        });
    </script>


     <script>
        $(document).ready(function(){

var current_fs, next_fs, previous_fs; //fieldsets
var opacity;

$(".next").click(function(){

    $sPoint = $('#spoint').val();
    $ePoint = $('#epoint').val();

    if($sPoint == "" || $ePoint == "" || !$('input[name="vehicle_type"]').is(':checked'))
    {
        toastr.error("Type en adres zijn het belangrijkst. Voeg alstublieft toe");
        return;
    }



current_fs = $(this).parent();
next_fs = $(this).parent().next();

//Add Class Active
$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

//show the next fieldset
next_fs.show();
//hide the current fieldset with style
current_fs.animate({opacity: 0}, {
step: function(now) {
// for making fielset appear animation
opacity = 1 - now;

current_fs.css({
'display': 'none',
'position': 'relative'
});
next_fs.css({'opacity': opacity});
},
duration: 600
});
});

$(".previous").click(function(){

current_fs = $(this).parent();
previous_fs = $(this).parent().prev();

//Remove class active
$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

//show the previous fieldset
previous_fs.show();

//hide the current fieldset with style
current_fs.animate({opacity: 0}, {
step: function(now) {
// for making fielset appear animation
opacity = 1 - now;

current_fs.css({
'display': 'none',
'position': 'relative'
});
previous_fs.css({'opacity': opacity});
},
duration: 600
});
});


});
        </script>

@endsection

