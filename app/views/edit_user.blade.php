@extends('layouts.main')
 
@section('content')
{{ Form::open(array('url' => 'form_user')) }}
<div class="box box-primary">
		<div class="box-header">
			<h3 class="box-title">Update Profile</h3>
		</div><!-- /.box-header -->
		@if (Session::has('message'))
		   <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
			<div class="box-body">
				<div class="form-group">
					<label for="ddsname">Name</label>
					<input type="text" class="form-control" name="name" id="name" placeholder="Enter Name" value="{{ $data->v_login }}">
				</div>
				<div class="form-group">
					<label for="ddsname">Email/Username</label>
					<input type="text" class="form-control" name="email" id="email" placeholder="Enter Email/User Name" value="{{ $data->email }}">
				</div>
				<div class="form-group">
					<label for="type">Password</label>
					<input type="password" class="form-control" name="password" placeholder="Type" value="password">
					<input type="hidden" class="form-control" name="i_user_id" placeholder="Type" value="{{$data->i_user_id}}">
				</div>
			</div><!-- /.box-body -->

			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
	</div><!-- /.box -->
	{{ Form::close() }}
@stop
