<?php
//$host='localhost';
//$uname='root';
//$pwd='';
//$db="emergencydb";
//========
 $host='148.66.138.153';
 $uname='emergencyRoot'; 
 $pwd='emergencyPass';
 $db="emergencydb";

//$conn = new mysqli($host,$uname,$pwd, $db);

//$stmt = $conn->prepare("SELECT * FROM needhavedb WHERE `type` = ? AND item_name = ?");

// Create connection
$conn = mysqli_connect($host, $uname, $pwd, $db);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$needhave = $_GET['needhave'];
$year = $_GET['year'];
$month = $_GET['month'];
$type = $_GET['type'];
$item = $_GET['item'];

$sql = "SELECT * FROM needhavedb WHERE  1=1 ";

if($needhave != '-1'){
    $sql = $sql . " AND need_have = '" . $needhave ."' ";
}

if($year != '-1'){
    $sql = $sql . " AND `year` = '" . $year ."' ";
}

if($month != '-1'){
    $sql = $sql . " AND `month` = '" . $month ."' ";
}

if($type != '-1'){
   $sql = $sql . " AND `type` = '" . $type ."' ";
}

if($item != '-1'){
   $sql = $sql . " AND `item_name` = '" . $item ."' ";
}

 // NOTE* THIS IS REQUIRED IN THE APP
 // NOTE* THIS IS OPTIONAL BUT WE USE "OR"

//echo $sql;

//$sql = "SELECT * FROM needhavedb WHERE type = '".$type."' AND item_name = '" .$item. "'";

$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    $rows = array();
    while ($row = mysqli_fetch_array($result)) {

        $rows[] = $row;
    }

    echo json_encode($rows);
} else {
    echo "-1";
}

mysqli_close($conn);
?>
