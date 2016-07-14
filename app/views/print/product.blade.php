@extends('layouts.printdo')

@section('content') 

<!-- info row -->
<div class="row invoice-info">
	<div class="col-sm-7 invoice-col">
		Customer : 
	</div><!-- /.col -->
	<div class="col-sm-4 invoice-col">
				&nbsp;
				</div>
	<div class="col-sm-4 invoice-col">
		DO No. : DHSAND001 - {{$master->i_do_id}}
	</div>
	<div class="col-sm-7 invoice-col">
		Address : 
	</div><!-- /.col -->
	<div class="col-sm-4 invoice-col">
				&nbsp;
				</div>
	<div class="col-sm-4 invoice-col">
		PO No. : 
	</div>
	<div class="col-sm-7 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-4 invoice-col">
				&nbsp;
	</div>
	<div class="col-sm-4 invoice-col">
		Date : {{$master->created_at}}
	</div>
</div><!-- /.row -->

<div class="row invoice-info">
	<div class="col-sm-10 invoice-col">
		Tel No : <br>
		Fax No. : <br> 
		Attn :  <br>
	</div>
</div><!-- /.row -->
<!-- Table row -->

<div class="row">
	<div class="col-xs-12 table-responsive">
		<table class="table">
			<thead>
				<tr>
					<th width="10px">Item</th>
					<th>Particulars</th>
					<th>Set</th>
				</tr>
			</thead>
			@if(count($detail<10)) 
			<tbody>
				<tr>
					<td>1</td>
					<td><strong>Andorid V1</strong> <br>
						@foreach ($detail as $val)
							{{$val->v_product_id}} <br>
						@endforeach
					</td>
					<td>{{count($detail)}}</td>
				</tr>
			</tbody>
			@else
			<tbody>
				<tr>
					<td>1</td>
					<td>Andorid V1</td>
					<td>{{count($detail)}}</td>
				</tr>
			</tbody>
			@endif
		</table>
	</div><!-- /.col -->
</div><!-- /.row -->
<div class="row">
	<div class="col-sm-7 invoice-col">
		<small><i>Received the above mentioned goods/services in </i>
		</small>
	</div>
	<div class="col-sm-2 invoice-col">
				&nbsp;
	</div>
	<div class="col-sm-3 invoice-col">
		<strong>Test</strong>
	</div>
	<div style="clear:both"></div>
	<div class="col-sm-7 invoice-col">
			<small><i>good order and condition</i></small>
	</div>
	<div class="col-sm-4 invoice-col">
				&nbsp;
	</div>
	<div class="col-sm-4 invoice-col">
		&nbsp;
	</div>
</div>
<div class="row">
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
</div>
<div class="row">
	<div class="col-sm-3 invoice-col">
		<small style="text-decoration: overline;">Customer's Signature & Company Stamp</small>
	</div>
	<div class="col-sm-3 invoice-col">
		&nbsp;
	</div>
	<div class="col-sm-3 invoice-col">
		<small style="text-decoration: underline;">Test</small><br>
		<small>Authorised Signatory</small>
	</div>
</div>
@stop