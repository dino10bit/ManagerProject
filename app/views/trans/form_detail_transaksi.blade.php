	
@extends('layouts.main')
 
@section('content')
<script src="<?php echo asset ('/js/jquery-1.10.2.js')?>"></script>
<script src="<?php echo asset ('/js/jquery-ui.js')?>"></script>
{{ Form::open(array('url' => 'trans/form_detail_transaksi')) }}
<div class="box box-primary">
		<div class="box-header">
			<h3 class="box-title">Detail Transactions</h3>
		</div><!-- /.box-header -->
		@if (Session::has('message'))
		   <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
			<div class="box-body">
				<div class="form-group">
					<label for="order">Order</label>
					<input type="text" class="form-control" name="order" required id="order" placeholder="Enter Order" >
					<input type="hidden" class="form-control" name="orderid" required id="orderid">
				</div>
				<div class="form-group">
					<label for="tech">Transaction</label>
					<input type="text" class="form-control" name="tech" id="tech" placeholder="Enter Technician" >
					<input type="hidden" class="form-control" name="techid" id="techid">
				</div>
				<div class="form-group">
					<label for="remark">Remark</label>
					<input type="text" class="form-control" name="remark" id="remark" placeholder="Enter Remark" >
					<input type="hidden" class="form-control" name="remarkid" id="remarkid">
				</div>
				<div class="form-group">
					<label for="status">Status</label>
					<select name="status" class="form-control">
						<option value="---">Select Status</option>
						<option value="1">Schedulled</option>
						<option value="2">Reschedule</option>
						<option value="3">Done</option>
						<option value="4">Failed</option>
					</select>
				</div>
				<div class="form-group">
					<label for="dateplan">Date Planning</label>
					<input type="datetime-local" class="form-control" name="dateplan" id="dateplan" placeholder="Enter Date Planning" >
					<input type="hidden" class="form-control" name="dateplanid" id="dateplanid">
				</div>
			</div><!-- /.box-body -->

			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
	</div><!-- /.box -->
	{{ Form::close() }}
	<SCRIPT LANGUAGE="JavaScript">
		function noenter() {
		  return !(window.event && window.event.keyCode == 13);
		}

		jQuery(document).ready(function() {
			$('#order').autocomplete({
				delay: 100,
				type: 'POST',
				source: '{{ url("/") }}/api/get_transaksi',
				minLength: 3,
				select: function(event, ui) {
					$("input#order").val(ui.item.value);
					$("input#orderid").val(ui.item.id);
				}
			});
			$('#tech').autocomplete({
				delay: 100,
				type: 'GET',
				source: '{{ url("/") }}/api/get_technician',
				minLength: 3,
				select: function(event, ui) {
					$("input#tech").val(ui.item.value);
					$("input#techid").val(ui.item.id);
				}
			});
		});
	</script>
@stop