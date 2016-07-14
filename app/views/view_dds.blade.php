@extends('layouts.main')

@section('content')
<div class="box box-primary">
	<div class="box-header">
		<h3 class="box-title">Data DDS</h3>
	</div><!-- /.box-header -->
	{{ Form::open(array('url' => 'view_dds')) }}
	<div class="box-body"><label>Search: <input type="text" name="q" aria-controls="example1"></label></div>
	{{ Form::close() }}
	@if(Session::has('message'))
		 <div class="alert alert-info">{{ Session::get('message') }}</div>
	@endif
	<div class="box-body btn-group">
		<a href="formdds"><button type="button" class="btn btn-info"> Input DDS</button></a>
		<a href="view_dds"><button type="button" class="btn btn-info">View All</button></a>
		<a href="view_dds?stat=Active"><button type="button" class="btn btn-info">View Active</button></a>
		<a href="view_dds?stat=Attached"><button type="button" class="btn btn-info">View Attached</button></a>
	</div>
	<div class="box-body table-responsive">
		<table id="example1" class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>DDS Name</th>
					<th>DDS SN</th>
					<th>DDS Type</th>
					<th>DDS Text 1</th>
					<th>DDS Text 2</th>
					<th>DDS Text 3</th>
					<th>DDS Status</th>
					<th>Create By</th>
					<th>Update By</th>
					<th>Created At</th>
					<th>Updated At</th>
					<th colspan="3" style="text-align:center">Action</th>
				</tr>
			</thead>
			<tbody>
			@foreach ($data as $val)
				<tr>
					<td>{{ $val->v_dds_name }}</td>
					<td>{{ $val->v_dds_sn }}</td>
					<td>{{ $val->v_dds_type }}</td>
					<td>{{ $val->v_dds_text1 }}</td>
					<td>{{ $val->v_dds_text2 }}</td>
					<td>{{ $val->v_dds_text3 }}</td>
					<td>{{ $val->v_status }}</td>
					<td>{{ $val->i_user_create }}</td>
					<td>{{ $val->i_user_modify }}</td>
					<td>{{ $val->created_at }}</td>
					<td>{{ $val->updated_at }}</td>
					<td><a href="edit_dds/{{$val->i_dds_id}}">Update</a></td>
					<!--td><a href="delete_dds/{{$val->i_dds_id}}">Delete</a></td-->
					<td><a href="#">Delete</a></td>
					<td>Assign to</td>
				</tr>
			@endforeach
			</tbody>
		</table>
</div>
{{ $data->links() }}
@stop