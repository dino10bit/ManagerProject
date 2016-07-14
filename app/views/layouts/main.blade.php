<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Manager | Dashboard</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
		<link rel="stylesheet" href="<?php echo asset('css/jquery-ui.css') ?>">
	   <!-- bootstrap 3.0.2 -->
        <link href="<?php echo asset('css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="<?php echo asset('css/font-awesome.min.css') ?>" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="<?php echo asset('css/ionicons.min.css') ?>" rel="stylesheet" type="text/css" />
        <!-- Date Picker -->
        <link href="<?php echo asset('/css/datepicker/datepicker3.css') ?>" rel="stylesheet" type="text/css" />
        <!-- Daterange picker -->
        <link href="<?php echo asset('/css/daterangepicker/daterangepicker-bs3.css') ?>" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="<?php echo asset('/css/AdminLTE.css') ?>" rel="stylesheet" type="text/css" />

		  <!-- DATA TABLES -->
        <link href="<?php echo asset('/css/dataTables.bootstrap.css') ?>" rel="stylesheet" type="text/css" />

		
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="skin-blue">
        <!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="/" class="logo">
                <!-- Add the class icon to your logo image or logo icon to add the margining -->
                <!--img src="<?php echo asset('img/logo.png') ?>"-->
				Manager
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                        
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="glyphicon glyphicon-user"></i>
                                <span><?php echo  Auth::user()->v_login ?> <i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header bg-light-blue">
                                    <img src="{{ url('/') }}/img/avatar3.png" class="img-circle" alt="User Image" />
                                    <p>
                                        <?php echo  Auth::user()->v_login ?>
                                        <small>Member since <?php echo  Auth::user()->created_at ?></small>
                                    </p>
                                </li>
                             
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="{{ url('/') }}/edit_user/<?php echo  Auth::user()->i_user_id ?>" class="btn btn-default btn-flat">Profile</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="{{ url('/') }}/logout" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
				@include('includes.sidebar')
				<!-- /.sidebar -->
            </aside>

            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">
                <!-- Content Header (Page header) -->
                <ul class="nav nav-pills">
                      <?php 
                      $data = DB::table('users')->get();
                      foreach ($data as $key => $value) {
                          echo '<li><a href="#" style="background-color:white"><b>'.strtoupper($value->v_login).'</b></a></li>';
                      }
                      ?>
                </ul>

                <section class="content-header">
                    <h1>
                        Dashboard
                        <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                </section>  

                <!-- Main content -->
                <section class="content">

                    @yield('content')
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->
	    <!-- add new calendar event modal -->


        <!-- jQuery 2.0.2 -->
        <script src="<?php echo asset('/js/jquery.min.js') ?>"></script>
        <!-- jQuery UI 1.10.3 -->
        <script src="<?php echo asset('/js/jquery-ui-1.10.3.min.js') ?>" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="<?php echo asset('/js/bootstrap.min.js') ?>" type="text/javascript"></script>
        <!-- Sparkline -->
        <script src="<?php echo asset('/js/plugins/sparkline/jquery.sparkline.min.js') ?>" type="text/javascript"></script>
        <!-- daterangepicker -->
        <script src="<?php echo asset('/js/plugins/daterangepicker/daterangepicker.js') ?>" type="text/javascript"></script>
        <!-- datepicker -->
        <script src="<?php echo asset('/js/plugins/datepicker/bootstrap-datepicker.js') ?>" type="text/javascript"></script>
        <!-- iCheck -->
        <script src="<?php echo asset('/js/plugins/iCheck/icheck.min.js') ?>" type="text/javascript"></script>

        <!-- AdminLTE App -->
        <script src="<?php echo asset('/js/AdminLTE/app.js') ?>" type="text/javascript"></script>

        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="<?php echo asset('/js/AdminLTE/dashboard.js') ?>" type="text/javascript"></script>

        <!-- AdminLTE for demo purposes -->
        <script src="<?php echo asset('/js/AdminLTE/demo.js') ?>" type="text/javascript"></script>
		
		<!-- DATA TABES SCRIPT -->
        <script src="<?php echo asset('/js/plugins/datatables/jquery.dataTables.js') ?>" type="text/javascript"></script>
        <script src="<?php echo asset('/js/plugins/datatables/dataTables.bootstrap.js') ?>" type="text/javascript"></script>
        <script src="<?php echo asset('/js/plugins/fullcalendar/fullcalendar.min.js')?>" type="text/javascript"></script>
    </body>
</html>