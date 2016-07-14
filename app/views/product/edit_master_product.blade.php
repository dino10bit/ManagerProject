
@extends('layouts.main')
 
@section('content')
{{ Form::open(array('url' => 'product/form_master_product')) }}
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
					<label for="code">Code</label>
					<input type="text" class="form-control" required name="code" id="kode" placeholder="Enter Product Code" value="{{$data->code}}">
				</div>
				<div class="form-group">
					<label for="name">Name</label>
					<input type="text" class="form-control" required name="name" placeholder="Inter Product Name" value="{{$data->name}}">
					<input type="hidden" required name="product_id"  value="{{$data->id}}">
				</div>
				<div class="form-group">
					<label for="brand">Brand</label>
					<input type="text" class="form-control" name="brand" placeholder="Enter Product Brand" value="{{$data->brand}}">
				</div>
				<div class="form-group">
					<label for="text1">Spec 1</label>
					<input type="text" class="form-control" name="spec1" placeholder="Enter Spec1" value="{{$data->spec_1}}">
				</div>
				<div class="form-group">
					<label for="text2">Spec 2</label>
					<input type="text" class="form-control" name="spec2" placeholder="Enter Spec2" value="{{$data->spec_2}}">
				</div>
				<div class="form-group">
					<label for="text3">Spec 3</label>
					<input type="text" class="form-control" name="spec3" placeholder="spec3" value="{{$data->spec_3}}">
				</div>
				<div class="form-group">
					<label for="text4">Wide</label>
					<input type="text" class="form-control" name="wide" placeholder="Enter Wide" value="{{$data->wide}}">
				</div>
				<div class="form-group">
					<label for="text4">Dept</label>
					<input type="text" class="form-control" name="dept" placeholder="Enter Product Dept" value="{{$data->depth}}">
				</div>
				<div class="form-group">
					<label for="text4">Height</label>
					<input type="text" class="form-control" name="height" placeholder="Enter Product Height" value="{{$data->height}}">
				</div>
				<div class="form-group">
					<label for="text4">Weight</label>
					<input type="text" class="form-control" name="wight" placeholder="Enter Product Weight" value="{{$data->weight}}">
				</div>
				<!--div class="form-group">
					<label for="text4">Is Package</label>
					<select name="package" class="form-control">
						<option value="">No</option>
						<option value="1">Yes</option>
					</select>
				</div-->
			</div><!-- /.box-body -->

			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
	</div><!-- /.box -->
	{{ Form::close() }}
@stop