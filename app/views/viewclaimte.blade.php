@extends('layouts.main')

@section('content')
<div class="box box-primary">
	<div class="box-header">
		<h3 class="box-title">List of Claim TE</h3>
	</div><!-- /.box-header -->
	{{ Form::open(array('url' => 'viewclaimte')) }}
	<div class="box-body">
		<label>Search: <input type="text" name="search" aria-controls="example1" placeholder="Search Employee"></label>
	</div>
	{{ Form::close() }}
	@if(Session::has('message'))
		 <div class="alert alert-info">{{ Session::get('message') }}</div>
	@endif
	<div class="box-body table-responsive">
		<a href = "/viewclaimte">&nbsp;<span class="glyphicon glyphicon-refresh"></span></a>&nbsp;Reload Table
		<table id="allclaimte" class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Employee</th>
					<th>Sum of Claim</th>
					<th>Created At</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
			@foreach ($data as $val)
				<tr>
					
					<td>{{ $val->employee_name }}</td>
					<td>{{ $val->jumlah_claim }}</td>
					<td>{{ $val->created_at }}</td>
					<td><a href='print/claimte/{{$val->id}}'><span class="glyphicon glyphicon-print"></span></a></td>
				</tr>
			@endforeach
			</tbody>
		</table>
</div>
{{ $data->links() }}
@stop