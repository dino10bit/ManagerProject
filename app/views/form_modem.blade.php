
@extends('layouts.main')
 
@section('content')
{{ Form::open(array('url' => 'form_modem')) }}
<div class="box box-primary">
		<div class="box-header">
			<h3 class="box-title">Modem Form</h3>
		</div><!-- /.box-header -->
		@if(Session::has('message'))
			 <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
			<div class="box-body">
				<div class="form-group">
					<label for="name">Modem Name</label>
					<input type="text" class="form-control" name="name" id="Modemname" placeholder="Enter Modem Name">
				</div>
				<div class="form-group">
					<label for="type">Modem Type</label>
					<input type="text" class="form-control" name="type" placeholder="Type">
				</div>
				<div class="form-group">
					<label for="sn">Modem SN</label>
					<input type="text" class="form-control" required name="sn" placeholder="SN">
				</div>
				<div class="form-group">
					<label for="text1">Modem Text 1</label>
					<input type="text" class="form-control" name="text1" placeholder="text1">
				</div>
				<div class="form-group">
					<label for="text2">Modem Text 2</label>
					<input type="text" class="form-control" name="text2" placeholder="text2">
				</div>
				<div class="form-group">
					<label for="text3">Modem Text 3</label>
					<input type="text" class="form-control" name="text3" placeholder="text3">
				</div>
				<div class="form-group">
					<label for="text4">Modem Text 4</label>
					<input type="text" class="form-control" name="text4" placeholder="text4">
				</div>
			</div><!-- /.box-body -->

			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
	</div><!-- /.box -->
	{{ Form::close() }}
@stop