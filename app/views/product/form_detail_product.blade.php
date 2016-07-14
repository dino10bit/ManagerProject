
@extends('layouts.main')
 
@section('content')
<script src="<?php echo asset ('/js/jquery-1.10.2.js')?>"></script>
<script src="<?php echo asset ('/js/jquery-ui.js')?>"></script>
{{ Form::open(array('url' => 'product/form_detail_product')) }}
<div class="box box-primary">
		<div class="box-header">
			<h3 class="box-title">Detail Product Form</h3>
		</div><!-- /.box-header -->
		@if(Session::has('message'))
			 <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
			<div class="box-body">
				<div class="form-group">
					<label for="code">Product Code</label>
					<input type="text" class="form-control" required name="code" id="code" placeholder="Enter Product Code">
					<input type="hidden" class="form-control" name="codeid" required id="codeid">
				</div>
				<div class="form-group">
					<label for="name">Product SN</label>
					<input type="text" class="form-control" required name="sn" placeholder="Inter Product SN">
				</div>
				<div class="form-group">
					<label for="text1">Text 1</label>
					<input type="text" class="form-control" name="Text1" placeholder="Enter Text1">
				</div>
				<div class="form-group">
					<label for="text2">Text 2</label>
					<input type="text" class="form-control" name="Text2" placeholder="Enter Text2">
				</div>
				<div class="form-group">
					<label for="text3">Text 3</label>
					<input type="text" class="form-control" name="Text3" placeholder="Text3">
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
			$('#code').autocomplete({
				delay: 100,
				type: 'POST',
				source: '{{ url("/") }}/api/get_master_product',
				minLength: 3,
				select: function(event, ui) {
					$("input#code").val(ui.item.value);
					$("input#codeid").val(ui.item.id);
				}
			});
		});
	</script>
@stop