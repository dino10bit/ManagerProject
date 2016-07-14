	
@extends('layouts.main')
 
@section('content')
<script src="<?php echo asset ('/js/jquery-1.10.2.js')?>"></script>
<script src="<?php echo asset ('/js/jquery-ui.js')?>"></script>
{{ Form::open(array('url' => 'trans/form_transaksi')) }}
<div class="box box-primary">
		<div class="box-header">
			<h3 class="box-title">Transactions</h3>
		</div><!-- /.box-header -->
		@if (Session::has('message'))
		   <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
			<div class="box-body">
				<div class="form-group">
					<label for="owner">Owner</label>
					<input type="text" class="form-control" name="owner" required id="owner" placeholder="Enter Owner" >
					<input type="hidden" class="form-control" name="ownerid" required id="ownerid">
				</div>
				<div class="form-group">
					<label for="vehicle">Vehicle</label>
					<input type="text" class="form-control" name="vehicle" id="vehicle" placeholder="Enter Vehicle" >
					<input type="hidden" class="form-control" name="vehicleid" id="vehicleid">
				</div>
				<div class="form-group">
					<label for="po">PO Number</label>
					<input type="text" class="form-control" name="po" id="po" placeholder="Enter PO Number" >
					<input type="hidden" class="form-control" name="poid" id="poid">
				</div>
				<div class="form-group">
					<label for="rrn">RRN Number</label>
					<input type="text" class="form-control" name="rrn" id="rrn" placeholder="Enter RRN Number" >
					<input type="hidden" class="form-control" name="rrnid" id="rrnid">
				</div>	
				<div class="form-group">
					<label for="do">DO Number</label>
					<input type="text" class="form-control" name="do" id="do" placeholder="Enter DO Number" >
					<input type="hidden" class="form-control" name="doid" id="doid">
				</div>
				<div class="form-group">
					<label for="wo">WO Number</label>
					<input type="text" class="form-control" name="wo" id="wo" placeholder="Enter WO Number" >
					<input type="hidden" class="form-control" name="woid" id="woid">
				</div>
				<div class="form-group">
					<label for="category">Category</label>
					<select name="category" class="form-control">
						<option value="---">Select Category</option>
						<option value="1">Maintenance</option>
						<option value="2">Installation</option>
					</select>
				</div>
				<div class="form-group">
					<label for="product">Type Product</label>
					<input type="text" class="form-control" name="product" required id="product" placeholder="Enter Product" >
					<input type="hidden" class="form-control" name="productid" required id="productid">
				</div>
				<div class="form-group">
					<label for="productsn">Product SN</label>
					<input type="text" class="form-control" name="productsn" id="productsn" placeholder="Enter Product SN" >
					<input type="hidden" class="form-control" name="productsnid" id="productsnid">
				</div>
				<div class="form-group">
					<label for="simcard">Simcard</label>
					<input type="text" class="form-control" name="simcard" id="simcard" placeholder="Enter Simcard" >
					<input type="hidden" class="form-control" name="simcardid" id="simcardid">
				</div>
				<div class="form-group">
					<label for="problem">Problem</label>
					<input type="text" class="form-control" name="problem" id="problem" placeholder="Enter Problem" >
				</div>
				<div class="form-group">
					<label for="remark">Remark</label>
					<input type="text" class="form-control" name="remark" id="remark" placeholder="Enter Remark" >
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
			$('#owner').autocomplete({
				delay: 100,
				type: 'POST',
				source: '{{ url("/") }}/api/get_owner',
				minLength: 3,
				select: function(event, ui) {
					$("input#owner").val(ui.item.value);
					$("input#ownerid").val(ui.item.id);
				}
			});
			$('#vehicle').autocomplete({
				delay: 100,
				type: 'GET',
				source: '{{ url("/") }}/api/get_vehicle',
				minLength: 3,
				select: function(event, ui) {
					$("input#vehicle").val(ui.item.value);
					$("input#vehicleid").val(ui.item.id);
				}
			});
			
			$('#product').autocomplete({
				delay: 100,
				type: 'GET',
				source: '{{ url("/") }}/api/get_product',
				minLength: 3,
				select: function(event, ui) {
					$("input#product").val(ui.item.value);
					$("input#productid").val(ui.item.id);
				}
			});
			
			$('#productsn').autocomplete({
				delay: 100,
				type: 'GET',
				source: '{{ url("/") }}/api/get_detail_product',
				minLength: 3,
				select: function(event, ui) {
					$("input#productsn").val(ui.item.value);
					$("input#productsnid").val(ui.item.id);
				}
			});
		
			$('#simcard').autocomplete({
				delay: 100,
				type: 'GET',
				source: '{{ url("/") }}/api/get_new_simcard',
				minLength: 3,
				select: function(event, ui) {
					$("input#simcard").val(ui.item.value);
					$("input#simcardid").val(ui.item.id);
				}
			});
		});
	</script>
@stop