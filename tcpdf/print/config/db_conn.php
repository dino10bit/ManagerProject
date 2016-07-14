<?php

$hostname = "localhost";
$database = "obu";
$username = "root";
$password = "";

//server connection
$conn_db = mysql_connect($hostname, $username, $password) 
		   or die("Failed connect to server. Error :".mysql_error()); 
		   
//Pilih Database
$select_db = mysql_select_db($database,$conn_db) 
		or die("Failed select database. Error :".mysql_error());
?>
