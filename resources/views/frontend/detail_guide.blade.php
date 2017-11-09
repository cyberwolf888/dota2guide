@extends('layouts.frontend')

@push('plugin_css')
@endpush

@push('page_css')
<style type="text/css">
	.item_detail{
		margin-bottom: 5px;
	}
	.popover-title{
		background-color: #080325 !important;
	}
</style>
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
                        <div class="col-md-6">
                            <h3 class="mt-0">Early Game Items</h3>
                            <ul>
                            	@foreach($model->detail as $detail)
                            		@if($detail->tab == 1)
                                	<li class="item_detail" 
                                		data-toggle="popover"
                                        data-html="true"
                                        data-trigger="hover"
                                        data-placement="left"
                                        title="{{ $detail->item->name }}"
                                        data-content="{{ $detail->item->descriptions }}">
                                		<img src="{{ $detail->item->img }}" height="32" width="40"> {{ $detail->item->name }}
                                	</li>
                                	@endif
                                @endforeach
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <h3 class="mt-0">Core Items</h3>
                            <ul>
                                @foreach($model->detail as $detail)
                            		@if($detail->tab == 2)
                                	<li class="item_detail" 
                                		data-toggle="popover"
                                        data-html="true"
                                        data-trigger="hover"
                                        data-placement="left"
                                        title="{{ $detail->item->name }}"
                                        data-content="{{ $detail->item->descriptions }}">
                                		<img src="{{ $detail->item->img }}" height="32" width="40"> {{ $detail->item->name }}
                                	</li>
                                	@endif
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="mt-0">Late Game Items</h3>
                            <ul>
                                @foreach($model->detail as $detail)
                            		@if($detail->tab == 3)
                                	<li class="item_detail" 
                                		data-toggle="popover"
                                        data-html="true"
                                        data-trigger="hover"
                                        data-placement="left"
                                        title="{{ $detail->item->name }}"
                                        data-content="{{ $detail->item->descriptions }}">
                                		<img src="{{ $detail->item->img }}" height="32" width="40"> {{ $detail->item->name }}
                                	</li>
                                	@endif
                                @endforeach
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <h3 class="mt-0">Extra Items</h3>
                            <ul>
                                @foreach($model->detail as $detail)
                            		@if($detail->tab == 4)
                                	<li class="item_detail" 
                                		data-toggle="popover"
                                        data-html="true"
                                        data-trigger="hover"
                                        data-placement="left"
                                        title="{{ $detail->item->name }}"
                                        data-content="{{ $detail->item->descriptions }}">
                                		<img src="{{ $detail->item->img }}" height="32" width="40"> {{ $detail->item->name }}
                                	</li>
                                	@endif
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /Review Rating -->

                <!-- Post Tags -->
                <div class="tags">
                    <i class="fa fa-tags"></i>  <a href="#">{{ $model->hero->name }}</a>, <a href="#">Item build</a>, <a href="#">Dota Guide</a>
                </div>
                <!-- /Post Tags -->

                <!-- Post Meta -->
                <div class="meta">
                    <div class="item">
                        <i class="fa fa-user meta-icon"></i>
                        Author <a href="#!">{{ $model->user->name }}</a>
                    </div>
                    <div class="item">
                        <i class="fa fa-calendar meta-icon"></i>
                        Published <a href="#!">{{ $model->created_at->diffForHumans() }}</a>
                    </div>
                    <div class="item">
                        <i class="fa fa-bookmark meta-icon"></i>
                        Hero <a href="#!">{{ $model->hero->name }}</a>
                    </div>
                    <div class="item">
                        <i class="fa fa-eye meta-icon"></i>
                        Views {{ $model->views }}
                    </div>
                    <div class="item">
                        <a href="#"><i class="fa fa-heart"></i> {{ count($model->subscribe) }}</a>
                    </div>
                </div>
                <!-- /Post Meta -->

            </article>
            <!-- /Post Info -->


        </div>

        <!-- Right Side -->
        <div class="col-md-3">
            <center>
                @if(Auth::check())
                    @if(Auth::user()->isSubscribe($model->id))
                        <a href="{{ route('home.unsubscribe',$model->id) }}" class="btn btn-lg">UNSUBSCRIBE</a>
                    @else
                        <a href="{{ route('home.subscribe',$model->id) }}" class="btn btn-lg active">SUBSCRIBE</a>
                    @endif
                @else
                    <a href="{{ route('home.subscribe',$model->id) }}" class="btn btn-lg active">SUBSCRIBE</a>
                @endif
            </center>
            <br><br>
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
<script type="text/javascript">
	$('[data-toggle="popover"]').popover();
</script>
@endpush