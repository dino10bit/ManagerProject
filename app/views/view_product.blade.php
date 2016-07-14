@extends('layouts.main')

@section('content')
<div class="box box-primary">
	<div class="box-header">
		<h3 class="box-title">Data PRODUCT</h3>
	</div><!-- /.box-header -->
	{{ Form::open(array('url' => 'view_product')) }}
	<div class="box-body"><label>Search: <input type="text" name="q" aria-controls="example1"></label></div>
	{{ Form::close() }}
	<div class="box-body"><a href="form_product">Input Product</a></div>
	<div class="box-body table-responsive">
		{{ $data->links() }}
		<table id="example1" class="table table-bordered table-striped">
			<thead>
				<tr>
					<th colspan="2">PRODUCT ID</th>
					<th>DDS SN</th>
					<th>OBU SN</th>
					<th>MODEM SN</th>
					<th>SIMCARD MSISDN</th>
					<th>Status</th>
					<th>Create By</th>
					<th>Update By</th>
					<th>Created At</th>
					<th>Updated At</th>
					<th colspan="2" style="text-align:center">Action</th>
				</tr>
			</thead>
			<tbody>
			<form action="../tcpdf/print/print_product.php" method="post">
			@foreach ($data as $val)
				<tr>
					<td>
						@if(!empty($val->v_simcard_msisdn))
						<input type="checkbox" name="pid[]" value="{{ $val->i_product_id }}">
						@else X
						@endif
					</td>
					<td>{{ $val->i_product_id }}</td>
					<td>{{ $val->v_dds_sn }}</td>
					<td>{{ $val->v_sn }}</td>
					<td>{{ $val->v_modem_sn }}</td>
					<!--td>{{ $val->v_simcard_serial }}</td-->
					<td>{{ $val->v_simcard_msisdn }}</td>
					<td>{{ $val->v_status }}</td>
					<td>{{ $val->i_user_create }}</td>
					<td>{{ $val->i_user_modify }}</td>
					<td>{{ $val->created_at }}</td>
					<td>{{ $val->updated_at }}</td>
					<td><a href="edit_product/{{$val->i_product_id}}">Update</a></td>
					<td>Delete</td>
				</tr>
			@endforeach
			<tr><td colspan="15">
				<div class="box-footer">
					<input type="submit" name='submit' class="btn btn-primary" value="Print">
				</div>
				</td>
			</tr>
			{{ Form::close() }}
			</tbody>
		</table>
</div>
{{ $data->links() }}
@stop