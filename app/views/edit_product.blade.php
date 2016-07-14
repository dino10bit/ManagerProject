@extends('layouts.main')
 
@section('content')
{{ Form::open(array('url' => 'form_product')) }}
<script src="//code.jquery.com/jquery-1.10.2.js">
</script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js">
</script>
<div class="box box-primary">
@foreach ($data as $val)
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
					<input type="text" class="form-control" name="obusn" required id="obusn" placeholder="Enter OBU SN" value="{{ $val->v_sn }}">
					<input type="hidden" class="form-control" name="obusnid" id="obusnid" value="{{ $val->i_obu_id }}">
					<input type="hidden" class="form-control" name="old_obusnid" id="old_obusnid" value="{{ $val->i_obu_id }}">
				</div>
				<div class="form-group">
					<label for="type">DDS SN</label>
					<input type="text" class="form-control" name="dds" required id="dds" placeholder="DDS" value="{{ $val->v_dds_sn }}">
					<input type="hidden" class="form-control" name="ddsid" id="ddsid" value="{{ $val->i_dds_id }}" >
					<input type="hidden" class="form-control" name="old_ddsid" id="old_ddsid" value="{{ $val->i_dds_id }}" >
				</div>
				<div class="form-group">
					<label for="sn">Modem SN</label>
					<input type="text" class="form-control" name="modem" required id="modem" placeholder="Modem SN" value="{{ $val->v_modem_sn }}">
					<input type="hidden" class="form-control" name="modemid" id="modemid" value="{{ $val->i_modem_id }}">
					<input type="hidden" class="form-control" name="old_modemid" id="old_modemid" value="{{ $val->i_modem_id }}">
				</div>
				<div class="form-group">
					<label for="text1">MSISDN SN</label>
					<input type="text" class="form-control" name="msisdn" id="msisdn" placeholder="SIMCARD MSISDN" value="{{ $val->v_simcard_msisdn }}">
					<input type="hidden" class="form-control" name="simcardid" id="simcardid" value="{{ $val->i_simcard_id }}">
					<input type="hidden" name="old_simcardid" id="old_simcardid" value="{{ $val->i_simcard_id }}">
					<input type="hidden" name="product_id" id="product_id" value="{{ $val->i_product_id }}">
				</div>
			</div><!-- /.box-body -->

			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
	</div><!-- /.box -->
	@endforeach
	{{ Form::close() }}
<script language="JavaScript">
    jQuery(document).ready(function() {
			$('#obusn').autocomplete({
				delay: 100,
				type: 'POST',
				source: '{{ url('/') }}/api/get_obu',
				minLength: 3,
				select: function(event, ui) {
					$("input#obusn").val(ui.item.value);
					$("input#obusnid").val(ui.item.id);
				}
			});
			
			$('#dds').autocomplete({
				delay: 100,
				type: 'POST',
				source: '{{ url('/') }}/api/get_dds',
				minLength: 3,
				select: function(event, ui) {
					$("input#dds").val(ui.item.value);
					$("input#ddsid").val(ui.item.id);
				}
			});
			
			$('#modem').autocomplete({
				delay: 100,
				type: 'POST',
				source: '{{ url('/') }}/api/get_modem',
				minLength: 3,
				select: function(event, ui) {
					$("input#modem").val(ui.item.value);
					$("input#modemid").val(ui.item.id);
				}
			});
			
			$('#msisdn').autocomplete({
				delay: 100,
				type: 'POST',
				source: '{{ url('/') }}/api/get_simcard',
				minLength: 3,
				select: function(event, ui) {
					$("input#simcard").val(ui.item.value);
					$("input#simcardid").val(ui.item.id);
				}
			});
			
		});
</script>
@stop
