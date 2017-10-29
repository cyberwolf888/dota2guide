@extends('layouts.backend')

@push('plugin_css')
    <link href="{{ url('assets') }}/backend/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css" />
    <link href="{{ url('assets') }}/backend/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
    <link href="{{ url('assets') }}/backend/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
@endpush

@push('page_css')
@endpush

@section('content')
    <!-- BEGIN PAGE HEAD-->
    <div class="page-head">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1>Heros
                <small>Manage</small>
            </h1>
        </div>
        <!-- END PAGE TITLE -->
    </div>
    <!-- END PAGE HEAD-->
    <!-- BEGIN PAGE BREADCRUMB -->
    <ul class="page-breadcrumb breadcrumb">
        <li>
            <a href="{{ route('admin.dashboard') }}">Home</a>
            <i class="fa fa-circle"></i>
        </li>
        <li>
            <a href="{{ route('admin.hero.manage') }}">Profile</a>
            <i class="fa fa-circle"></i>
        </li>
        <li>
            <span class="active">Form</span>
        </li>
    </ul>
    <!-- END PAGE BREADCRUMB -->
    <!-- BEGIN PAGE BASE CONTENT -->
    {!! Form::open(['route' => isset($update) ? ['admin.hero.update',$model->id]: 'admin.hero.store', 'files' => true]) !!}
    <div class="row">
        <div class="col-md-6 ">

            <!-- BEGIN SAMPLE FORM PORTLET-->
            <div class="portlet light bordered">

                <div class="portlet-title">
                    <div class="caption font-red-sunglo">
                        <i class="icon-settings font-red-sunglo"></i>
                        <span class="caption-subject bold uppercase"> Basic Info</span>
                    </div>
                </div>

                <div class="portlet-body form">

                    <div class="form-body">
                        @if (count($errors) > 0)
                            <div class="alert alert-block alert-danger fade in">
                                <button type="button" class="close" data-dismiss="alert"></button>
                                <h4 class="alert-heading">Ooppss ada error.</h4>
                                @foreach ($errors->all() as $error)
                                    <p><i class="fa fa-close font-red-mint"></i>&nbsp;{{ $error }}</p>
                                @endforeach
                            </div>
                        @endif

                        <div class="form-group last">
                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                    @if($model->img == null)
                                        <img src="{{ url('assets') }}/backend/global/img/no_image.png" alt="" />
                                    @else
                                        <img src="{{$model->img }}" alt="" />
                                    @endif
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"> </div>
                                <div>
                                            <span class="btn default btn-file">
                                                <span class="fileinput-new"> Select image </span>
                                                <span class="fileinput-exists"> Change </span>
                                                <input type="file" name="image"> </span>
                                    <a href="javascript:;" class="btn red fileinput-exists" data-dismiss="fileinput"> Remove </a>
                                </div>
                            </div>
                        </div>

                        <div class="form-group form-md-line-input {{ $errors->has('name') ? ' has-error' : '' }}">
                            {!! Form::text('name', $model->name, ['id'=>'name','placeholder'=>'','class'=>'form-control', 'required']) !!}
                            <label for="nama">Hero Name</label>
                        </div>
                        <div class="form-group form-md-line-input {{ $errors->has('faction') ? ' has-error' : '' }}">
                            {!! Form::select('faction', [1=>'Radiant',2=>'Dire'], $model->faction, ['id'=>'faction','placeholder'=>'','class'=>'form-control', 'required']) !!}
                            <label for="faction">Faction</label>
                        </div>
                        <div class="form-group form-md-line-input {{ $errors->has('primary_att') ? ' has-error' : '' }}">
                            {!! Form::select('primary_att', [1=>'Strength',2=>'Agility',3=>'Intelligence'], $model->primary_att, ['id'=>'primary_att','placeholder'=>'','class'=>'form-control', 'required']) !!}
                            <label for="primary_att">Primary Attribute</label>
                        </div>
                        <div class="form-group form-md-line-input {{ $errors->has('atk_type') ? ' has-error' : '' }}">
                            {!! Form::select('atk_type', [1=>'Melee',2=>'Range'], $model->atk_type, ['id'=>'atk_type','placeholder'=>'','class'=>'form-control', 'required']) !!}
                            <label for="atk_type">Attack Type</label>
                        </div>

                        <div class="form-group form-md-line-input ">

                            <select id="roles" class="form-control select2-multiple" name="roles[]" multiple>
                                <option value="1" {{ in_array("1", $roles) ? 'selected':'' }}>Cary</option>
                                <option value="2" {{ in_array("2", $roles) ? 'selected':'' }}>Support</option>
                                <option value="3" {{ in_array("3", $roles) ? 'selected':'' }}>Ganker</option>
                                <option value="4" {{ in_array("4", $roles) ? 'selected':'' }}>Nuker</option>
                                <option value="5" {{ in_array("5", $roles) ? 'selected':'' }}>Offlaner</option>
                            </select>
                            <label for="roles">Roles</label>
                        </div>
                        

                    </div>
                    <div class="form-actions noborder">
                        <button type="submit" class="btn blue">Save</button>
                    </div>

                </div>
            </div>

        </div>

        <div class="col-md-6">
            <div class="row">
                <div class="col-md-12">
                    <div class="portlet light bordered">

                        <div class="portlet-title">
                            <div class="caption font-red-sunglo">
                                <i class="icon-settings font-red-sunglo"></i>
                                <span class="caption-subject bold uppercase"> Attribute Info</span>
                            </div>
                        </div>

                        <div class="portlet-body form">

                            <div class="form-body">
                                <div class="form-group form-md-line-input {{ $errors->has('strength') ? ' has-error' : '' }}">
                                    {!! Form::number('strength', $model->strength, ['id'=>'strength','placeholder'=>'','class'=>'form-control', 'required']) !!}
                                    <label for="strength">Strength</label>
                                </div>
                                <div class="form-group form-md-line-input {{ $errors->has('agility') ? ' has-error' : '' }}">
                                    {!! Form::number('agility', $model->agility, ['id'=>'agility','placeholder'=>'','class'=>'form-control', 'required']) !!}
                                    <label for="agility">Agility</label>
                                </div>
                                <div class="form-group form-md-line-input {{ $errors->has('intelligence') ? ' has-error' : '' }}">
                                    {!! Form::number('intelligence', $model->intelligence, ['id'=>'intelligence','placeholder'=>'','class'=>'form-control', 'required']) !!}
                                    <label for="intelligence">Intelligence</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="portlet light bordered">

                        <div class="portlet-title">
                            <div class="caption font-red-sunglo">
                                <i class="icon-settings font-red-sunglo"></i>
                                <span class="caption-subject bold uppercase"> Basic Status</span>
                            </div>
                        </div>

                        <div class="portlet-body form">

                            <div class="form-body">
                                <div class="form-group form-md-line-input {{ $errors->has('health') ? ' has-error' : '' }}">
                                    {!! Form::number('health', $model->health, ['id'=>'health','placeholder'=>'','class'=>'form-control', 'required']) !!}
                                    <label for="health">Health</label>
                                </div>
                                <div class="form-group form-md-line-input {{ $errors->has('mana') ? ' has-error' : '' }}">
                                    {!! Form::number('mana', $model->mana, ['id'=>'mana','placeholder'=>'','class'=>'form-control', 'required']) !!}
                                    <label for="mana">Mana</label>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group form-md-line-input {{ $errors->has('demage_a') ? ' has-error' : '' }}">
                                            {!! Form::number('demage_a', $model->demage_a, ['id'=>'demage_a','placeholder'=>'','class'=>'form-control', 'required']) !!}
                                            <label for="demage_a">Lowest Demage</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group form-md-line-input {{ $errors->has('demage_b') ? ' has-error' : '' }}">
                                            {!! Form::number('demage_b', $model->demage_b, ['id'=>'demage_b','placeholder'=>'','class'=>'form-control', 'required']) !!}
                                            <label for="demage_b">Highest Demage</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-md-line-input {{ $errors->has('armor') ? ' has-error' : '' }}">
                                    {!! Form::number('armor', $model->armor, ['id'=>'armor','placeholder'=>'','class'=>'form-control', 'required']) !!}
                                    <label for="armor">Armor</label>
                                </div>
                                <div class="form-group form-md-line-input {{ $errors->has('evasion') ? ' has-error' : '' }}">
                                    {!! Form::number('evasion', $model->evasion, ['id'=>'evasion','placeholder'=>'','class'=>'form-control', 'required']) !!}
                                    <label for="evasion">Evasion</label>
                                </div>
                                <div class="form-group form-md-line-input {{ $errors->has('mov_speed') ? ' has-error' : '' }}">
                                    {!! Form::number('mov_speed', $model->mov_speed, ['id'=>'mov_speed','placeholder'=>'','class'=>'form-control', 'required']) !!}
                                    <label for="mov_speed">Movement Speed</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
    <!-- END PAGE BASE CONTENT -->
@endsection

@push('plugin_scripts')
    <script src="{{ url('assets') }}/backend/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js" type="text/javascript"></script>
    <script src="{{ url('assets') }}/backend/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
@endpush

@push('scripts')

    <script>
        $("#roles").select2();
    </script>
@endpush