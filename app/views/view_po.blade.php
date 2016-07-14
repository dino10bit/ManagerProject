@extends('layouts.main')

@section('content')
<div class="box box-primary">
	<div class="box-header">
		<h3 class="box-title">Data PO</h3>
	</div><!-- /.box-header -->
	{{ Form::open(array('url' => 'view_modem')) }}
	<div class="box-body"><label>Search: <input type="text" name="q" aria-controls="example1"></label></div>
	{{ Form::close() }}
	@if(Session::has('message'))
		 <div class="alert alert-info">{{ Session::get('message') }}</div>
	@endif
	<div class="box-body table-responsive">
		<table id="example1" class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Created By</th>
					<th>Created At</th>
					<th>Total Product</th>
					<th style="text-align:center">Action</th>
				</tr>
			</thead>
			<tbody>
			@foreach ($data as $val)
				<tr>
					<td>{{$val->v_login}}</td>
					<td>{{$val->created_at}}</td>
					<td>{{$val->jumlah}}</td>
					<td><a href="../tcpdf/print/print_do.php/?id={{$val->i_do_id}}">Print</a></td>
				</tr>
			@endforeach
			</tbody>
		</table>
</div>
{{ $data->links() }}
@stop