@extends('layouts.app')

@section('content')
<script>getLocation();</script>
<nav class="navbar navbar-expand-md navbar-light navbar-laravel">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Shops') }}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                        <li class="nav-item active">
                     <a class="nav-link" href="{!! url('/home') !!}" >Nearbye Shops</a>
                            </li>
                            <li class="nav-item active">
                     <a class="nav-link" href="{!! url('preferred-shops') !!}" active>Preferred Shops</a>
                            </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#" id="result"></a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#">{{Auth::user()->email}}</a>
                        </li>
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">
        <div class="row">
        @if(isset($preferredShops))
        @foreach ($preferredShops as $shop)
        <div class="col-md-4">
        <div class="card">
        <h5 class="card-title ">{{$shop->shop_name}}</h5>
  <img class="card-img-top" src="https://via.placeholder.com/150">
  <div class="card-body">

  <a href="#" class="btn btn-success" onclick="deleteShop({{Auth::id().','.$shop->shop_id}});">Delete</a>
  </div>
</div>
</div>


        @endforeach
        
        @endif
        </div>
  
        
        </div>

@endsection
