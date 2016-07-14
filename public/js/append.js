$(function(){
	// GET ID OF last row and increment it by one
	var $lastChar =1, $newRow;
	$get_lastID = function(){
		var $id = $('#append tr:last-child td:first-child input').attr("name");
		//$lastChar = parseInt($id.substr($id.length -1), 10);
		console.log('GET id: ' + $lastChar + ' | $id :'+$id);
		$lastChar = $lastChar + 1;
		
		
		$newRow = "<tr> \
					<td><input type='text' class='date-picker datepicker' name='date[]' id='date' placeholder='Date'/></td> \
					<td><input type='text' class='form-control' name='destination[]' placeholder='Destination'/></td> \
					<td><input type='text' class='form-control' name='km[]' placeholder='Km' /></td> \
				    <td><input type='text' class='form-control' name='toll_rm[]' placeholder='Toll RM'  /></td> \
				    <td><input type='text' class='form-control' name='amount_idr[]' placeholder='Amount IDR' /></td> \
					<td><input type='button' value='Delete Row' class='del_ExpenseRow' /></td> \
				</tr>"
		return $newRow;
	}
	
	// ***** -- START ADDING NEW ROWS
	$('#add_ExpenseRow').on("click", function(){ 
		if($lastChar <= 20){
			$get_lastID();
			$('#append tbody').append($newRow);
		} else {
			alert("Reached Maximum Record of 20");
		};
	});
	
	/*$(".del_ExpenseRow").on("click", function(){ 	
		$;
		$lastChar = $lastChar-2;
	});*/

	$(".del_ExpenseRow").click(function(){
		if($('.del_ExpenseRow tr').size()>1){
		 $('.del_ExpenseRow tr:last-child').remove();
		 }else{
		 alert('1 row should be present in table');
		 }
	});

	$('#date').datepicker();	
});