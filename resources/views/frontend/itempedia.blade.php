@extends('layouts.frontend')

@push('plugin_css')
@endpush

@push('page_css')
@endpush

@section('content')
    <!-- Banner -->
    <div class="youplay-banner banner-top youplay-banner-parallax small">
        <div class="image" style="background-image: url('{{ url('assets') }}/frontend/images/banner-blog-bg.jpg')">
        </div>

        <div class="info">
            <div>
                <div class="container">
                    <h3>Itempedia</h3>
                </div>
            </div>
        </div>
    </div>
    <!-- /Banner -->

    <div class="container youplay-news news-grid">
        <div class="youplay-input">
            <input type="text" name="search" placeholder="Search..." autofocus="" id="txt_cari">
        </div>
        <!-- News List -->
        <div class="row vertical-gutter multi-columns-row result">

        @foreach($model as $row)
            <!-- Single News Block -->
                <div class="col-lg-3 col-md-3 col-sm-6">
                    <div class="news-one">
                        <a href="{{ route('home.item.detail',$row->id) }}" class="angled-img">
                            <div class="img img-offset">
                                <img class="b-lazy"
                                     src="{{ url('assets/frontend/images/loading40.gif') }}"
                                     data-src="{{ $row->img }}"
                                     alt="alt-text"
                                     style="max-height: 148px !important;"
                                />
                            </div>
                            <div class="bottom-info align-center">
                                <h3>{{ $row->name }}</h3>
                            </div>
                        </a>
                    </div>
                </div>
                <!-- /Single News Block -->
            @endforeach

        </div>
        <!-- /News List -->
        {{ $model->links() }}
    </div>
@endsection

@push('plugin_scripts')
@endpush

@push('scripts')
    <script>
        $.xhrPool = [];
        $.xhrPool.abortAll = function() {
            $(this).each(function(idx, jqXHR) {
                jqXHR.abort();
            });
            $.xhrPool.length = 0
        };

        $("#txt_cari").keyup(function () {
            var q = $(this).val();
            if(q != ""){
                $.xhrPool.abortAll();
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    beforeSend: function(jqXHR) {
                        $.xhrPool.push(jqXHR);
                    },
                    complete: function(jqXHR) {
                        var index = $.xhrPool.indexOf(jqXHR);
                        if (index > -1) {
                            $.xhrPool.splice(index, 1);
                        }
                    }
                });
                $.ajax({
                    url: '<?= route('home.itempedia.search') ?>',
                    type: 'POST',
                    data: {q: q},
                    dataType: "html",
                    success: function (data) {
                        $(".result").empty().html(data);
                    }
                });
            }else{
                location.reload();
            }
        });
    </script>
@endpush