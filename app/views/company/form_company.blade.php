	
@extends('layouts.main')
 
@section('content')
{{ Form::open(array('url' => 'company/form_company')) }}
<div class="box box-primary">
<?php //print_r($data); ?>
		<div class="box-header">
			<h3 class="box-title">Company</h3>
		</div><!-- /.box-header -->
		@if (Session::has('message'))
		   <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
			<div class="box-body">
				<div class="form-group">
					<label for="catname">Company Name</label>
					<input type="text" class="form-control" name="companyname" id="companyname" placeholder="Enter Company Name">
				</div>
				
				<div class="form-group">
					<label for="category">Category</label>
					{{ Form::select('category', array_merge(array('null'=> 'Please Select ...') + $categories), 'null', array('class' => 'form-control', 'id'=> 'category')) }}
				</div>

				<div class="form-group">
					<label for="address">Address</label>
					<input type="text" class="form-control" name="address" id="address" placeholder="Enter Address">
				</div>

				<div class="form-group">
					<label for="city">City</label>
					<input type="text" class="form-control" name="city" id="city" placeholder="Enter City">
				</div>

				<div class="form-group">
					<label for="zip">ZIP</label>
					<input type="text" class="form-control" name="zip" id="zip" placeholder="Enter ZIP">
				</div>
				<div class="form-group">
					<label for="phone">Phone</label>
					<input type="text" class="form-control" name="phone" id="phone" placeholder="Enter Phone">
				</div>
				<div class="form-group">
					<label for="fax">Fax</label>
					<input type="text" class="form-control" name="fax" id="fax" placeholder="Enter FAX">
				</div>
				<div class="form-group">
					<label for="website">Website</label>
					<input type="text" class="form-control" name="website" id="website" placeholder="Enter Website">
				</div>
				<div class="form-group">
					<label for="email">Email</label>
					<input type="text" class="form-control" name="email" id="email" placeholder="Enter Email">
				</div>
			
				
			</div><!-- /.box-body -->

			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
	</div><!-- /.box -->
	{{ Form::close() }}
@stop