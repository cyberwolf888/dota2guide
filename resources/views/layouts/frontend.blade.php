<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{{ env('APP_NAME') }}</title>
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- Icon -->
    <link rel="icon" type="image/png" href="{{ url('favicon.ico') }}">
    <!-- Google Fonts -->

    <link href='https://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="{{ url('assets') }}/frontend/bower_components/bootstrap/dist/css/bootstrap.min.css" />

    <!-- FontAwesome -->
    <link rel="stylesheet" type="text/css" href="{{ url('assets') }}/frontend/bower_components/font-awesome/css/font-awesome.min.css" />

    <!-- Owl Carousel -->
    <link rel="stylesheet" type="text/css" href="{{ url('assets') }}/frontend/bower_components/owl.carousel/dist/assets/owl.carousel.min.css" />
    <!-- Youplay -->
    @stack('plugin_css')
    <link rel="stylesheet" type="text/css" href="{{ url('assets') }}/frontend/youplay/css/youplay.min.css" />
    @stack('page_css')

    <!-- Custom Styles -->
    <!-- <link rel="stylesheet" type="text/css" href="{{ url('assets') }}/frontend/css/custom.css" /> -->
    <!-- RTL (uncomment this to enable RTL support) -->
    <!-- <link rel="stylesheet" type="text/css" href="{{ url('assets') }}/frontend/youplay/css/youplay-rtl.css" /> -->
    <style>
        .b-lazy {
            -webkit-transition: opacity 500ms ease-in-out;
            -moz-transition: opacity 500ms ease-in-out;
            -o-transition: opacity 500ms ease-in-out;
            transition: opacity 500ms ease-in-out;
            max-width: 100%;
            opacity: 0;
        }
        .b-lazy.b-loaded {
            opacity: 1;
        }
    </style>
</head>


<body>

<!-- Preloader -->
<div class="page-preloader preloader-wrapp">
    <img src="{{ url('assets') }}/backend/img/logo.png" alt="">
    <div class="preloader"></div>
</div>
<!-- /Preloader -->

<!-- Navbar -->
<nav class="navbar-youplay navbar navbar-default navbar-fixed-top ">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="off-canvas" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{{ route('home') }}">
                <img src="{{ url('assets') }}/backend/img/logo.png" alt="">
            </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li>
                    <a href="{{ route('home.heropedia') }}" >
                        Heros <span class="label">Heropedia</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('home.itempedia') }}" >
                        Items <span class="label">Itempedia</span>
                    </a>
                </li>
                <li class="dropdown dropdown-hover ">
                    <a href="#!" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        Guide <span class="caret"></span> <span class="label">Dota2 Item Build</span>
                    </a>
                    <div class="dropdown-menu">
                        <ul role="menu">
                            <li>
                                <a href="{{ route('member.guide.create') }}">Create New Guide</a>
                            </li>
                            <li>
                                <a href="{{ route('home.search') }}">Find a Guide</a>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown dropdown-hover">
                    <a href="#!" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        {{ Auth::check() ? Auth::user()->name :'Guest' }} <span class="caret"></span> <span class="label">it is you</span>
                    </a>
                    <div class="dropdown-menu">
                        @if(Auth::check())
                            <ul role="menu">
                                @can('member-access')
                                <li>
                                    <a href="{{ route('member.profile.manage') }}">My Profile</a>
                                </li>
                                <li>
                                    <a href="{{ route('member.guide.manage') }}">My Guide <span class="badge pull-right bg-default">{{ \App\Models\Guide::where('user_id',Auth::user()->id)->count() }}</span></a>
                                </li>
                                <li class="divider"></li>
                                @endcan
                                <li>
                                    <a href="#" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">Log Out</a>
                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        {{ csrf_field() }}
                                    </form>
                                </li>
                            </ul>
                        @else
                            <ul role="menu">
                                <li>
                                    <a href="{{ url('login') }}">Login</a>
                                </li>
                                <li>
                                    <a href="{{ url('register') }}">Register</a>
                                </li>
                            </ul>
                        @endif
                    </div>
                </li>
                <li>
                    <a class="search-toggle" href="{{ route('home.search') }}">
                        <i class="fa fa-search"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- /Navbar -->


<!-- Main Content -->
<section class="content-wrap">
    @yield('content')


    <!-- Footer -->
    <footer class="youplay-footer-parallax">
        <div class="wrapper b-lazy" data-src="{{ url('assets') }}/frontend/images/footer-bg.jpg">

            <!-- Social Buttons -->
            <div class="social">
                <div class="container">
                    <h3>Connect socially with <strong>Us</strong></h3>

                    <div class="social-icons">
                        <div class="social-icon">
                            <a href="#!">
                                <i class="fa fa-facebook-square"></i>
                                <span>Like on Facebook</span>
                            </a>
                        </div>
                        <div class="social-icon">
                            <a href="#!">
                                <i class="fa fa-twitter-square"></i>
                                <span>Follow on Twitter</span>
                            </a>
                        </div>
                        <div class="social-icon">
                            <a href="#!">
                                <i class="fa fa-twitch"></i>
                                <span>Watch on Twitch</span>
                            </a>
                        </div>
                        <div class="social-icon">
                            <a href="#!">
                                <i class="fa fa-youtube-square"></i>
                                <span>Watch on Youtube</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div class="side-block">
                            <p>Subscribe to get lastest News:</p>
                            <form action="{{ route('home.guest_subscribe') }}" method="post">
                                {{ csrf_field() }}
                                <div class="youplay-input">
                                    <input type="text" name="subscribe_email" placeholder="enter your email address">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Social Buttons -->

            <!-- Copyright -->
            <div class="copyright">
                <div class="container">
                    <strong>STIKOM Bali</strong> &copy; {{ date('Y') }}. All rights reserved
                </div>
            </div>
            <!-- /Copyright -->

        </div>
    </footer>
    <!-- /Footer -->

</section>
<!-- /Main Content -->

<!-- Search Block -->
<div class="search-block">
    <a href="#!" class="search-toggle glyphicon glyphicon-remove"></a>
    <form action="#">
        <div class="youplay-input">
            <input type="text" name="search" placeholder="Search...">
        </div>
    </form>
</div>
<!-- /Search Block -->
@if ($errors->has('subscribe_email'))
    <div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="errorModal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" id="x" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Subscribe Alert</h4>
                </div>
                <div class="modal-body">
                    <h3>{{ $errors->first('subscribe_email') }}</h3>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" id="btnClose">Close</button>
                </div>
            </div>
        </div>
    </div>
@endif

@if(session('success') !== null)
    <div class="modal fade" id="successModal" tabindex="-1" role="dialog" aria-labelledby="successModal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" id="x" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Subscribe Success</h4>
                </div>
                <div class="modal-body">
                    <h3 style="color: green;">{{ session('success') }}</h3>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" id="btnClose">Close</button>
                </div>
            </div>
        </div>
    </div>
@endif
<!-- jQuery -->
<script type="text/javascript" src="{{ url('assets') }}/frontend/bower_components/jquery/dist/jquery.min.js"></script>

<!-- Hexagon Progress -->
<script type="text/javascript" src="{{ url('assets') }}/frontend/bower_components/HexagonProgress/jquery.hexagonprogress.min.js"></script>


<!-- Bootstrap -->
<script type="text/javascript" src="{{ url('assets') }}/frontend/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Jarallax -->
<script type="text/javascript" src="{{ url('assets') }}/frontend/bower_components/jarallax/dist/jarallax.min.js"></script>

<!-- Smooth Scroll -->
<script type="text/javascript" src="{{ url('assets') }}/frontend/bower_components/smoothscroll-for-websites/SmoothScroll.js"></script>

<!-- Owl Carousel -->
<script type="text/javascript" src="{{ url('assets') }}/frontend/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Blazy -->
<script type="text/javascript" src="{{ url('assets') }}/frontend/bower_components/blazy/blazy.min.js"></script>

@stack('plugin_scripts')
<!-- Moment.js -->
<script type="text/javascript" src="{{ url('assets') }}/frontend/bower_components/moment/min/moment.min.js"></script>
<script type="text/javascript" src="{{ url('assets') }}/frontend/bower_components/moment-timezone/builds/moment-timezone-with-data.min.js"></script>
<!-- Youplay -->
<script type="text/javascript" src="{{ url('assets') }}/frontend/youplay/js/youplay.min.js"></script>

@stack('scripts')
<!-- init youplay -->
<script>
    if(typeof youplay !== 'undefined') {
        youplay.init({
            parallax:         true,
            navbarSmall:      false,
            fadeBetweenPages: true
        });
    }
</script>
<script>
    ;(function() {
        var bLazy = new Blazy({
            success: function(element){
                setTimeout(function(){
                    var parent = element.parentNode;
                    parent.className += " b-loaded";
                }, 200);
            }
        });
    })();
    @if ($errors->has('subscribe_email'))
    $(document).ready(function () {
        $("#errorModal").modal('show');
    });
    @endif
    @if(session('success') !== null)
    $(document).ready(function () {
        $("#successModal").modal('show');
    });
    @endif
</script>
</body>
</html>
