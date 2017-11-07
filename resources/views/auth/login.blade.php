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
                            <h1>Login</h1>

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
                            <form method="POST" action="{{ url('/login') }}">
                                {{ csrf_field() }}
                                <div class="youplay-input">
                                    <input type="text" name="email" placeholder="Email" value="{{ old('email') }}" required>
                                </div>
                                <div class="youplay-input">
                                    <input type="password" name="password" placeholder="Password">
                                </div>
                                <button class="btn btn-default db">Login</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Banner -->

    </section>
@endsection

