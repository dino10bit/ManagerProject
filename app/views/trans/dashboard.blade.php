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
<div class="row">
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-aqua">
                                <div class="inner">
                                    <h3>
                                        {{$data1}}
                                    </h3>
                                    <p>
                                        Planning
                                    </p>
                                </div>
                                <a href="#" class="small-box-footer">
                                    More info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div><!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-green">
                                <div class="inner">
                                    <h3>
                                        {{$data2}}
                                    </h3>
                                    <p>
                                        Wait For PO/DO/WO
                                    </p>
                                </div>
                                <a href="#" class="small-box-footer">
                                    More info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div><!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-yellow">
                                <div class="inner">
                                    <h3>
                                        {{$data3}}
                                    </h3>
                                    <p>
                                        Wait For Product
                                    </p>
                                </div>
                                <a href="#" class="small-box-footer">
                                    More info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div><!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-red">
                                <div class="inner">
                                    <h3>
                                        {{$data4}}
                                    </h3>
                                    <p>
                                        Schedulled
                                    </p>
                                </div>
                                <a href="#" class="small-box-footer">
                                    More info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div><!-- ./col -->
						<div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-maroon">
                                <div class="inner">
                                    <h3>
                                        {{$data5}}
                                    </h3>
                                    <p>
                                        Finish
                                    </p>
                                </div>
                                <a href="#" class="small-box-footer">
                                    More info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div>
						<div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-red">
                                <div class="inner">
                                    <h3>
                                        {{$data6}}
                                    </h3>
                                    <p>
                                        Failed
                                    </p>
                                </div>
                                <a href="#" class="small-box-footer">
                                    More info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div>
						 <div class="col-md-9">
                            <div class="box box-primary">
                                <div class="box-body no-padding">
                                    <!-- THE CALENDAR -->
                                    <div id="calendar"></div>
                                </div><!-- /.box-body -->
                            </div><!-- /. box -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->
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