
@extends('layouts.main')
 
@section('content')

<script src="<?php echo asset ('/js/jquery-1.10.2.js')?>"></script>
<script src="<?php echo asset ('/js/jquery-ui.js')?>"></script>
<script src="<?php echo asset('/js/append.js') ?>"></script>
{{ Form::open(array('url' => '/service/form_service')) }}
<div class="box box-primary">
		<div class="box-header">
			<h3 class="box-title">Service Form</h3><br />
		</div><!-- /.box-header -->
		<br />
		@if(Session::has('message'))
			 <div class="alert alert-info">{{ Session::get('message') }}</div>
		@endif
		<!-- form start -->
		<?php $role = Auth::user()->v_login;
			  $roleid=Auth::user()->i_user_id;?>
		  
		   @if($role == 'Susi')
		   	<div class="form-group">
            	<label for="name">Employee Name</label>
            	<input type="text" class="form-control" name="employeename" required id="employeename" placeholder="Enter Employee Name" >
            	<input type="hidden" class="form-control" name="employeeid" required id="employeeid">
        	</div>
		    @else 
		   	<div class="form-group">
	            <label for="name"> Employee Name</label>
	            <input type="text" class="form-control" name="employeename" required id="employeename" value={{$role}} readonly>
	            <input type="hidden" class="form-control" name="employeeid" required id="employeeid" value={{$roleid}} readonly>
        	</div>
		    @endif
			<div class="form-group">
            	<label for="name">Product SN</label>
            	<input type="text" class="form-control" name="product_id" required id="product_id" placeholder="Enter Product SN" onKeyPress="return noenter()">
         	</div>
			<div class="form-group">
	            <label for="name"> Diagnosis</label>
	            <input type="text" class="form-control" name="diagnosis" required id="diagnosis" placeholder="Enter first diagnosis">
        	</div>
			<div class="form-group">
	            <label for="name"> Action</label>
	            <input type="text" class="form-control" name="action" required id="action " placeholder="Enter service action">
        	</div>
        <hr /> 
        <div class="box-body table-responsive no-padding" >
        
        <table class="table table-hover" id="table2" width="100%">
		<thead>
			<tr>
				<th >&#10003;</th>
				<th >Part Name</th>
				<th >Staff</th>
				<td ><img src="../img/green-plus-md.png" width="24px" height="24px" class="cloneTableRowss" id="Add">&nbsp;<b>Add</b></td>
			</tr>
		<thead>
		<tbody>
			<tr>
				<td><img src="../img/red-minus-md.png" width="24px" height="24px" alt="" class="delRow" style="display: none"></td>
				<td><input type="text" name="part_name" class="part_name" id="txt" size="80" required placeholder="Enter Part Change" autocomplete="off"></td>
				<td><input type="text" name="part_id" class="part_name" id="part_id" size="80" required placeholder="Enter Part Change" autocomplete="off"></td>
				<td><input type="text" name="qty" required placeholder="Enter qty"></td>
				<td><input type = 'hidden' value = '1' name = 'sum' id = 'sum'></td>
			</tr>
		</tbody>
		</table>
		<div class="box-footer">
			<button type="submit" class="btn btn-primary">Save</button>
			<button type="reset" class="btn btn-primary">Reset</button>
		</div>
		
        {{ Form::close() }}
	</div>
		<!-- form end-->
</div><!-- /.box-primary -->

	
	<SCRIPT LANGUAGE="JavaScript">
		function noenter() {
		  return !(window.event && window.event.keyCode == 13);
		}

		jQuery(document).ready(function() {
			$('#employeename').autocomplete({
				delay: 100,
				type: 'POST',
				source: '{{ url("/") }}/api/get_user',
				minLength: 3,
				select: function(event, ui) {
					$("input#employeename").val(ui.item.value);
					$("input#employeeid").val(ui.item.id);
				}
			});
			
			$('.part_name').autocomplete({
				delay: 100,
				type: 'POST',
				source: '{{ url("/") }}/api/get_part',
				minLength: 3,
				select: function(event, ui) {
					$("input#txt").val(ui.item.value);
					$("input#part_id").val(ui.item.id);
				}
			});
			
			//	-- Datepicker
			$(".my_date").datepicker({
				dateFormat: 'mm-dd-y',
				//showButtonPanel: true
			});					
			
			// new clone 
			var count = 1;	
			$("#Add").click(function(e) {	
				e.preventDefault();
				e.stopPropagation();
				var $clone = $("#table2 tbody tr:first").clone();
				$clone.attr({
					//id: "emlRow_" + count,
					//name: "emlRow_" + count,
					//style: "" // remove "display:none"
				});
				$clone.find("input,select").each(function(){
					$(this).attr({
						id: $(this).attr("id") + count,
						name: $(this).attr("name") + count,
						class: "emlRow_" + count,
						//style:"display:block"
					});
				});					
				
				$("img.delRow").click(function(){
					$(this).parents("tr").remove();
					return false;
				});
				
				$('#sum').val(count);
				$("#table2 tbody").append($clone);
				
				// make the delete image visible
				$('#table2 tbody tr:last td:first img').css("display", "block");
				
				// clear the inputs (Optional)
				$('#table2 tr:last td :input').val('');
				
				$('#txt'+count).autocomplete({
					delay: 100,
					type: 'POST',
					source: '{{ url("/") }}/api/get_part',
					minLength: 3,
					select: function(event, ui) {
						//$("input#txt"+count).val(ui.item.id);
						var ccount = count-1;
						alert (ccount);
						$("input#part_id"+ccount).val(ui.item.id);
					}
				});
				
				count++;
			});
			// end new clone
			
		});
	</script>
@stop