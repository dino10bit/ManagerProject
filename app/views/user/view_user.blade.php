@extends('layouts.main')

@section('content')
<div class="box box-primary">
	<div class="box-header">
		<h3 class="box-title">User Management</h3>
	</div><!-- /.box-header -->
	{{ Form::open(array('url' => 'user/view_user')) }}
	<div class="box-body"><label>Search Name: <input type="text" name="q" aria-controls="example1"> <a href="http://localhost/dds-and/public/user/view_user"><i class="fa fa-fw fa-refresh"></i></a></label></div>
	{{ Form::close() }}
	@if(Session::has('message'))
		 <div class="alert alert-info">{{ Session::get('message') }}</div>
	@endif
	<div class="box-body table-responsive">
		<table id="example1" class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>No</th>
					<th>Name</th>
					<th>Email</th>
					<th>Status</th>
					<th colspan="3" style="text-align:center">Action</th>
				</tr>
			</thead>
			<tbody>
			<?php $no = 1;?>
			@foreach ($data as $val)
				
				<tr>
					<td>{{$no++}}</td>
					<td><b>{{strtoupper($val->v_login)}}</b></td>
					<td>{{$val->email}}</td>
					<td>{{$val->v_status}}</td>
					
					<td><a href="{{ url('/') }}/edit_user/{{$val->i_user_id}}">Update</a></td>
					<td><a href="#">Delete</a></td>
				</tr>
			@endforeach
			</tbody>
		</table>
</div>
{{ $data->links() }}
@stop