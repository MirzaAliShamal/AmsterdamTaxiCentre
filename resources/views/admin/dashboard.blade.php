@extends('layouts.admin')
@section('title', 'Dashboard')
@section('nav-title', 'Dashboard')
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6">
            <a href="{{ route('admin.terminal.list') }}">
                <div class="card card-stats">
                    <div class="card-header card-header-warning card-header-icon">
                        <div class="card-icon"><i class="material-icons">category</i></div>
                        <p class="card-category">Terminals</p>
                        <h3 class="card-title">{{ $terminalCount }}</h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats"><i class="material-icons">category</i> Total # of terminals</div>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6">
            <a href="{{ route('admin.booking.list', 'completed') }}">
                <div class="card card-stats">
                    <div class="card-header card-header-success card-header-icon">
                        <div class="card-icon"><i class="material-icons">fact_check</i></div>
                        <p class="card-category">All Bookings</p>
                        <h3 class="card-title">{{ $completedBooking }}</h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats"><i class="material-icons">fact_check</i> Total # of bookings</div>
                    </div>
                </div>
            </a>
        </div>
        </div>
    </div>
</div>
@endsection
