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
                    <h1>{{ $model->title }}</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- /Banner -->

    <div class="container youplay-news youplay-post">

        <div class="col-md-9">
            <!-- Post Info -->
            <article class="news-one">

                <!-- Post Text -->
                <div class="description">
                    <p>
                        {!! $model->description !!}
                    </p>
                </div>
                <!-- /Post Text -->

                <!-- Review Rating -->
                <div class="youplay-review-rating">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="youplay-hexagon-rating youplay-hexagon-rating-ready" data-max="10" title="9.1 out of 10" style="width: 120px; height: 120px;"><canvas width="120" height="120"></canvas><span>9.1</span>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <h3 class="mt-0">Good</h3>
                            <ul>
                                <li><i class="fa fa-plus-circle"></i> Incredible atmosphere</li>
                                <li><i class="fa fa-plus-circle"></i> Fast, tactical combat</li>
                                <li><i class="fa fa-plus-circle"></i> Multiplayer with friends</li>
                                <li><i class="fa fa-plus-circle"></i> Creature/Boss design</li>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <h3 class="mt-0">Bad</h3>
                            <ul>
                                <li><i class="fa fa-minus-circle"></i> Aimlessness in goals</li>
                                <li><i class="fa fa-minus-circle"></i> Lack of play style choice</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /Review Rating -->

                <!-- Post Tags -->
                <div class="tags">
                    <i class="fa fa-tags"></i>  <a href="#">Bloodborne</a>, <a href="#">first try</a>, <a href="#">first boss problem</a>, <a href="#">newbie game</a>
                </div>
                <!-- /Post Tags -->

                <!-- Post Meta -->
                <div class="meta">
                    <div class="item">
                        <i class="fa fa-user meta-icon"></i>
                        Author <a href="#!">nK</a>
                    </div>
                    <div class="item">
                        <i class="fa fa-calendar meta-icon"></i>
                        Published <a href="#!">Today</a>
                    </div>
                    <div class="item">
                        <i class="fa fa-bookmark meta-icon"></i>
                        Categories <a href="#!">First Try</a>
                    </div>
                    <div class="item">
                        <i class="fa fa-eye meta-icon"></i>
                        Views 384
                    </div>
                    <div class="item">
                        <a href="#"><i class="fa fa-heart"></i> 27</a>
                    </div>
                </div>
                <!-- /Post Meta -->

                <!-- Post Share -->
                <div class="btn-group social-list social-likes social-likes_visible" data-counters="no">
                    <span class="btn btn-default social-likes__widget social-likes__widget_facebook" title="Share link on Facebook"><span class="social-likes__button social-likes__button_facebook"><span class="social-likes__icon social-likes__icon_facebook"></span></span></span>
                    <span class="btn btn-default social-likes__widget social-likes__widget_twitter" title="Share link on Twitter"><span class="social-likes__button social-likes__button_twitter"><span class="social-likes__icon social-likes__icon_twitter"></span></span></span>
                    <span class="btn btn-default social-likes__widget social-likes__widget_plusone" title="Share link on Google+"><span class="social-likes__button social-likes__button_plusone"><span class="social-likes__icon social-likes__icon_plusone"></span></span></span>
                    <span class="btn btn-default social-likes__widget social-likes__widget_pinterest" title="Share image on Pinterest" data-media=""><span class="social-likes__button social-likes__button_pinterest"><span class="social-likes__icon social-likes__icon_pinterest"></span></span></span>
                    <span class="btn btn-default social-likes__widget social-likes__widget_vkontakte" title="Share link on VK"><span class="social-likes__button social-likes__button_vkontakte"><span class="social-likes__icon social-likes__icon_vkontakte"></span></span></span>
                </div>
                <!-- /Post Share -->
            </article>
            <!-- /Post Info -->


        </div>

        <!-- Right Side -->
        <div class="col-md-3">

            <!-- Side Categories -->
            <div class="side-block">
                <h4 class="block-title">Guide</h4>
                <div class="block-content p-0">
                    <!-- Single News Block -->
                    <div class="row youplay-side-news">
                        <div class="col-xs-3 col-md-4">
                            <a href="#" class="angled-img">
                                <div class="img">
                                    <img src="{{ $model->hero->img }}" alt="">
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-9 col-md-8">
                            <h4 class="ellipsis"><a href="#" title="Bloodborne - First Try!">{{ $model->hero->name }}</a></h4>
                            <span class="date"><i class="fa fa-calendar"></i> {{ $model->created_at->diffForHumans() }}</span>
                        </div>
                    </div>
                    <!-- /Single News Block -->
                </div>
            </div>
            <!-- /Side Categories -->

            <!-- Side Popular News -->
            <div class="side-block">
                <h4 class="block-title">Author</h4>
                <div class="block-content p-0">
                    <!-- Single News Block -->
                    <div class="row youplay-side-news">
                        <div class="col-xs-3 col-md-4">
                            <a href="#" class="angled-img">
                                <div class="img">
                                    <img src="{{ url('assets/profile/'.$model->user->img) }}" alt="">
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-9 col-md-8">
                            <h4 class="ellipsis"><a href="#" title="Bloodborne - First Try!">{{ $model->user->name }}</a></h4>
                            <span class="date"><i class="fa fa-calendar"></i> {{ $model->user->created_at->diffForHumans() }}</span>
                        </div>
                    </div>
                    <!-- /Single News Block -->
                </div>
            </div>
            <!-- /Side Popular News -->

        </div>
        <!-- /Right Side -->

    </div>

@endsection

@push('plugin_scripts')
@endpush

@push('scripts')
@endpush