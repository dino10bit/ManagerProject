@extends('layouts.main')

@section('content')
<div class="box box-primary">
	<div class="box-header">
		<h3 class="box-title">Data MODEM</h3>
	</div><!-- /.box-header -->
	{{ Form::open(array('url' => 'view_modem')) }}
	<div class="box-body"><label>Search: <input type="text" name="q" aria-controls="example1"></label></div>
	{{ Form::close() }}
	@if(Session::has('message'))
		 <div class="alert alert-info">{{ Session::get('message') }}</div>
	@endif
	<div class="box-body btn-group">
		<a href="form_modem"><button type="button" class="btn btn-info"> Input Modem</button></a>
		<a href="view_modem"><button type="button" class="btn btn-info">View All</button></a>
		<a href="view_modem?stat=Active"><button type="button" class="btn btn-info">View Active</button></a>
		<a href="view_modem?stat=Attached"><button type="button" class="btn btn-info">View Attached</button></a>
	</div>
	<div class="box-body table-responsive">
		<table id="example1" class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>MODEM Name</th>
					<th>MODEM SN</th>
					<th>MODEM Type</th>
					<th>MODEM Text 1</th>
					<th>MODEM Text 2</th>
					<th>MODEM Text 3</th>
					<th>MODEM Text 4</th>
					<th>MODEM Status</th>
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
					<td>{{ $val->v_modem_name }}</td>
					<td>{{ $val->v_modem_sn }}</td>
					<td>{{ $val->v_modem_type }}</td>
					<td>{{ $val->v_modem_text1 }}</td>
					<td>{{ $val->v_modem_text2 }}</td>
					<td>{{ $val->v_modem_text3 }}</td>
					<td>{{ $val->v_modem_text4 }}</td>
					<td>{{ $val->v_status }}</td>
					<td>{{ $val->i_user_create }}</td>
					<td>{{ $val->i_user_modify }}</td>
					<td>{{ $val->created_at }}</td>
					<td>{{ $val->updated_at }}</td>
					<td>Update</td>
					<td>Delete</td>
					<td>Assign to</td>
				</tr>
			@endforeach
			</tbody>
		</table>
</div>
{{ $data->links() }}
@stop