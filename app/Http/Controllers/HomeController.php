<?php

namespace App\Http\Controllers;

use App\Models\ContactEnquiry;
use Illuminate\Http\Request;
use App\Jobs\SendQueueEmail;
use App\Models\Transaction;
use App\Models\Booking;
use Carbon\Carbon;
use Mail;
use App\Traits\TwilioAPI;


class HomeController extends Controller
{

    use TwilioAPI;

    public function home()
    {
        return view('front.home', get_defined_vars());
    }

    public function privateTours()
    {
        return view('front.private_tours', get_defined_vars());
    }

    public function everydayTaxi()
    {
        return view('front.everyday_taxi', get_defined_vars());
    }

    public function airportTransport()
    {
        return view('front.airport_transport', get_defined_vars());
    }

    public function cruiseTransport()
    {
        return view('front.cruise_transport', get_defined_vars());
    }

    public function faq()
    {
        return view('front.faq', get_defined_vars());
    }

    public function contact()
    {
        return view('front.contact', get_defined_vars());
    }

    public function getAQuote()
    {
        return view('front.get-a-quote', get_defined_vars());
    }

    public function booking(Request $req)
    {


        $booking = [];
        $booking['uuid'] = bookingUUID();
        $booking['from'] = $req->from_location ?? null;
        $booking['from_lat'] = $req->slat ?? null;
        $booking['from_long'] = $req->slon ?? null;
        $booking['to'] = $req->to_location ?? null;
        $booking['to_lat'] = $req->elat ?? null;
        $booking['to_long'] = $req->elon ?? null;

        $booking['flight_no'] = $req->flight_no ?? null;
        $booking['arrival_from'] = $req->arrival_from ?? null;
        $booking['airline'] = $req->airline ?? null;
        $booking['meeting_point'] = $req->meeting_point ?? null;
        $booking['ship_name'] = $req->ship_name ?? null;

        $booking['direction'] = $req->direction ?? null;
        $booking['pickup_date'] = $req->pickup_date ?? null;
        $booking['pickup_time'] = $req->pickup_time ?? null;
        $booking['pickup_datetime'] = Carbon::parse($req->pickup_date.' '.$req->pickup_time);
        if ($req->direction == "2") {
            $booking['return_datetime'] = Carbon::parse($req->return_date.' '.$req->return_time);

            $booking['return_date'] = $req->return_date;
            $booking['return_time'] = $req->return_time;


        }
        $booking['vehicle_type'] = $req->vehicle_type ?? null;
        $booking['passenger'] = (int)$req->passengers ?? null;
        $booking['large_cases'] = (int)$req->large_cases ?? null;
        $booking['small_cases'] = (int)$req->small_cases ?? null;
        $booking['payment_method'] = $req->payment_method ?? null;
        $booking['phone'] = $req->phone ?? null;
        $booking['name'] = $req->name ?? null;
        $booking['email'] = $req->email ?? null;
        $booking['instruction'] = $req->instruction ?? null;
        $booking['fare'] = $req->fare ?? null;

        if ($req->payment_method == "3") {
            session()->forget('booking');
            session(['booking' => $booking]);

            return redirect()->route('payment');
        } else {
            session(['booking_done' => true]);
            $book = Booking::create($booking);

            $details = [
                'id' => $book->id,
                'action' => 'submit',
            ];


            Mail::send('email.booking', get_defined_vars(), function ($message) use($book, $booking) {
                $message->to($book->email, $book->name);
                $message->subject('Booking ID: '.$book->uuid.' boeking gemaakt');
            });
            Mail::send('email.admin.booking', get_defined_vars(), function ($message) use($book, $booking) {
                $message->to(setting('confirmation_email'), 'Amsterdam Taxi Centrale');
                $message->subject('Booking ID: '.$book->uuid.' boeking gemaakt');
            });
            Mail::send('email.admin.booking', get_defined_vars(), function ($message) use($book, $booking) {
                $message->to(setting('secondary_confirmation_email'), 'Amsterdam Taxi Centrale');
                $message->subject('Booking ID: '.$book->uuid.' boeking gemaakt');
            });


            try {
                // $url = "https://gatewayapi.com/rest/mtsms";
                // $api_token = "Ixzp79dkT2qiPI_Ltzt7KEyNCBZN5yAHvWFuCbifbpWICB1qiQxW2_Vr-lhmdiXZ";

                // $recipients = [+31685672263];
                // $json = [
                //     'sender' => 'ATC',
                //     'message' => 'A new booking has been confirmed. Check your email or dashboard for details.',
                //     'recipients' => [],
                // ];
                // foreach ($recipients as $msisdn) {
                //     $json['recipients'][] = ['msisdn' => $msisdn];
                // }

                // $ch = curl_init();
                // curl_setopt($ch,CURLOPT_URL, $url);
                // curl_setopt($ch,CURLOPT_HTTPHEADER, array("Content-Type: application/json"));
                // curl_setopt($ch,CURLOPT_USERPWD, $api_token.":");
                // curl_setopt($ch,CURLOPT_POSTFIELDS, json_encode($json));
                // curl_setopt($ch,CURLOPT_RETURNTRANSFER, true);
                // $result = curl_exec($ch);
                // curl_close($ch);

                $this->sendMessage("A new booking has been confirmed. Check your email or dashboard for details.", "whatsapp:+923069387974");

                return redirect()->route('thankyou');
            } catch (\Exception $e) {
                return redirect()->route('thankyou');
            }
        }
    }

    public function thankYou()
    {
        if (is_null(session('booking_done'))) {
            return redirect()->route('home');
        }

        return view('front.thankyou', get_defined_vars());
    }


}
