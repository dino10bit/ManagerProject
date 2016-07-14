	
@extends('layouts.main')
 
@section('content')
{{ Form::open(array('url' => 'vehicle/form_vmanufacture')) }}
<div class="box box-primary">
<?php //print_r($data); ?>
		<div class="box-header">
			<h3 class="box-title">Vehicle Manufacture</h3>
		</div><!-- /.box-header -->
		@if (Session::has('message'))
		   <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
			<div class="box-body">
				<div class="form-group">
					<label for="catname">Manufacture Name</label>
					<input type="text" class="form-control" name="manufacturename" id="manufacturename" placeholder="Enter Manufacture Name">
				</div>

				<div class="form-group">
					<label for="category">Status</label>
					{{ Form::select('status', array_merge(array('null'=> 'Please Select ...') + array('0'=>'Deactived','1'=>'Actived')), 'null', array('class' => 'form-control', 'id'=> 'category')) }}
				</div>

				<div class="form-group">
					<label for="address">Description</label>
					<input type="textarea" class="form-control" name="description" id="address" placeholder="Enter Description">
				</div>
				
			</div><!-- /.box-body -->

			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
	</div><!-- /.box -->
	{{ Form::close() }}
@stop