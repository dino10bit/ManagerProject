	
@extends('layouts.main')
 
@section('content')
{{ Form::open(array('url' => 'company/form_compcat')) }}
<div class="box box-primary">
<?php //print_r($data); ?>
		<div class="box-header">
			<h3 class="box-title">Company Category</h3>
		</div><!-- /.box-header -->
		@if (Session::has('message'))
		   <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
			<div class="box-body">
				<div class="form-group">
					<label for="partname">Category Name</label>
					<input type="text" class="form-control" name="catname" id="catname" placeholder="Enter Category Name">
				</div>
				
			</div><!-- /.box-body -->

			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
	</div><!-- /.box -->
	{{ Form::close() }}
@stop