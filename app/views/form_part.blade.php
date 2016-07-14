
@extends('layouts.main')
 
@section('content')
{{ Form::open(array('url' => 'form_part')) }}
<div class="box box-primary">
		<div class="box-header">
			<h3 class="box-title">Part Form</h3>
		</div><!-- /.box-header -->
		@if (Session::has('message'))
		   <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
			<div class="box-body">
				<div class="form-group">
					<label for="partname">Part Name</label>
					<input type="text" class="form-control" name="partname" id="partname" placeholder="Enter part Name">
				</div>
				<div class="form-group">
					<label for="type">Part Type</label>
					<input type="text" class="form-control" name="type" placeholder="Type">
				</div>
				<div class="form-group">
					<label for="sn">Part SN</label>
					<input type="text" class="form-control" name="sn" placeholder="SN">
				</div>
				<div class="form-group">
					<label for="sn">Stok</label>
					<input type="text" class="form-control" required name="stok" placeholder="Stok">
				</div>
				<div class="form-group">
					<label for="text1">Part Text 1</label>
					<input type="text" class="form-control" name="text1" placeholder="text1">
				</div>
				<div class="form-group">
					<label for="text2">Part Text 2</label>
					<input type="text" class="form-control" name="text2" placeholder="text2">
				</div>
				<div class="form-group">
					<label for="text3">Part Text 3</label>
					<input type="text" class="form-control" name="text3" placeholder="text3">
				</div>
			</div><!-- /.box-body -->

			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
	</div><!-- /.box -->
	{{ Form::close() }}
@stop