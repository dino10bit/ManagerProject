@extends('layouts.main')

@section('content')
<div class="box box-primary">
	<div class="box-header">
		<h3 class="box-title">Data Part</h3>
	</div><!-- /.box-header -->
	{{ Form::open(array('url' => 'view_part')) }}
	<div class="box-body"><label>Search: <input type="text" name="q" aria-controls="example1"></label></div>
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
					<th>Part Name</th>
					<th>Part SN</th>
					<th>Part Type</th>
					<th>Stok</th>
					<th>Part Text 1</th>
					<th>Part Text 2</th>
					<th>Part Text 3</th>
					<th>Part Status</th>
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
					<td>{{ $val->v_part_name }}</td>
					<td>{{ $val->v_part_sn }}</td>
					<td>{{ $val->v_part_type }}</td>
					<td>{{ $val->stok }}</td>
					<td>{{ $val->v_part_text1 }}</td>
					<td>{{ $val->v_part_text2 }}</td>
					<td>{{ $val->v_part_text3 }}</td>
					<td>{{ $val->v_status }}</td>
					<td>{{ $val->i_user_create }}</td>
					<td>{{ $val->i_user_modify }}</td>
					<td>{{ $val->created_at }}</td>
					<td>{{ $val->updated_at }}</td>
					<td><a href="edit_part/{{$val->i_part_id}}">Update</a></td>
					<td><a href="delete_part/{{$val->i_part_id}}">Delete</a></td>
					<td><a href="#">Delete</a></td>
					<td>Assign to</td>
				</tr>
			@endforeach
			</tbody>
		</table>
</div>
{{ $data->links() }}
@stop