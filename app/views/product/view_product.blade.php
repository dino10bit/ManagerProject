@extends('layouts.main')

@section('content')
<div class="box box-primary">
	<div class="box-header">
		<h3 class="box-title">Master Product</h3>
	</div><!-- /.box-header -->
	{{ Form::open(array('url' => 'product/view_product')) }}
	<div class="box-body"><label>Search : <input type="text" name="q" aria-controls="example1"> <a href="{{url('/')}}/product/view_product"><i class="fa fa-fw fa-refresh"></i></a></label></div>
	{{ Form::close() }}
	@if(Session::has('message'))
		 <div class="alert alert-info">{{ Session::get('message') }}</div>
	@endif
	<div class="box-body btn-group">
		<a href="form_part"><button type="button" class="btn btn-info"> Input Part</button></a>
		<a href="view_part"><button type="button" class="btn btn-info">View All</button></a>
		<a href="view_part?stat=Active"><button type="button" class="btn btn-info">View Active</button></a>
		<a href="view_part?stat=Attached"><button type="button" class="btn btn-info">View Attached</button></a>
	</div>
	<div class="box-body table-responsive">
		<table id="example1" class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>No</th>
					<th>Code</th>
					<th>Name</th>
					<th>Brand</th>
					<th>Spec1</th>
					<th>Spec2</th>
					<th>Spec3</th>
					<th>Created By</th>
					<th>Updated By</th>
					<th colspan="3" style="text-align:center">Action</th>
				</tr>
			</thead>
			<tbody>
			<?php $no = 1;?>
			@foreach ($data as $val)
				<tr>
					<td>{{$no++}}</td>
					<td><b>{{strtoupper($val->code)}}</b></td>
					<td>{{$val->name}}</td>
					<td>{{$val->brand}}</td>
					<td>{{$val->spec_1}}</td>
					<td>{{$val->spec_2}}</td>
					<td>{{$val->spec_3}}</td>
					<td>{{$val->create}}</td>
					<td>{{$val->update}}</td>
					
					<td><a href="{{ url('/') }}/product/edit_master_product/{{$val->id}}">Update</a></td>
					<td><a href="#">Delete</a></td>
				</tr>
			@endforeach
			</tbody>
		</table>
</div>
{{ $data->links() }}
@stop