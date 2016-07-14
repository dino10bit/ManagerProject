	
@extends('layouts.main')
 
@section('content')
{{ Form::open(array('url' => 'user/form_user')) }}
<div class="box box-primary">
<?php //print_r($data); ?>
		<div class="box-header">
			<h3 class="box-title">Users Form Management</h3>
		</div><!-- /.box-header -->
		@if (Session::has('message'))
		   <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
			<div class="box-body">
				<div class="form-group">
					<label for="v_login">Name</label>
					<input type="text" class="form-control" name="v_login" id="v_login" placeholder="Enter Your Name" required>
				</div>

				<div class="form-group">
					<label for="password">Password</label>
					<input type="password" class="form-control" name="password" id="password" placeholder="Enter Your Password" required>
				</div>

				<div class="form-group">
					<label for="password">Email</label>
					<input type="email" class="form-control" name="email" id="email" placeholder="Enter Your Email">
				</div>
				
				<div class="form-group">
					<label for="akses">Akses Level</label>
					{{ Form::select('akses',   array('1'=>'Super Admin','2'=>'Operator','3'=>'Technican') + array_merge(array('null'=> 'Please Select ...')), 'null', array('class' => 'form-control', 'id'=> 'vmanufacture')) }}
				</div>
				
			</div><!-- /.box-body -->

			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
	</div><!-- /.box -->
	{{ Form::close() }}
@stop