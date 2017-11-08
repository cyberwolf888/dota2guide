
<div class="row">
    <div class="col-md-4">
        <img src="{{ url('assets/skills/'.$model->img) }}">
    </div>
    <div class="col-md-8">
        <h3 style="margin-top: 0px;">{{ $model->name }}</h3>
        <table class="table">
            <tr>
                <td>Casting Method</td><td>{{ $model->getCastingMethod() }}</td>
            </tr>
            @if($model->casting_method == 1)
            <tr>
                <td>Targetting Method</td><td>{{ $model->getTargettingMethod() }}</td>
            </tr>
            <tr>
                <td>Allowed Method</td><td>{{ $model->getAllowedTarget() }}</td>
            </tr>
            <tr>
                <td>Mana Cost</td><td>{{ $model->mana_cost }}</td>
            </tr>
            <tr>
                <td>Cooldown</td><td>{{ $model->cooldown }}</td>
            </tr>
            @endif
        </table>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        {!! $model->descriptions !!}
    </div>
</div>