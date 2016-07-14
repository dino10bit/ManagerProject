@extends('layouts.main')
 
@section('content')
{{ Form::open(array('url' => 'formdds')) }}
<div class="box box-primary">
@foreach ($data as $val)
		<div class="box-header">
			<h3 class="box-title">DDS Form</h3>
		</div><!-- /.box-header -->
		@if (Session::has('message'))
		   <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
			<div class="box-body">
				<div class="form-group">
					<label for="ddsname">DDS Name</label>
					<input type="text" class="form-control" name="ddsname" id="ddsname" placeholder="Enter DDS Name" value="{{ $val->v_dds_name }}">
				</div>
				<div class="form-group">
					<label for="type">DDS Type</label>
					<input type="text" class="form-control" name="type" placeholder="Type" value="{{ $val->v_dds_type }}">
				</div>
				<div class="form-group">
					<label for="sn">DDS SN</label>
					<input type="text" class="form-control" name="sn" placeholder="SN" value="{{ $val->v_dds_sn }}">
				</div>
				<div class="form-group">
					<label for="text1">DDS Text 1</label>
					<input type="text" class="form-control" name="text1" placeholder="text1" value="{{ $val->v_dds_text1 }}">
				</div>
				<div class="form-group">
					<label for="text2">DDS Text 2</label>
					<input type="text" class="form-control" name="text2" placeholder="text2" value="{{ $val->v_dds_text2 }}">
				</div>
				<div class="form-group">
					<label for="text3">DDS Text 3</label>
					<input type="text" class="form-control" name="text3" placeholder="text3" value="{{ $val->v_dds_text3 }}">
					<input type="hidden" class="form-control" name="i_dds_id" value="{{ $val->i_dds_id }}">
				</div>
			</div><!-- /.box-body -->

			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
	</div><!-- /.box -->
@endforeach
	{{ Form::close() }}
@stop
