@extends('layouts.backend')

@push('plugin_css')
    <link href="{{ url('assets') }}/backend/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css" />
@endpush

@push('page_css')
@endpush

@section('content')
    <!-- BEGIN PAGE HEAD-->
    <div class="page-head">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1>Item
                <small>Form</small>
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
            <a href="{{ route('admin.item.manage') }}">Items</a>
            <i class="fa fa-circle"></i>
        </li>
        <li>
            <span class="active">Form</span>
        </li>
    </ul>
    <!-- END PAGE BREADCRUMB -->
    <!-- BEGIN PAGE BASE CONTENT -->
    <?php $url =  isset($update) ? route('admin.item.update', ['id'=>$model->id]) : route('admin.item.store'); ?>
    {!! Form::open(['url' => $url, 'files' => true]) !!}
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
                                        <img src="{{ url($model->img) }}" alt="" />
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
                            <label for="name">Item Name</label>
                        </div>
                        <div class="form-group form-md-line-input {{ $errors->has('cost') ? ' has-error' : '' }}">
                            {!! Form::text('cost', $model->cost, ['id'=>'cost','placeholder'=>'','class'=>'form-control']) !!}
                            <label for="cost">Cost</label>
                        </div>


                    </div>
                    <div class="form-actions noborder">
                        <button type="submit" class="btn blue">Save</button>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-md-6 ">

            <!-- BEGIN SAMPLE FORM PORTLET-->
            <div class="portlet light bordered">

                <div class="portlet-title">
                    <div class="caption font-red-sunglo">
                        <i class="icon-settings font-red-sunglo"></i>
                        <span class="caption-subject bold uppercase"> Description</span>
                    </div>
                </div>

                <div class="portlet-body form">

                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Descriptions</label>
                            <textarea class="ckeditor form-control" name="descriptions" rows="6">{{ $model->descriptions }}</textarea>
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
    <script src="https://cdn.ckeditor.com/ckeditor5/1.0.0-alpha.1/classic/ckeditor.js"></script>
@endpush

@push('scripts')
    <script>
        ClassicEditor.create( document.querySelector( '.ckeditor' ), {
            toolbar: [ 'bold', 'italic', 'link', 'bulletedList', 'numberedList' ]
        });
    </script>
@endpush