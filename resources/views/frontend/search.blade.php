@extends('layouts.frontend')

@push('plugin_css')
@endpush

@push('page_css')
@endpush

@section('content')
    <!-- Banner -->
    <div class="youplay-banner youplay-banner-parallax banner-top xsmall">
        <div class="image" style="background-image: url('{{ url('assets') }}/frontend/images/banner-blog-bg.jpg')">
        </div>

        <div class="info">
            <div>
                <div class="container">
                    <h1>Search</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- /Banner -->

    <div class="container youplay-search">

        <form action="">
            <div class="youplay-input">
                <input type="text" name="search" placeholder="Search..." autofocus>
            </div>
        </form>

        <div class="row">
            <div class="col-md-6">
                <h2>New Guide</h2>
                @foreach(\App\Models\Guide::orderBy('created_at','DESC')->limit(5)->get() as $row)
                <!-- Single News -->
                <a href="{{ route('home.guide.detail',$row->id) }}" class="angled-bg">
                    <div class="row">
                        <div class="col-md-3 col-xs-4">
                            <div class="angled-img">
                                <div class="img">
                                    <img src="{{ $row->hero->img }}" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9 col-xs-8">
                            <div class="row">
                                <div class="col-xs-6 col-md-8">
                                    <h4>{{ $row->title }}</h4>
                                    <div class="tags">
                                        <i class="fa fa-user"></i> Started by: {{ $row->user->name }}
                                    </div>
                                </div>
                                <div class="col-xs-6 col-md-4 align-right">
                                    <div class="date">
                                        <i class="fa fa-calendar"></i> {{ $row->created_at->diffForHumans() }}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <!-- /Single News -->
                @endforeach
            </div>
            <div class="col-md-6">
                <h2>Populer Guide</h2>

                @foreach(\App\Models\Guide::orderBy('views','DESC')->limit(5)->get() as $row)
                <!-- Single News -->
                    <a href="{{ route('home.guide.detail',$row->id) }}" class="angled-bg">
                        <div class="row">
                            <div class="col-md-3 col-xs-4">
                                <div class="angled-img">
                                    <div class="img">
                                        <img src="{{ $row->hero->img }}" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9 col-xs-8">
                                <div class="row">
                                    <div class="col-xs-6 col-md-8">
                                        <h4>{{ $row->title }}</h4>
                                        <div class="tags">
                                            <i class="fa fa-user"></i> Started by: {{ $row->user->name }}
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-4 align-right">
                                        <div class="date">
                                            <i class="fa fa-calendar"></i> {{ $row->created_at->diffForHumans() }}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                    <!-- /Single News -->
                @endforeach

            </div>
        </div>


    </div>
@endsection

@push('plugin_scripts')
@endpush

@push('scripts')
@endpush