@extends('layouts.frontend')

@push('plugin_css')
@endpush

@push('page_css')
@endpush

@section('content')
    <!-- Banner -->
    <section class="youplay-banner banner-top youplay-banner-parallax">
        <div class="image" style="background-image: url('{{ url('assets') }}/frontend/images/dota2-ban-bg.jpg')">
        </div>

        <div class="info">
            <div>
                <div class="container">
                    <h1>Dota 2 <br>Find guide for your hero</h1>
                    <em>"One of the best dota2 guide"</em>
                    <br>
                    <br>
                    <br>
                    <a class="btn btn-lg" href="#!">SEARCH</a>
                </div>
            </div>
        </div>
    </section>
    <!-- /Banner -->

    <!-- Images With Text -->
    <div class="youplay-carousel" data-autoplay="3000">
        @foreach(\App\Models\Heros::orderBy(\DB::raw('rand()'))->limit(10)->get() as $hero)
        <a class="angled-img" href="{{ route('home.hero.detail',$hero->id) }}">
            <div class="img">
                <img class="b-lazy"
                     src="{{ url('assets/frontend/images/loading40.gif') }}"
                     data-src="{{ $hero->img }}"
                     alt="alt-text"
                     height="169"
                />
            </div>
            <div class="over-info">
                <div>
                    <div>
                        <h4>{{ $hero->name }}</h4>
                    </div>
                </div>
            </div>
        </a>
        @endforeach
    </div>
    <!-- /Images With Text -->



    <!-- Popular -->
    <h2 class="container h1">Popular <a href="{{ route('home.heropedia') }}" class="btn pull-right">See More</a></h2>
    <div class="youplay-carousel" data-autoplay="2000">
        @foreach($populer as $row)
        <a class="angled-img" href="{{ route('home.hero.detail',$row->id) }}">
            <div class="img">
                <img class="b-lazy"
                     src="{{ url('assets/frontend/images/loading40.gif') }}"
                     data-src="{{ $row->img }}"
                     alt="alt-text"
                     height="169"
                />
            </div>
            <div class="over-info">
                <div>
                    <div>
                        <h4>{{ $row->name }}</h4>
                        <div class="rating">
                            {{ $row->total_guide }} Guide Found
                        </div>
                    </div>
                </div>
            </div>
        </a>
        @endforeach

        @if(count($populer)<=10)
            @foreach(\App\Models\Heros::orderBy(\DB::raw('rand()'))->limit(10-count($populer))->get() as $row)
                <a class="angled-img" href="{{ route('home.hero.detail',$row->id) }}">
                    <div class="img">
                        <img class="b-lazy"
                             src="{{ url('assets/frontend/images/loading40.gif') }}"
                             data-src="{{ $row->img }}"
                             alt="alt-text"
                             height="169"
                        />
                    </div>
                    <div class="over-info">
                        <div>
                            <div>
                                <h4>{{ $row->name }}</h4>
                                <div class="rating">
                                    0 Guide Found
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            @endforeach
        @endif
    </div>
    <!-- /Popular -->

    <!-- Preorder -->
    <div class="h2"></div>
    <section class="youplay-banner youplay-banner-parallax small">
        <div class="image" style="background-image: url('{{ url('assets') }}/frontend/images/banner-witcher-3.jpg')">
        </div>

        <div class="info container align-center">
            <div>
                <h2>Create Your Guide<br> Lead your favorite hero to win</h2>

                <!-- See countdown init in bottom of the page -->
                <div class="countdown h2" data-end="2017-01-21 12:00" data-timezone="EST"></div>

                <br>
                <br>
                <a class="btn btn-lg" href="{{ url('register') }}">JOIN US</a>
            </div>
        </div>
    </section>
    <!-- /Preorder -->

    <!-- Features -->
    <h2 class="container h1">Why Joining Us</h2>
    <section class="youplay-features container">
        <div class="col-md-3 col-sm-6">
            <a class="feature angled-bg" href="#">
                <i class="fa fa-cog"></i>
                <h3>Awesome</h3>
                <small>We have awesome systems</small>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="feature angled-bg">
                <i class="fa fa-gamepad"></i>
                <h3>Games</h3>
                <small>From gamers to gamers</small>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="feature angled-bg">
                <i class="fa fa-money"></i>
                <h3>Free</h3>
                <small>Our services is FREE!</small>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="feature angled-bg">
                <i class="fa fa-users"></i>
                <h3>Community</h3>
                <small>The largest gaming community</small>
            </div>
        </div>
    </section>
@endsection

@push('plugin_scripts')
@endpush

@push('scripts')
@endpush