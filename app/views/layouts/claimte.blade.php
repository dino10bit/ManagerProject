<!DOCTYPE html>
<html class="bg-black">
    <head>
        <meta charset="UTF-8">
        <title>&nbsp;</title>
		<!-- bootstrap 3.0.2 -->
        <link href="<?php echo asset('css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="<?php echo asset('css/font-awesome.min.css') ?>" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="<?php echo asset('css/ionicons.min.css') ?>" rel="stylesheet" type="text/css" />
		
		<!-- Theme style -->
        <link href="<?php echo asset('/css/AdminLTE.css') ?>" rel="stylesheet" type="text/css" />
		
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
		<style>
			body {
				font-size:100%;
			}
			table { 
				font-size:100%;
			}
		</style>
    </head>
    <body>
		<section class="content invoice">
			<!-- title row -->
			<!-- info row -->
			<div class="row invoice-info">
				<div class="col-sm-8 invoice-col">
					<img src="<?php echo asset('img/logo-dhs.png') ?>" width="75px"><br />
					<h4><b>FORM CLAIM</b></h4>
				</div><!-- /.col 
				<div class="col-sm-5 invoice-col">
				<h4><b>TRAVELLING EXPENSES</b></h4>
				</div>-->
				<div class="col-sm-5 invoice-col">
					&nbsp;
				</div><!-- /.col -->
			</div><!-- /.row -->
			<h4 class="page-header">
				Travelling Expenses	
			</h4>
			@yield('content')

			<div class="footer" style="clear:both">
				<p>
					<small>
					<ol type="1">
						<li>Incomplete submission will be rejected</li>
						<li>Destination - must include Purpose of Travel</li>
						<li>Car Mileage Claim: 60 cents for 1st 300 km & 50 cents for subsequent travelling</li>
						<li>Motorcyle Mileage Claim: half the rate of Car</li>
						<li>Entertaiment - must include Who & Purpose of Entertaiment (eg. project name)</li>
						<li>Monthly claim of the relevant month must reach Admin Personel before 2nd of the following month</li>
						<li>Monthly claim will be reimbursed in the following month payroll</li>
						<li>Month claim submitted after 2nd of the following month will be reimbursed on the subsequent month</li>
						<li>Claims not submitted within 3 months shall not be reimbuse</li>
					</ol>
					</small>
				</p>
			</div>
			<!-- this row will not appear when printing -->
			<div class="row no-print">
				<div class="col-xs-12">
					<button class="btn btn-default" onclick="window.print();"><i class="fa fa-print"></i> Print</button>
					<!--button class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> Submit Payment</button>
					<button class="btn btn-primary pull-right" style="margin-right: 5px;"><i class="fa fa-download"></i> Generate PDF</button-->
				</div>
			</div>
		</section>
    </body>
	<!-- jQuery 2.0.2 -->
        <script src="<?php echo asset('/js/jquery.min.js') ?>"></script>
		<!-- Bootstrap -->
        <script src="<?php echo asset('/js/bootstrap.min.js') ?>" type="text/javascript"></script>
		<!-- AdminLTE App -->
        <script src="<?php echo asset('/js/AdminLTE/app.js') ?>" type="text/javascript"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="<?php echo asset('/js/AdminLTE/demo.js') ?>" type="text/javascript"></script>
</html>