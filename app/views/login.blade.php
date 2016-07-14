
@extends('layouts.login')
 
@section('content')
{{ Form::open(array('url' => 'login')) }}
		<div class="form-box" id="login-box">
		<div class="header">Sign In</div>

		<!-- if there are login errors, show them here -->
		<div class="body bg-gray">
			<div class="form-group">
				<p>
				{{ $errors->first('email') }}
				{{ $errors->first('password') }}
				</p>
			</div>
			<div class="form-group">
				<input type="text" name="email" class="form-control" placeholder="Email"/>
			</div>
			<div class="form-group">
				<input type="password" name="password" class="form-control" placeholder="Password"/>
			</div>
		</div>
		<div class="footer">                                                               
			<button type="submit" class="btn bg-olive btn-block">Sign me in</button>  
		</div>
	{{ Form::close() }}
@stop