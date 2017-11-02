@extends('layouts.backend')

@push('plugin_css')
    <link href="{{ url('assets') }}/backend/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css" />
    <link href="{{ url('assets') }}/backend/global/plugins/jquery-multi-select/css/multi-select.css" rel="stylesheet" type="text/css" />
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
            <h1>Admin
                <small>Profile</small>
            </h1>
        </div>
        <!-- END PAGE TITLE -->
    </div>
    <!-- END PAGE HEAD-->
    <!-- BEGIN PAGE BREADCRUMB -->
    <ul class="page-breadcrumb breadcrumb">
        <li>
            <a href="{{ route('member.dashboard') }}">Home</a>
            <i class="fa fa-circle"></i>
        </li>
        <li>
            <a href="{{ route('member.guide.manage') }}">Item Guide</a>
            <i class="fa fa-circle"></i>
        </li>
        <li>
            <span class="active">Form</span>
        </li>
    </ul>
    <!-- END PAGE BREADCRUMB -->
    <!-- BEGIN PAGE BASE CONTENT -->
    <div class="row">
        <?php $url = isset($update) ? route('member.guide.update',$model->id) : route('member.guide.store'); ?>
        {!! Form::open(['url' => $url, 'files' => true]) !!}
        <div class="col-md-4 ">

            <!-- BEGIN SAMPLE FORM PORTLET-->
            <div class="portlet light bordered">

                <div class="portlet-title">
                    <div class="caption font-red-sunglo">
                        <i class="icon-settings font-red-sunglo"></i>
                        <span class="caption-subject bold uppercase"> Guide Info</span>
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

                        <div class="form-group form-md-line-input {{ $errors->has('hero_id') ? ' has-error' : '' }}">
                            {!! Form::select('hero_id', \App\Models\Heros::all()->pluck('name','id'), $model->hero_id,['id'=>'hero_id','placeholder'=>'','class'=>'form-control', 'required']) !!}
                            <label for="hero_id">Hero</label>
                        </div>

                        <div class="form-group form-md-line-input {{ $errors->has('title') ? ' has-error' : '' }}">
                            {!! Form::text('title', $model->title, ['id'=>'title','placeholder'=>'','class'=>'form-control', 'required']) !!}
                            <label for="title">Guide Title</label>
                        </div>

                        <div class="form-group form-md-line-input {{ $errors->has('description') ? ' has-error' : '' }}">
                            {!! Form::textarea('description', $model->description, ['id'=>'description','placeholder'=>'','class'=>'form-control', 'required']) !!}
                            <label for="description">Description</label>
                        </div>

                    </div>
                    <div class="form-actions noborder">
                        <button type="submit" class="btn blue">Simpan</button>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-12">
                    <div class="portlet light bordered">

                        <div class="portlet-title">
                            <div class="caption font-red-sunglo">
                                <i class="icon-settings font-red-sunglo"></i>
                                <span class="caption-subject bold uppercase"> Early Game Item</span>
                            </div>
                        </div>

                        <div class="portlet-body form">

                            <div class="form-body">
                                <div class="form-group form-md-line-input">
                                    <select multiple="multiple" class="multi-select" id="earlygame" name="earlygame[]" max="6">
                                        @foreach(\App\Models\Items::all() as $item)
                                            <option value="{{ $item->id  }}"
                                                    data-img="{{ $item->img }}"
                                                    data-toggle="popover"
                                                    data-html="true"
                                                    data-trigger="hover"
                                                    data-placement="bottom"
                                                    title="{{ $item->name }}"
                                                    data-content="{{ $item->descriptions }}">
                                                {{ $item->name }}
                                            </option>
                                        @endforeach
                                    </select>
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
                                <span class="caption-subject bold uppercase"> Core Item</span>
                            </div>
                        </div>

                        <div class="portlet-body form">

                            <div class="form-body">
                                <div class="form-group form-md-line-input">
                                    <select multiple="multiple" class="multi-select" id="coreitem" name="coreitem[]" max="6">
                                        @foreach(\App\Models\Items::all() as $item)
                                            <option value="{{ $item->id  }}"
                                                    data-img="{{ $item->img }}"
                                                    data-toggle="popover"
                                                    data-html="true"
                                                    data-trigger="hover"
                                                    data-placement="bottom"
                                                    title="{{ $item->name }}"
                                                    data-content="{{ $item->descriptions }}">
                                                {{ $item->name }}
                                            </option>
                                        @endforeach
                                    </select>
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
                                <span class="caption-subject bold uppercase"> Late Game Item</span>
                            </div>
                        </div>

                        <div class="portlet-body form">

                            <div class="form-body">
                                <div class="form-group form-md-line-input">
                                    <select multiple="multiple" class="multi-select" id="lategame" name="lategame[]" max="6">
                                        @foreach(\App\Models\Items::all() as $item)
                                            <option value="{{ $item->id  }}"
                                                    data-img="{{ $item->img }}"
                                                    data-toggle="popover"
                                                    data-html="true"
                                                    data-trigger="hover"
                                                    data-placement="bottom"
                                                    title="{{ $item->name }}"
                                                    data-content="{{ $item->descriptions }}">
                                                {{ $item->name }}
                                            </option>
                                        @endforeach
                                    </select>
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
                                <span class="caption-subject bold uppercase"> Extra Game Item</span>
                            </div>
                        </div>

                        <div class="portlet-body form">

                            <div class="form-body">
                                <div class="form-group form-md-line-input">
                                    <select multiple="multiple" class="multi-select" id="exstraitem" name="exstraitem[]" max="6">
                                        @foreach(\App\Models\Items::all() as $item)
                                            <option value="{{ $item->id  }}"
                                                    data-img="{{ $item->img }}"
                                                    data-toggle="popover"
                                                    data-html="true"
                                                    data-trigger="hover"
                                                    data-placement="bottom"
                                                    title="{{ $item->name }}"
                                                    data-content="{{ $item->descriptions }}">
                                                {{ $item->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>
    <!-- END PAGE BASE CONTENT -->
@endsection

@push('plugin_scripts')
    <script src="{{ url('assets') }}/backend/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js" type="text/javascript"></script>
    <script src="{{ url('assets') }}/backend/global/plugins/quicksearch/jquery.quicksearch.js" type="text/javascript"></script>
    <script src="{{ url('assets') }}/backend/global/plugins/bootstrap-select/js/bootstrap-select.min.js" type="text/javascript"></script>
    <script src="{{ url('assets') }}/backend/global/plugins/jquery-multi-select/js/jquery.multi-select.js" type="text/javascript"></script>
    <script src="{{ url('assets') }}/backend/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
@endpush

@push('scripts')
    <script>

        $(document).ready(function(){
            $('#hero_id').select2({});
            $('.multi-select').multiSelect({
                selectableHeader: "<input type='text' class='search-input form-control' autocomplete='off' placeholder='Search...'>",
                selectionHeader: "<input type='text' class='search-input form-control' autocomplete='off' placeholder='Search...'>",
                afterInit: function(ms){
                    var that = this,
                        $selectableSearch = that.$selectableUl.prev(),
                        $selectionSearch = that.$selectionUl.prev(),
                        selectableSearchString = '#'+that.$container.attr('id')+' .ms-elem-selectable:not(.ms-selected)',
                        selectionSearchString = '#'+that.$container.attr('id')+' .ms-elem-selection.ms-selected';

                    that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                        .on('keydown', function(e){
                            if (e.which === 40){
                                that.$selectableUl.focus();
                                return false;
                            }
                        });

                    that.qs2 = $selectionSearch.quicksearch(selectionSearchString)
                        .on('keydown', function(e){
                            if (e.which == 40){
                                that.$selectionUl.focus();
                                return false;
                            }
                        });
                },
                afterSelect: function(){
                    this.qs1.cache();
                    this.qs2.cache();
                },
                afterDeselect: function(){
                    this.qs1.cache();
                    this.qs2.cache();
                }
            });
            $('[data-toggle="popover"]').popover();
            <?php
            if(isset($update)):
                $earlygame = \App\Models\DetailGuide::where('guide_id',$model->id)->where('tab',1)->get();
                $coreitem = \App\Models\DetailGuide::where('guide_id',$model->id)->where('tab',2)->get();
                $lategame = \App\Models\DetailGuide::where('guide_id',$model->id)->where('tab',3)->get();
                $exstraitem = \App\Models\DetailGuide::where('guide_id',$model->id)->where('tab',4)->get();
            ?>

            $('#earlygame').multiSelect('select', [
                <?php foreach ($earlygame as $item): ?>
                '<?= $item->item_id ?>',
                <?php endforeach; ?>
            ]);
            $('#coreitem').multiSelect('select', [
                <?php foreach ($coreitem as $item): ?>
                    '<?= $item->item_id ?>',
                <?php endforeach; ?>
            ]);
            $('#lategame').multiSelect('select', [
                <?php foreach ($lategame as $item): ?>
                    '<?= $item->item_id ?>',
                <?php endforeach; ?>
            ]);
            $('#exstraitem').multiSelect('select', [
                <?php foreach ($exstraitem as $item): ?>
                    '<?= $item->item_id ?>',
                <?php endforeach; ?>
            ]);
            <?php endif; ?>
        });
    </script>
@endpush