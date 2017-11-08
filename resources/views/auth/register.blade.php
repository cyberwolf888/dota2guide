@extends('layouts.frontend')

@section('content')
<section class="content-wrap full youplay-login">

        <!-- Banner -->
        <div class="youplay-banner banner-top">
            <div class="image" style="background-image: url('{{ url('assets') }}/frontend/images/banner-bg.jpg')"></div>

            <div class="info">
                <div>
                    <div class="container align-center">
                        <div class="youplay-form">
                            <h1>Register</h1>

                            @if ($errors->has('name'))
                                <div class="alert alert-danger" role="alert">
                                    <strong>Oh snap!</strong> {{ $errors->first('name') }}
                                </div>
                            @endif
                            @if ($errors->has('email'))
                                <div class="alert alert-danger" role="alert">
                                    <strong>Oh snap!</strong> {{ $errors->first('email') }}
                                </div>
                            @endif
                            @if ($errors->has('password'))
                                <div class="alert alert-danger" role="alert">
                                    <strong>Oh snap!</strong> {{ $errors->first('password') }}
                                </div>
                            @endif
                            @if ($errors->has('no_hp'))
                                <div class="alert alert-danger" role="alert">
                                    <strong>Oh snap!</strong> {{ $errors->first('no_hp') }}
                                </div>
                            @endif
                            <form method="POST" action="{{ route('register') }}">
                                {{ csrf_field() }}
                                <div class="youplay-input">
                                    <input type="text" name="name" placeholder="Full Name" value="{{ old('name') }}" required>
                                </div>
                                <div class="youplay-input">
                                    <input type="text" name="email" placeholder="Email" value="{{ old('email') }}" required>
                                </div>
                                <div class="youplay-input">
                                    <input type="password" name="password" placeholder="Password">
                                </div>
                                <div class="youplay-input">
                                    <input type="password" name="password_confirmation" placeholder="Confirm Password">
                                </div>
                                <div class="youplay-input">
                                    <input type="text" name="no_hp" placeholder="No Handphone" value="{{ old('no_hp') }}" required>
                                </div>
                                <button class="btn btn-default db">Register</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Banner -->

    </section>

@endsection
