	
@extends('layouts.main')
 
@section('content')
{{ Form::open(array('url' => 'vehicle/form_vmodel')) }}
<div class="box box-primary">
<?php //print_r($data); ?>
		<div class="box-header">
			<h3 class="box-title">Vehicle Type</h3>
		</div><!-- /.box-header -->
		@if (Session::has('message'))
		   <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
			<div class="box-body">
				<div class="form-group">
					<label for="v_model_name">Type VRN Name</label>
					<input type="text" class="form-control" name="v_model_name" id="v_model_name" placeholder="Enter Type Name">
				</div>

				<div class="form-group">
					<label for="vmanufacture">VRN (Manufacture)</label>
					{{ Form::select('vmanufacture',   $manufactures + array_merge(array('null'=> 'Please Select ...')), 'null', array('class' => 'form-control', 'id'=> 'vmanufacture')) }}
				</div>

				<div class="form-group">
					<label for="address">Description</label>
					<input type="textarea" class="form-control" name="description" id="description" placeholder="Enter Description">
				</div>
				
			</div><!-- /.box-body -->

			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
	</div><!-- /.box -->
	{{ Form::close() }}
@stop