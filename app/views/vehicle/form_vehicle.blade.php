	
@extends('layouts.main')
 
@section('content')

<script src="<?php echo asset ('/js/jquery-1.10.2.js')?>"></script>
<script src="<?php echo asset ('/js/jquery-ui.js')?>"></script>
{{ Form::open(array('url' => 'vehicle/form_vehicle')) }}
<div class="box box-primary">
	<div class="box-header">
		<h3 class="box-title">IR-VRN</h3>
	</div><!-- /.box-header -->
	@if (Session::has('message'))
	   <div class="alert alert-info">{{ Session::get('message') }}</div>
	@endif
	<!-- form start -->
		<div class="box-body">
			<div class="form-group">
				<label for="v_vehicle_name">IR-VRN Name</label>
				<input type="text" class="form-control" name="v_vehicle_name" id="v_vehicle_name" placeholder="Enter Type Name">
			</div>

			<div class="form-group">
				<label for="name">Owner</label>
				<input type="text" class="form-control" name="ownername" required id="ownername" placeholder="Enter Owner" >
				<input type="hidden" class="form-control" name="ownerid" required id="ownerid">
			</div>

			<div class="form-group">
			<label for="vmanufacture">Type VRN</label>
				{{ Form::select('vmodel',   $vmodel + array_merge(array('null'=> 'Please Select ...')), 'null', array('class' => 'form-control', 'id'=> 'vmodel')) }}
			</div>

			<div class="form-group">
				<label for="v_engine_no">Engine Number</label>
				<input type="text" class="form-control" name="v_engine_no" id="v_engine_no" placeholder="Enter Engine No">
			</div>

			<div class="form-group">
				<label for="v_chasis_no">Chasis Number</label>
				<input type="text" class="form-control" name="v_chasis_no" id="v_chasis_no" placeholder="Enter Chasis No">
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
			$('#ownername').autocomplete({
				delay: 100,
				type: 'POST',
				source: '{{ url("/") }}/api/get_owner',
				minLength: 3,
				select: function(event, ui) {
					$("input#ownername").val(ui.item.value);
					$("input#ownerid").val(ui.item.id);
				}
			});
		});
	</script>
@stop