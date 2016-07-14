	
@extends('layouts.main')
 
@section('content')
<script src="<?php echo asset ('/js/jquery-1.10.2.js')?>"></script>
<script src="<?php echo asset ('/js/jquery-ui.js')?>"></script>
{{ Form::open(array('url' => 'trans/edit_transaksi')) }}
<div class="box box-primary">
<?php //print_r($data); ?>
		<div class="box-header">
			<h3 class="box-title">Edit Transaksi</h3>
		</div><!-- /.box-header -->
		@if (Session::has('message'))
		   <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
			<div class="box-body">
				<div class="form-group">
					<label for="status">Status</label>
					<select name="status" class="form-control">
						<option value="0">Please Select..</option>
						<option value="1" <?php if($data->i_status == 1) echo "selected"; ?> >Planning</option>
						<option value="2" <?php if($data->i_status == 2) echo "selected"; ?>>Wait for PO/DO/WO</option>
						<option value="3" <?php if($data->i_status == 3) echo "selected"; ?>>Wait for Product</option>
						<option value="4" <?php if($data->i_status == 4) echo "selected"; ?>>Schedulled</option>
						<option value="5" <?php if($data->i_status == 5) echo "selected"; ?>>Finish</option>
						<option value="6" <?php if($data->i_status == 6) echo "selected"; ?>>Failed</option>
					</select>
				</div>
				<div class="form-group">
					<input type="hidden" name="mas_id" value="{{$data->id}}">
					<label for="owner">Owner</label>
					<input type="text" class="form-control" name="owner" required id="owner" placeholder="Enter Owner" value="{{$data->name}}" >
					<input type="hidden" class="form-control" name="ownerid" value={{$data->i_owner_id}} required id="ownerid">
				</div>
				<div class="form-group">
					<label for="vehicle">Vehicle</label>
					<input type="text" class="form-control" name="vehicle" id="vehicle" value={{$data->v_vehicle_name}} placeholder="Enter Vehicle" >
					<input type="hidden" class="form-control" name="vehicleid" value="{{$data->i_vehicle_id}}" id="vehicleid">
				</div>
				<div class="form-group">
					<label for="po">PO Number</label>
					<input type="text" class="form-control" name="po" id="po" placeholder="Enter PO Number" value="{{$data->i_po_id}}" >
					<input type="hidden" class="form-control" name="poid" id="poid">
				</div>
				<div class="form-group">
					<label for="rrn">RRN Number</label>
					<input type="text" class="form-control" name="rrn" id="rrn" placeholder="Enter RRN Number" value="{{$data->i_rrn_id}}">
					<input type="hidden" class="form-control" name="rrnid" id="rrnid">
				</div>	
				<div class="form-group">
					<label for="do">DO Number</label>
					<input type="text" class="form-control" name="do" id="do" placeholder="Enter DO Number" value="{{$data->i_do_id}}">
					<input type="hidden" class="form-control" name="doid" id="doid">
				</div>
				<div class="form-group">
					<label for="wo">WO Number</label>
					<input type="text" class="form-control" name="wo" id="wo" placeholder="Enter WO Number" value="{{$data->i_do_id}}">
					<input type="hidden" class="form-control" name="woid" id="woid">
				</div>
				<div class="form-group">
					<label for="category">Category</label>
					<select name="category" class="form-control">
						<option value="0">Please Select..</option>
						<option value="1" <?php if($data->i_trans_category_id == 1) echo "selected"; ?> >Installation</option>
						<option value="2" <?php if($data->i_trans_category_id == 2) echo "selected"; ?>>Maintenance</option>
					</select>
				</div>
				<div class="form-group">
					<label for="product">Type Product</label>
					<input type="text" class="form-control" name="product" required id="product" placeholder="Enter Product" value="{{$data->product_name}}" >
					<input type="hidden" class="form-control" name="productid" required id="productid" value="{{$data->i_mas_product_id}}>
				</div>
				<div class="form-group">
					<label for="productsn">Product SN</label>
					<input type="text" class="form-control" name="productsn" id="productsn" placeholder="Enter Product SN" value="{{$data->v_product_sn}}">
					<input type="hidden" class="form-control" name="productsnid" id="productsnid" value="{{$data->i_det_product_id}}">
				</div>
				<div class="form-group">
					<label for="simcard">Simcard</label>
					<input type="text" class="form-control" name="simcard" id="simcard" placeholder="Enter Simcard" value="{{$data->v_simcard_msisdn}}">
					<input type="hidden" class="form-control" name="simcardid" id="simcardid" value="{{$data->i_simcard_id}}">
				</div>
				<div class="form-group">
					<label for="problem">Problem</label>
					<input type="text" class="form-control" name="problem" id="problem" placeholder="Enter Problem" value="{{$data->v_problem}}" >
				</div>
				<div class="form-group">
					<label for="remark">Remark</label>
					<input type="text" class="form-control" name="remark" id="remark" placeholder="Enter Remark" value="{{$data->v_remark}}">
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