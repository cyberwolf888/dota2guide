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
                    <h1>{{ $model->name }}</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- /Banner -->

    <div class="container youplay-news youplay-post">
        <div class="col-md-8">
            <!-- Post Info -->
            <article class="news-one">
                <!-- Post Text -->
                <div class="description">
                    <a href="#" class="angled-img pull-left video-popup">
                        <div class="img">
                            <img src="{{ $model->img }}" alt="">
                        </div>
                    </a>
                </div>
                <!-- /Post Text -->
                <table class="table table-bordered table-hover">
                    <tr>
                        <td>FACTION</td>
                        <td>{{ $model->faction == 1 ? "The Radiant" : "The Dire"}}</td>
                    </tr>
                    <tr>
                        <td>PRIMARY ATTRIBUTE</td>
                        <td>{{ $model->getPrimaryAttribute() }}</td>
                    </tr>
                    <tr>
                        <td>ATTACK TYPE</td>
                        <td>{{ $model->getAttackType() }}</td>
                    </tr>
                    <tr>
                        <td>ROLE(S)</td>
                        <td>@foreach($model->roles as $role) {{ $role->getRole() }}, @endforeach</td>
                    </tr>
                </table>
                <h3>{{ $model->name }} Stats</h3>
                <table class="table table-bordered table-hover">
                    <tr>
                        <td><img src="https://www.dotafire.com/images/icon_str.png"> STR</td>
                        <td>{{ $model->strength }} <span style="font-size: 12px;"> at level 25</span></td>
                    </tr>
                    <tr>
                        <td><img src="https://www.dotafire.com/images/icon_agi.png"> AGI</td>
                        <td>{{ $model->agility }} <span style="font-size: 12px;"> at level 25</span></td>
                    </tr>
                    <tr>
                        <td><img src="https://www.dotafire.com/images/icon_int.png"> INT</td>
                        <td>{{ $model->intelligence }} <span style="font-size: 12px;"> at level 25</span></td>
                    </tr>
                    <tr>
                        <td>HEALTH</td>
                        <td>{{ $model->health }} <span style="font-size: 12px;"> at level 25</span></td>
                    </tr>
                    <tr>
                        <td>MANA</td>
                        <td>{{ $model->mana }} <span style="font-size: 12px;"> at level 25</span></td>
                    </tr>
                    <tr>
                        <td>DAMAGE</td>
                        <td>{{ $model->demage_a }} - {{ $model->demage_b }}</td>
                    </tr>
                    <tr>
                        <td>ARMOR</td>
                        <td>{{ $model->armor }}</td>
                    </tr>
                    <tr>
                        <td>EVASION</td>
                        <td>{{ $model->evasion }}</td>
                    </tr>
                    <tr>
                        <td>MOVEMENT</td>
                        <td>{{ $model->mov_speed }}</td>
                    </tr>
                </table>
            </article>
            <!-- /Post Info -->

            @if(count($model->guide)>0)
            <h3>{{ $model->name }} Guides</h3>
            <ul class="youplay-forum mr-10">
                <li class="header">
                    <ul>
                        <li class="cell-icon"></li>
                        <li class="cell-info" style="cursor: pointer;">Title</li>
                        <li class="cell-topic-count" style="cursor: pointer;">Views</li>
                        <li class="cell-reply-count" style="cursor: pointer;">Subscriber</li>
                        <li class="cell-freshness" style="cursor: pointer;">Created On</li>
                    </ul>
                </li>

                <li class="body">
                    @foreach($model->guide as $guide)
                    <ul data-views="{{ $guide->views }}" data-subscriber="1" data-title="{{ $guide->title }}" data-created="{{ strtotime($guide->created_at) }}">
                        <li class="cell-icon">
                            <i class="fa fa-folder-open-o"></i>
                        </li>
                        <li class="cell-info">
                            <a href="{{ route('home.guide.detail',$guide->id) }}" class="title h4">{{ $guide->title }}</a>
                            <div class="description">
                                Started by:
                                <a href="#">
                                    <img alt="" src="{{ url('assets/profile/'.$guide->user->img) }}" height="15" width="15">{{ $guide->user->name }}
                                </a>
                            </div>
                        </li>
                        <li class="cell-topic-count">{{ $guide->views }}</li>
                        <li class="cell-reply-count">21</li>
                        <li class="cell-freshness">
                            <a href="#">{{ $guide->created_at->diffForHumans() }}</a>
                        </li>
                    </ul>
                    @endforeach

                </li>

            </ul>
            @endif
        </div>
        <div class="col-md-4">
            <div class="block-content p-0">
                @foreach($model->skill as $skill)
                <!-- Single News Block -->
                <div class="row youplay-side-news">
                    <div class="col-xs-3 col-md-4">
                        <a href="#" class="angled-img" data-toggle="modal" data-target="#skillModal" data-href="{{ route('home.skill.detail',$skill->id) }}">
                            <div class="img">
                                <img src="{{ url('assets/skills/'.$skill->img) }}" alt="">
                            </div>
                        </a>
                    </div>
                    <div class="col-xs-9 col-md-8">
                        <h4 class="ellipsis"><a href="" data-toggle="modal" data-target="#skillModal" data-href="{{ route('home.skill.detail',$skill->id) }}">{{ $skill->name }}</a></h4>
                        <span class="price">{!! $skill->descriptions !!}</span>
                    </div>
                </div>
                <!-- /Single News Block -->
                @endforeach
            </div>
        </div>
    </div>
    <!-- Default bootstrap modal example -->
    <div class="modal fade" id="skillModal" tabindex="-1" role="dialog" aria-labelledby="skillModal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" id="x" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Detail Skill</h4>
                </div>
                <div class="modal-body">
                    Loading...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" id="btnClose">Close</button>
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
        $("#skillModal").on("show.bs.modal", function(e) {
            var link = $(e.relatedTarget);
            $(this).find(".modal-body").load(link.attr("data-href"));
        });
        $(document).ready(function () {
            tinysort('li.body>ul',{data:'views',order:'desc'});
        });
    </script>
@endpush