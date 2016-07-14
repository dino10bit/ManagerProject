@extends('layouts.main')

@section('content')
<div class="box box-primary">
	<div class="box-header">
		<h3 class="box-title">Order Data</h3>
	</div><!-- /.box-header -->
	{{ Form::open(array('url' => 'view_transaksi_blade')) }}
	<div class="box-body"><label>Search: <input type="text" name="q" aria-controls="example1"></label></div>
	{{ Form::close() }}
	@if(Session::has('message'))
		 <div class="alert alert-info">{{ Session::get('message') }}</div>
	@endif
	<div class="box-body table-responsive">
		<table id="example1" class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Owner</th>
					<th>IR-VRN</th>
					<th>PO No.</th>
					<th>RRN No.</th>
					<th>DO No.</th>
					<th>WO No.</th>
					<th>Category</th>
					<th>Type</th>
					<th>BAT</th>
					<th>SIM Type</th>
					<th>Installer</th>
					<th>Status</th>
					<th>Date Action</th>
					<th colspan="3" style="text-align:center">Action</th>
				</tr>
			</thead>
			<tbody>
			@foreach ($data as $val)
				<?php 
					if($val->i_trans_category_id==1) {
						$category = 'Instalation';
					}elseif($val->i_trans_category_id==2){
						$category = 'Maintenance';
					}
					switch ($val->i_status) {
						case 1 : $status = "Planning";
						break;
						case 2 : $status = "Wait PO/DO/WO";
						break;
						case 3 : $status = "Wait Product";
						break;
						case 4 : $status = "Scheduled";
						break;
						case 5 : $status = "Finish";
						break;
						case 6 : $status = "Failed";
						break;
					}
				?>
				<tr>
					<td><a href="{{ url('/') }}/trans/view_detail_transaksi/{{$val->id}}">{{ $val->name }}</a></td>
					<td>{{ $val->v_code }}</td>
					<!--td>{{ $val->v_manufacture_name }}</td>
					<td>{{ $val->v_model_name }}</td-->
					<td>{{$val->i_po_id}}</td>
					<td>{{$val->i_rrn_id}}</td>
					<td>{{$val->i_do_id}}</td>
					<td>{{$val->i_wo_id}}</td>
					<td>{{ $category }}</td>
					<td>{{ $val->product_name }}</td>
					<td>{{ $val->v_product_sn }}</td>
					<td>{{ $val->v_simcard_name }}</td>
					<!--td>{{ $val->v_simcard_msisdn }}</td-->
					<!--td>{{ $val->spec_1 }} {{ $val->spec_2 }} {{ $val->spec_3 }}</td-->
					<td>{{ $val->v_login }}</td>
					<!--td>{{ $val->v_problem }}</td>
					<td>{{ $val->v_remark }}</td-->
					<td>{{ $status }}</td>
					<td>{{ $val->d_date_planning }}</td>
					<td><a href="{{url('/')}}/trans/edit_transaksi/{{$val->id}}">Update</a></td>
					<td><a href="#">Delete</a></td>
				</tr>
			@endforeach
			</tbody>
		</table>
</div>
{{ $data->links() }}
@stop