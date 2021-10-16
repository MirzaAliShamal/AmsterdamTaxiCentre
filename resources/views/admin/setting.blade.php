@extends('layouts.admin')
@section('title', 'CMS')
@section('nav-title', 'CMS')
@section('content')

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <form action="{{ route('admin.setting.save') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="card ">
                    <div class="card-header card-header-rose card-header-icon">
                        <div class="card-icon">
                            <i class="material-icons">settings</i>
                        </div>
                        <h5 class="card-title">Settings</h5>
                    </div>
                    <div class="card-body ">
                    	<div class="row">
                            <div class="col-md-12">
                    		    <h4 style="font-weight:bold;">Booking Panel On/Off</h4>
                    		</div>
                    		<div class="col-md-6">
                    			<div class="form-group">
                    				<label for="booking_panel_on_time">On Time</label>
                                    <input type="text" onkeydown="return false;" class="form-control timepicker" name="booking_panel_on_time" id="booking_panel_on_time" value="{{ setting('booking_panel_on_time') }}" autocomplete="off">
                    			</div>
                    		</div>
                            <div class="col-md-6">
                    			<div class="form-group">
                    				<label for="booking_panel_off_time">Off Time</label>
                                    <input type="text" onkeydown="return false;" class="form-control timepicker" name="booking_panel_off_time" id="booking_panel_off_time" value="{{ setting('booking_panel_off_time') }}" autocomplete="off">
                    			</div>
                    		</div>

                    	    <div class="col-md-12">
                                <hr>
                    		    <h4 style="font-weight:bold;">Bus(8 person) Prices</h4>
                    		</div>
                    		<div class="col-md-6">
                    			<div class="form-group">
                    				<label for="fare_rate">Per KM</label>
                                    <input type="text" class="form-control" name="bus_per_km" id="bus_per_km" value="{{ setting('bus_per_km') }}" autocomplete="off">
                    			</div>
                    		</div>
                            <div class="col-md-6">
                    			<div class="form-group">
                    				<label for="base_fare">Per Minute</label>
                                    <input type="text" class="form-control" name="bus_per_minute" id="bus_per_minute" value="{{ setting('bus_per_minute') }}" autocomplete="off">
                    			</div>
                    		</div>



                    		<div class="col-md-12">
                    		    <hr>
                    		    <h4 style="font-weight:bold;">Sedan and Stationwagen Prices</h4>
                    		</div>

                    		<div class="col-md-6">
                    			<div class="form-group">
                    				<label for="fare_rate">Per KM</label>
                                    <input type="text" class="form-control" name="sedan_per_km" id="sedan_per_km" value="{{ setting('sedan_per_km') }}" autocomplete="off">
                    			</div>
                    		</div>
                            <div class="col-md-6">
                    			<div class="form-group">
                    				<label for="base_fare">Per Minute</label>
                                    <input type="text" class="form-control" name="sedan_per_minute" id="sedan_per_minute" value="{{ setting('sedan_per_minute') }}" autocomplete="off">
                    			</div>
                    		</div>
                    		<div class="col-md-12">
                    		    <hr>
                    		</div>

                            <div class="col-md-6">
                    			<div class="form-group">
                    				<label for="miles_limit">Email addrees (Get order confirmation)</label>
                                    <input type="text" class="form-control" name="confirmation_email" id="confirmation_email" value="{{ setting('confirmation_email') }}" autocomplete="off">
                    			</div>
                    		</div>
                    		<div class="col-md-6">
                    			<div class="form-group">
                    				<label for="miles_limit">Secondary Email addrees (Get order confirmation)</label>
                                    <input type="text" class="form-control" name="secondary_confirmation_email" id="secondary_confirmation_email" value="{{ setting('secondary_confirmation_email') }}" autocomplete="off">
                    			</div>
                    		</div>
                    	</div>
                    </div>

                    <div class="card-footer">
                        <button type="submit" class="btn btn-rose">Save Changes</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
