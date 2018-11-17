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
                        {!! Form::select('hero', \App\Models\Heros::all()->pluck('name','id'), $req['hero'], ['id'=>'hero']) !!}
                    </label>
                </div>
            </div>
            {{-- <div class="row">
                <div class="col-md-3">
                    <p>Total Subscriber:</p>
                    <label class="youplay-select">
                        {!! Form::select('total_subscriber', [12=>'Normal',24=>'Important',35=>'Very Important'], $req['total_subscriber'], ['id'=>'total_subscriber']) !!}
                    </label>
                </div>
                <div class="col-md-3">
                    <p>Total Item:</p>
                    <label class="youplay-select">
                        {!! Form::select('total_item', [7=>'Normal',14=>'Important',20=>'Very Important'], $req['total_item'], ['id'=>'total_item']) !!}
                    </label>
                </div>
                <div class="col-md-3">
                    <p>Total Cost:</p>
                    <label class="youplay-select">
                        {!! Form::select('total_cost', [7=>'Normal',14=>'Important',20=>'Very Important'], $req['total_cost'], ['id'=>'total_cost']) !!}
                    </label>
                </div>
                <div class="col-md-3">
                    <p>Total Views:</p>
                    <label class="youplay-select">
                        {!! Form::select('total_views', [9=>'Normal',18=>'Important',25=>'Very Important'], $req['total_views'], ['id'=>'total_views']) !!}
                    </label>
                </div>
            </div> --}}
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <button type="submit" class="btn btn-lg" style="width: 100%; margin-top: 20px;">SEARCH</button>
                </div>
            </div>

        </form>

        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <h2>Search Result</h2>
                <div id="result">
                @foreach($model as $row)
                <!-- Single News -->
                    <a href="{{ route('home.guide.detail',$row->id) }}" class="angled-bg" data-score="{{ $row->total_score }}">
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
                                        <div class="date">
                                            <i class="fa fa-tachometer"></i> Score {{ number_format($row->total_score,2,'.','.') }}
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


    </div>
@endsection

@push('plugin_scripts')
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tinysort/2.3.6/tinysort.min.js"></script>
@endpush

@push('scripts')
    <script>
        $(document).ready(function () {
            tinysort('div#result>a',{data:'score',order:'desc'});
        });
    </script>
@endpush