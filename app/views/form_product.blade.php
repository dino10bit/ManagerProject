
@extends('layouts.main')
 
@section('content')
{{ Form::open(array('url' => 'form_product')) }}
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<div class="box box-primary">
		<div class="box-header">
			<h3 class="box-title">Product Form</h3>
		</div><!-- /.box-header -->
		@if(Session::has('message'))
			 <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
			<div class="box-body">
				<div class="form-group">
					<label for="name">OBU SN</label>
					<input type="text" class="form-control" name="obusn" required id="obusn" placeholder="Enter OBU SN">
					<input type="hidden" class="form-control" name="obusnid" required id="obusnid">
				</div>
				<div class="form-group">
					<label for="type">DDS SN</label>
					<input type="text" class="form-control" name="dds" required id="dds" placeholder="DDS">
					<input type="hidden" class="form-control" name="ddsid" required id="ddsid">
				</div>
				<div class="form-group">
					<label for="sn">Modem SN</label>
					<input type="text" class="form-control" name="modem" required id="modem" placeholder="Modem SN">
					<input type="hidden" class="form-control" name="modemid" required id="modemid">
				</div>
				<div class="form-group">
					<label for="text1">MSISDN SN</label>
					<input type="text" class="form-control" name="msisdn" id="msisdn" placeholder="MSISDN SN">
					<input type="hidden" class="form-control" name="simcardid" id="simcardid">
				</div>
			</div><!-- /.box-body -->

			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
	</div><!-- /.box -->
	{{ Form::close() }}
	
	<SCRIPT LANGUAGE="JavaScript">
		jQuery(document).ready(function() {
			$('#obusn').autocomplete({
				delay: 100,
				type: 'POST',
				source: 'api/get_obu',
				minLength: 3,
				select: function(event, ui) {
					$("input#obusn").val(ui.item.value);
					$("input#obusnid").val(ui.item.id);
				}
			});
			
			$('#dds').autocomplete({
				delay: 100,
				type: 'POST',
				source: 'api/get_dds',
				minLength: 3,
				select: function(event, ui) {
					$("input#dds").val(ui.item.value);
					$("input#ddsid").val(ui.item.id);
				}
			});
			
			$('#modem').autocomplete({
				delay: 100,
				type: 'POST',
				source: 'api/get_modem',
				minLength: 1,
				select: function(event, ui) {
					$("input#modem").val(ui.item.value);
					$("input#modemid").val(ui.item.id);
				}
			});
			
			$('#msisdn').autocomplete({
				delay: 100,
				type: 'POST',
				source: 'api/get_simcard',
				minLength: 3,
				select: function(event, ui) {
					$("input#simcard").val(ui.item.value);
					$("input#simcardid").val(ui.item.id);
				}
			});
		});
	</script>
@stop