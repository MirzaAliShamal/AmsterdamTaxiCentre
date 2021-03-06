<?php

use Illuminate\Http\Request;
use App\Models\Terminal;
use App\Models\Setting;
use App\Models\Booking;
use App\Models\Faq;
use App\Models\User;
use Carbon\Carbon;

function setting($key) {
    $setting = Setting::pluck('value', 'name');
    return $setting[$key] ?? '';
}

function adminEmail() {
    return User::whereRole('admin')->first()->email;
}

function adminName() {
    return User::whereRole('admin')->first()->name;
}

function airportTerminal() {
    return Terminal::where('type', '1')->get();
}

function cruiseTerminal() {
    return Terminal::where('type', '2')->get();
}

function bookingUUID() {
    $number = mt_rand(10000000, 99999999);
    if (bookingUUIDExists($number)) {
        return bookingUUID();
    }
    return $number;
}

function bookingUUIDExists($number) {
    return Booking::where('uuid', $number)->exists();
}

function faq() {
    return Faq::where('status', 1)->get();
}

function checkOn() {
    $on_time = Carbon::parse(setting('booking_panel_on_time'));
    $off_time = Carbon::parse(setting('booking_panel_off_time'));

    $now = Carbon::now();

    if ($on_time <= $now == $off_time >= $now ) {
        return true;
    } else {
        return false;
    }
}
