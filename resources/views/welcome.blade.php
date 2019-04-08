@extends('layouts.app')

@section('content')

@if (Route::has('login'))
                <div class="container home-div" >
                    @auth
                        <a class="btn btn-danger btn-lg" href="{{ url('/home') }}">Home</a>
                    @else
                    <div class="card">
                     <div class="card-body">
                     <a  class="btn btn-danger btn-lg" href="{{ route('login') }}">Login</a>
                    
                     @if (Route::has('register'))
                            <a   class="btn btn-danger btn-lg" href="{{ route('register') }}">Register</a>
                        @endif

                     </div>
                </div>
                      

                    @endauth
                </div>
            @endif
@endsection

