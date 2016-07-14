@extends('layouts.trans-dashboard')
 
@section('content')
	<!-- fullCalendar -->
        <link href="<?php echo asset('css/fullcalendar/fullcalendar.css') ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo asset('css/fullcalendar/fullcalendar.print.css') ?>" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="<?php echo asset('css/jquery-ui.css') ?>">
	    <!-- bootstrap 3.0.2 -->
        <link href="<?php echo asset('css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="<?php echo asset('css/font-awesome.min.css') ?>" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="<?php echo asset('css/ionicons.min.css') ?>" rel="stylesheet" type="text/css" />
		
		
	    <!-- Theme style -->
        <link href="<?php echo asset('css/AdminLTE.css') ?>" rel="stylesheet" type="text/css" />

		
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
<div class="box box-primary">
	<div class="box-header">
		<h3 class="box-title">Detail Order Data</h3>
	</div><!-- /.box-header -->
	@if(Session::has('message'))
		 <div class="alert alert-info">{{ Session::get('message') }}</div>
	@endif
	<div class="box-body table-responsive">
		<table id="example1" class="table table-bordered table-striped">
			<thead>
					<?php 
						if($data->i_trans_category_id==1) {
							$category = 'Instalation';
						}elseif($data->i_trans_category_id==2){
							$category = 'Maintenance';
						}
					
					?>
					<tr>
						<td>Owner</td> <td>{{ $data->name }}</td>
					</tr>
					<tr>
						<td>IR-VRN</td> <td>{{ $data->v_code }}</td>
					</tr>
					<tr>
						<td>Merk VRN</td> <td>{{ $data->v_manufacture_name }}</td>
					</tr>	
					<tr>
						<td>Type VRN</td> <td>{{ $data->v_model_name }}</td>
					</tr>
					<tr>
						<td>PO No.</td>  <td>{{$data->i_po_id}}</td>
					</tr>
					<tr>
						<td>RRN No.</td> <td>{{$data->i_rrn_id}}</td>
					</tr>
					<tr>
						<td>DO No.</td> <td>{{$data->i_do_id}}</td>
					</tr>
					<tr>
						<td>WO No.</td> <td>{{$data->i_wo_id}}</td>
					</tr>
					<tr>
						<td>Category</td> <td>{{ $category }}</td>
					</tr>
					<tr>
						<td>Type</td> <td>{{ $data->product_name }}</td>
					</tr>
					<tr>
						<td>BAT</td> <td>{{ $data->v_product_sn }}</td>
					</tr>
					<tr>
						<td>SIM Type</td> <td>{{ $data->v_simcard_name }}</td>
					</tr>
					<tr>
						<td>SIM No.</td> <td>{{ $data->v_simcard_msisdn }}</td>
					</tr>
					<tr>
						<td>Feature</td> <td>{{ $data->spec_1 }} {{ $data->spec_2 }} {{ $data->spec_3 }}</td>
					</tr>
					<tr>
						<td>Problem</td> <td>{{ $data->v_problem }}</td>
					</tr>
					<tr>
						<td>Remark</td> <td>{{ $data->v_remark }}</td>
					</tr>
					<tr>
						<td>Status</td> <td>{{ $data->i_status }}</td>
					</tr>
					<tr>
						<td>Update By</td> <td>{{ $data->update }}</td>
					</tr>
					<tr>
						<td>Date Update</td> <td>{{ $data->date_update }}</td>
					</tr>
				</tr>
			</thead>
			<?php
				$i = 1;
			?>
			<tr>
				<td colspan="2"><strong>Detail Data</strong></td>
			</tr>
				@foreach ($dataDetail as $val)
				<tr>
					<td colspan="2">{{$i}}</td>
				</tr>	
					<tr>
						<td>Installer</td> <td>{{$val->v_login}}</td>
					</tr>
					<tr>
						<td>Date Action</td> <td>{{$val->d_date_planning}}</td>
					</tr>
					<tr>
						<td>Status</td> <td>{{$val->i_status}}</td>
					</tr>
					<tr>
						<td>Remark</td> <td>{{$val->v_remarks}}</td>
					</tr>
					<tr>
						<td>Update By</td> <td>{{ $val->update }}</td>
					</tr>
					<tr>
						<td>Date Update</td> <td>{{ $val->date_update }}</td>
					</tr>
				<?php $i++; ?>
				@endforeach
		</table>
		<?php //exit;?>
</div>
<div class="row">
 <div class="col-md-9">
			<div class="box box-primary">
				<div class="box-body no-padding">
					<!-- THE CALENDAR -->
					<div id="calendar"></div>
				</div><!-- /.box-body -->
			</div><!-- /. box -->
		</div><!-- /.col -->
	</div>
</div>
 <!-- jQuery 2.0.2 -->
        <script src="<?php echo asset('/js/jquery.min.js') ?>"></script>
        <!-- jQuery UI 1.10.3 -->
        <script src="<?php echo asset('/js/jquery-ui-1.10.3.min.js') ?>" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="<?php echo asset('/js/bootstrap.min.js') ?>" type="text/javascript"></script>
        <!-- AdminLTE App -->
        <script src="<?php echo asset('/js/AdminLTE/app.js') ?>" type="text/javascript"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="<?php echo asset('/js/AdminLTE/demo.js') ?>" type="text/javascript"></script>
		
						<!-- fullCalendar -->
        <script src="<?php echo asset('/js/plugins/fullcalendar/fullcalendar.min.js') ?>" type="text/javascript"></script>
	
					 <!-- Page specific script -->
        <script type="text/javascript">
            $(function() {

                /* initialize the external events
                 -----------------------------------------------------------------*/
                function ini_events(ele) {
                    ele.each(function() {

                        // create an Event Object
                        // it doesn't need to have a start or end
                        var eventObject = {
                            title: $.trim($(this).text()) // use the element's text as the event title
                        };

                        // store the Event Object in the DOM element so we can get to it later
                        $(this).data('eventObject', eventObject);

                        // make the event draggable using jQuery UI
                        $(this).draggable({
                            zIndex: 1070,
                            revert: true, // will cause the event to go back to its
                            revertDuration: 0  //  original position after the drag
                        });

                    });
                }
                ini_events($('#external-events div.external-event'));

                /* initialize the calendar
                 -----------------------------------------------------------------*/
                //Date for the calendar events (dummy data)
                var date = new Date();
                var d = date.getDate(),
                        m = date.getMonth(),
                        y = date.getFullYear();
                $('#calendar').fullCalendar({
                    header: {
                        left: 'prev,next today',
                        center: 'title',
                        right: 'month,agendaWeek,agendaDay'
                    },
                    buttonText: {//This is to add icons to the visible buttons
                        prev: "<span class='fa fa-caret-left'></span>",
                        next: "<span class='fa fa-caret-right'></span>",
                        today: 'today',
                        month: 'month',
                        week: 'week',
                        day: 'day'
                    },
                    //Random default events
                    events: [
					<?php foreach ($sched as $key=>$val) { 
						$y = date('Y',strtotime($val->d_date_planning));
						$m = date('m',strtotime($val->d_date_planning));
						$d = date('d',strtotime($val->d_date_planning));
						$h = date('H',strtotime($val->d_date_planning)); 
						$i = date('i',strtotime($val->d_date_planning)); 
						//$h = 10;
						//$i = 30;
						$m = $m-1;
					?>
                        {
                            title: '<?php echo $val->name." || ".$val->v_code." || ".$val->v_login ?>',
                            start: new Date(<?php echo $y ?>, <?php echo $m ?>, <?php echo $d ?>, <?php echo $h ?>,<?php echo $i ?>),
							allDay: false,
							backgroundColor: "#f56954", //red
                            borderColor: "#f56954" //red
                        },
					<?php } ?>
                    ],
                   
                });
            });
        </script>
@stop