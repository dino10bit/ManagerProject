
@extends('layouts.main')
 
@section('content')

<script src="<?php echo asset ('/js/jquery-1.10.2.js')?>"></script>
<script src="<?php echo asset ('/js/jquery-ui.js')?>"></script>
{{ Form::open(array('url' => 'formclaimte')) }}
<div class="box box-primary">
		<div class="box-header">
			<h3 class="box-title">Claim Travelling Expenses</h3><br />
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
	            <label for="name">Employee Name</label>
	            <input type="text" class="form-control" name="employeename" required id="employeename" value={{$role}} readonly>
	            <input type="hidden" class="form-control" name="employeeid" required id="employeeid" value=={{$roleid}} readonly>
        	</div>
		    @endif
		
        <hr /> 
        <div class="box-body table-responsive no-padding" >
        
        <table class="table table-hover" id="table2">
		<caption><b>Detail Claim TE</b></caption>
		<tbody>
		<tr>
			<th >&#10003;</th>
            <th >Date Claim</th>
            <th >Destination</th>
            <th >KM</th>
            <th >Toll RM</td>
            <th >Amount_IDR</th>
			<td ><img src="img/green-plus-md.png" width="24px" height="24px" class="cloneTableRows">&nbsp;<b>Add</b></td>
		</tr>
		<tr><!--class="my_date hasDatepicker"-->
			<td><img src="img/red-minus-md.png" width="24px" height="24px" alt="" class="delRow" style="visibility: hidden"></td>
			<td><input type="date" name="date[]" id="txt" ></td>
			<td><input type="text" name="destination[]" required></td>
			<td><input type="text" name="km[]"></td>
			<td><input type="text" name="toll_rm[]"></td>
			<td><input type="text" name="amount_idr[]" required></td>
			<td></td>
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
		jQuery(document).ready(function() {
			$('#employeename').autocomplete({
				delay: 100,
				type: 'POST',
				source: 'api/get_user',
				minLength: 3,
				select: function(event, ui) {
					$("input#employeename").val(ui.item.value);
					$("input#employeeid").val(ui.item.value);
				}
			});

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

			//	-- Datepicker
			$(".my_date").datepicker({
				dateFormat: 'mm-dd-y',
				//showButtonPanel: true
			});					
			
			// -- Clone table rows
			$(".cloneTableRows").on('click', function(){

				// this tables id
				var thisTableId = $(this).parents("table").attr("id");
			
				// lastRow
				var lastRow = $('#'+thisTableId + " tr:last");
				
				// clone last row
				var newRow = lastRow.clone(true);

				// append row to this table
				$('#'+thisTableId).append(newRow);
				
				// make the delete image visible
				$('#'+thisTableId + " tr:last td:first img").css("visibility", "visible");
				
				// clear the inputs (Optional)
				$('#'+thisTableId + " tr:last td :input").val('');
				
				// new rows datepicker need to be re-initialized
				$(newRow).find('input').each(function(){
					if($(this).hasClass("hasDatepicker")){ // if the current input has the hasDatpicker class
						var this_id = $(this).attr("id"); // current inputs id
						var new_id = this_id +1; // a new id
						$(this).attr("id", new_id); // change to new id
					}
				return false;
				});

			// Delete a table row
			$("img.delRow").click(function(){
				$(this).parents("tr").remove();
				return false;
			});		

			}); //end clone
		});
	</script>
@stop