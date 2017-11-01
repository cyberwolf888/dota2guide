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
            <a href="{{ route('admin.dashboard') }}">Home</a>
            <i class="fa fa-circle"></i>
        </li>
        <li>
            <a href="{{ route('admin.user.admin.manage') }}">Profile</a>
            <i class="fa fa-circle"></i>
        </li>
        <li>
            <span class="active">Edit</span>
        </li>
    </ul>
    <!-- END PAGE BREADCRUMB -->
    <!-- BEGIN PAGE BASE CONTENT -->
    <div class="row">

        {!! Form::open(['route' => 'admin.profile.update', 'files' => true]) !!}
        <div class="col-md-6 ">

            <!-- BEGIN SAMPLE FORM PORTLET-->
            <div class="portlet light bordered">

                <div class="portlet-title">
                    <div class="caption font-red-sunglo">
                        <i class="icon-settings font-red-sunglo"></i>
                        <span class="caption-subject bold uppercase"> Edit Profile</span>
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
                                    @if($model->img == "")
                                        <img src="{{ url('assets') }}/backend/global/img/no_image.png" alt="" />
                                    @else
                                        <img src="{{ url('assets/profile/'.$model->img) }}" alt="" />
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
                            <label for="name">Nama Lengkap</label>
                        </div>

                        <div class="form-group form-md-line-input {{ $errors->has('email') ? ' has-error' : '' }}">
                            {!! Form::email('email', $model->email, ['id'=>'email','placeholder'=>'','class'=>'form-control', 'required']) !!}
                            <label for="email">Email</label>
                        </div>

                        <div class="form-group form-md-line-input {{ $errors->has('phone') ? ' has-error' : '' }}">
                            {!! Form::number('phone', $model->phone, ['id'=>'phone','placeholder'=>'','class'=>'form-control', 'required']) !!}
                            <label for="phone">No Telp</label>
                        </div>

                        <div class="form-group form-md-line-input {{ $errors->has('password') ? ' has-error' : '' }}">
                            {!! Form::password('password',['id'=>'password','placeholder'=>'','class'=>'form-control']) !!}
                            <label for="password">Password</label>
                        </div>

                        <div class="form-group form-md-line-input {{ $errors->has('password_confirmation') ? ' has-error' : '' }}">
                            {!! Form::password('password_confirmation',['id'=>'password_confirmation','placeholder'=>'','class'=>'form-control']) !!}
                            <label for="password_confirmation">Password Confirmation</label>
                        </div>

                        <div class="form-group form-md-line-input {{ $errors->has('isActive') ? ' has-error' : '' }}">
                            {!! Form::select('isActive', ['1'=>'Aktif','0'=>'Tidak Aktif'], $model->isActive,['id'=>'isActive','placeholder'=>'','class'=>'form-control', 'required']) !!}
                            <label for="isActive">Status</label>
                        </div>

                    </div>
                    <div class="form-actions noborder">
                        <button type="submit" class="btn blue">Simpan</button>
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
@endpush

@push('scripts')

@endpush