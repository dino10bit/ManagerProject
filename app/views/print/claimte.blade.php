@extends('layouts.claimte')

@section('content') 

<!-- info row -->
<div class="row invoice-info">
	<div class="col-sm-7 invoice-col">Employee No : </div><!-- /.col -->
	<div class="col-sm-4 invoice-col"></div>
	<div class="col-sm-7 invoice-col">Employee Name : <b>&nbsp;{{$master->employee_name}}</b></div>
	<div class="col-sm-4 invoice-col"></div>
	<div class="col-sm-7 invoice-col">Department No. : </div><!-- /.col -->
	<div class="col-sm-4 invoice-col">&nbsp;</div>
	
</div><!-- /.row -->
<hr />
<!-- Table row TE -->
<div class="row">
	<div class="col-xs-12 table-responsive">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Date</th>
					<th>Destination</th>
					<th>KM</th>
					<th>Toll RM</th>
					<th>Amount IDR</th>

				</tr>
			</thead>
			<tbody>
			<?php $sum =0;?>
				@foreach ($detail as $val)
				<tr>
					<td>{{ $val->date_claim }}</td>
					<td>{{ $val->destination }}</td>
					<td>{{ $val->km }}</td>
					<td>{{ $val->toll_rm }}</td>
					<td>{{ $val->amount_idr }}</td>
				</tr>
				<?php 
				 	  $sum += $val->amount_idr;
				?>	
				@endforeach
				<tr>
					<td colspan="4"><b>Total</b></td>
					<td ><?php echo $sum; ?></td>
				</tr>
			</tbody>
		</table>
	</div><!-- /.col -->
</div><!-- /.row -->

<div class="row">
	<div class="col-xs-12 table-responsive">
	<hr />
	</div>
</div>


<div class="row">
	<div class="col-sm-3 invoice-col">
		<small>Employee</small>
	</div>
	<div class="col-sm-1 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-3 invoice-col">
		<small style="text-decoration: underline;">{{$master->employee_name}}</small><br>
		<small>Signature and Date</small>
	</div>
</div>

<div class="row">
	<div class="col-sm-3 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-1 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-3 invoice-col">
		&nbsp;
	</div>
</div>

<div class="row">
	<div class="col-sm-3 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-1 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-3 invoice-col">
		&nbsp;
	</div>
</div>

<div class="row">
	<div class="col-sm-3 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-1 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-3 invoice-col">
		&nbsp;
	</div>
</div>

<div class="row">
	<div class="col-sm-3 invoice-col">
		<small>Approved by Superior</small>
	</div>
	<div class="col-sm-1 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-3 invoice-col">
		<small style="text-decoration: underline;">______________________________________</small><br>
		<small>Signature and Date</small>
	</div>
</div>

<div class="row">
	<div class="col-sm-3 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-1 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-3 invoice-col">
		&nbsp;
	</div>
</div>

<div class="row">
	<div class="col-sm-3 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-1 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-3 invoice-col">
		&nbsp;
	</div>
</div>

<div class="row">
	<div class="col-sm-3 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-1 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-3 invoice-col">
		&nbsp;
	</div>
</div>

<div class="row">
	<div class="col-sm-3 invoice-col">
		<small>Endorsed by Admin</small>
	</div>
	<div class="col-sm-1 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-3 invoice-col">
		<small style="text-decoration: underline;">______________________________________</small><br>
		<small>Signature and Date</small>
	</div>
</div>
<hr />
@stop