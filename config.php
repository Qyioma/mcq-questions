<?php
#--------------------------------------------------------------------------------------------------
# isytihar tatarajah mysql
	define('DB_TYPE', 'mysql');
	define('DB_HOST', 'localhost');
	define('DB_NAME', 'apps_randomquestion');
	define('DB_USER', 'root');
	define('DB_PASS', '');
#--------------------------------------------------------------------------------------------------
/*$mysqli = mysqli_connect(DB_HOST, DB_USER, DB_PASS) or
die("Unable to connect to MySQL: " . mysqli_error());
//connect to MySQL server if (!$mysqli)

//if connection failed output error message
if (!mysqli_select_db($mysqli,DB_NAME)) die("Unable to select database: " . mysqli_error());
//if selection fails output error message*/
#--------------------------------------------------------------------------------------------------
$mysqli = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
# error handle
if($mysqli->connect_error)
{
	printf("Connect failed: %s\n", $mysqli->connect_error); exit ;
}
#--------------------------------------------------------------------------------------------------
