<div class="sidebar" data-color="rose" data-background-color="black" data-image="{{ asset('admin_theme') }}/assets/img/sidebar-3.jpg">
    <div class="logo">
        <a href="{{ route('home') }}" target="_blank" class="simple-text logo-mini"><img src="{{ asset('favicon.png') }}" width="25px" alt=""></a>
        <a href="{{ route('home') }}" target="_blank" class="simple-text logo-normal">
            <img src="{{ asset('theme/logo.svg') }}" class="img-fluid" width="100px" alt="">
        </a>
    </div>
    <div class="sidebar-wrapper">
        <div class="user">
            <div class="photo">
                <img src="{{ asset('default.png') }}" />
            </div>
            <div class="user-info">
                <a data-toggle="collapse" href="#collapseExample" class="username">
                    <span>{{ auth()->user()->name }} <b class="caret"></b></span>
                </a>
                <div class="collapse @routeis('admin.profile') show @endrouteis" id="collapseExample">
                    <ul class="nav">
                        <li class="nav-item @routeis('admin.profile') active @endrouteis">
                            <a class="nav-link" href="{{ route('admin.profile') }}">
                                <span class="sidebar-mini"> EP </span>
                                <span class="sidebar-normal"> Edit Profile </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <ul class="nav">
            <li class="nav-item @routeis('admin.dashboard') active @endrouteis">
                <a class="nav-link" href="{{ route('admin.dashboard') }}">
                    <i class="material-icons">dashboard</i>
                    <p> Dashboard </p>
                </a>
            </li>
            {{-- Terminals --}}

            <li class="nav-item @routeis('admin.terminal.list') active @endrouteis">
                <a class="nav-link" href="{{ route('admin.terminal.list') }}">
                    <i class="material-icons">map</i>
                    <p> Terminals </p>
                </a>
            </li>
            {{-- Booking --}}
            <li class="nav-item @routeis('admin.booking.*') active @endrouteis">
                <a class="nav-link" href="{{ route('admin.booking.list') }}">
                    <i class="material-icons">toc</i>
                    <p> Bookings </p>
                </a>
            </li>



            <li class="nav-item @routeis('admin.setting') active @endrouteis">
                <a class="nav-link" href="{{ route('admin.setting') }}">
                    <i class="material-icons">settings</i>
                    <p> Settings </p>
                </a>
            </li>

            {{-- Logout --}}
            <li class="nav-item">
                <a class="nav-link" href="javascript:;" onclick="document.getElementById('logout-form').submit()">
                    <form id="logout-form" class="d-none" method="post" action="{{ route('logout') }}">@csrf</form>
                    <i class="material-icons">logout</i>
                    <p> Logout </p>
                </a>
            </li>
        </ul>
    </div>
</div>
