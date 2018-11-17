@extends('layouts.frontend')

@push('plugin_css')
@endpush

@push('page_css')
    <style>
        .youplay-search>form select {
            font-size: 2rem;
            padding: 1.5rem 3rem;
        }
    </style>
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

        <form action="" method="post">
            {{ csrf_field() }}
            <div class="row">
                <div class="col-md-12">
                    <p>Hero:</p>
                    <label class="youplay-select">
                        <select name="hero">
                            @foreach(\App\Models\Heros::all() as $row)
                                <option value="{{ $row->id }}">{{ $row->name }}</option>
                            @endforeach
                        </select>
                    </label>
                </div>
            </div>
            <!-- <div class="row">
                <div class="col-md-3">
                    <p>Total Subscriber:</p>
                    <label class="youplay-select">
                        <select name="total_subscriber">
                            <option value="12">Normal</option>
                            <option value="24">Important</option>
                            <option value="35">Very Important</option>
                        </select>
                    </label>
                </div>
                <div class="col-md-3">
                    <p>Total Item:</p>
                    <label class="youplay-select">
                        <select name="total_item">
                            <option value="7">Normal</option>
                            <option value="14">Important</option>
                            <option value="20">Very Important</option>
                        </select>
                    </label>
                </div>
                <div class="col-md-3">
                    <p>Total Cost:</p>
                    <label class="youplay-select">
                        <select name="total_cost">
                            <option value="7">Normal</option>
                            <option value="14">Important</option>
                            <option value="20">Very Important</option>
                        </select>
                    </label>
                </div>
                <div class="col-md-3">
                    <p>Total Views:</p>
                    <label class="youplay-select">
                        <select name="total_views">
                            <option value="9">Normal</option>
                            <option value="18">Important</option>
                            <option value="25">Very Important</option>
                        </select>
                    </label>
                </div>
            </div> -->
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <button type="submit" class="btn btn-lg" style="width: 100%; margin-top: 20px;">SEARCH</button>
                </div>
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