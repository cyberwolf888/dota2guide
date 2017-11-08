@extends('layouts.frontend')

@push('plugin_css')
@endpush

@push('page_css')
@endpush

@section('content')
    <!-- Banner -->
    <div class="youplay-banner banner-top youplay-banner-parallax xsmall">
        <div class="image" style="background-image: url('{{ url('assets') }}/frontend/images/banner-blog-bg.jpg')">
        </div>

        <div class="info">
            <div>
                <div class="container">
                    <h1>{{ $model->name }} - {{ $model->cost }}</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- /Banner -->

    <div class="container youplay-news youplay-post">
        <div class="col-md-12">
            <!-- Post Info -->
            <article class="news-one">

                <!-- Post Text -->
                <div class="description">
                    <a href="#" class="angled-img pull-left video-popup">
                        <div class="img">
                            <img src="{{ $model->img }}" alt="">
                        </div>
                    </a>
                    {!! $model->descriptions !!}
                </div>
                <!-- /Post Text -->
            </article>
            <!-- /Post Info -->
        </div>
    </div>

@endsection

@push('plugin_scripts')
@endpush

@push('scripts')
@endpush