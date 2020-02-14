<?php

define('DB_USER', "agritechno2020"); // db user
define('DB_PASSWORD', "agritechno2020"); // db password
define('DB_DATABASE', "agri"); // database name
define('DB_SERVER', "166.62.26.1"); // db server
 
$conn = mysqli_connect(DB_SERVER,DB_USER,DB_PASSWORD,DB_DATABASE);

//for ph datetime
date_default_timezone_set('Asia/Manila');
$datenow = date('Y-m-d H:i:s');
 
// Check connection
if(mysqli_connect_errno())
{
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

?>