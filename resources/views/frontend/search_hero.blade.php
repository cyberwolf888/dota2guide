@foreach($model as $row)
    <!-- Single News Block -->
    <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="news-one">
            <a href="{{ route('home.hero.detail',$row->id) }}" class="angled-img">
                <div class="img img-offset">
                    <img class="b-lazy"
                         src="{{ $row->img }}"
                         alt="alt-text"
                         style="max-height: 148px !important;"
                    />
                </div>
                <div class="bottom-info align-center">
                    <h3>{{ $row->name }}</h3>
                    <span class="date"><i class="fa fa-book"></i> {{ count($row->guide) }} Guide</span>
                </div>
            </a>
        </div>
    </div>
    <!-- /Single News Block -->
@endforeach