<?php
//$host='localhost';
//$uname='root';
//$pwd='';
//$db="emapz";
//========
 $host='166.62.26.1';
 $uname='agritechno2020'; 
 $pwd='agritechno2020';
 $db="agri";

$conn = new mysqli($host,$uname,$pwd, $db);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$flag['code']=0;
//0 for failed, 1 for success


// prepare and bind
        
$stmt = $conn->prepare("INSERT INTO `needhavedb` (`userID`, `type`, `item_name`, `quan`, `unit`, `year`, `month`, `latitude`, `longitude`, `city`, `province`, `need_have`, `date_time`) 
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, (date_add(now(), INTERVAL 15 hour)));");
$stmt->bind_param("ssssssssssss", $userID, $type, $item_name, $quan, $unit, $year, $month, $lati, $longi, $city, $province, $need_have);


// set parameters and execute
$userID = $_REQUEST['userID'];
$type = $_REQUEST['type'];
$item_name = $_REQUEST['item_name'];
$quan = $_REQUEST['quan'];
$unit = $_REQUEST['unit'];
$year = $_REQUEST['year'];
$month = $_REQUEST['month'];
$lati = $_REQUEST['lati'];
$longi = $_REQUEST['longi'];
$city = $_REQUEST['city'];
$province = $_REQUEST['province'];
$need_have = $_REQUEST['need_have'];


$success = $stmt->execute();

//printf("Error: %s.\n", $stmt->error);

//INSERT INTO `emapz`.`notifs` (`clientUN`, `date_Time`, `lati`, `longi`, `method`) 
//        VALUES ('+639178806503', '2017-11-09 16:46:26', '122.8559436', '10.1737101', 'SMS');
//$success = mysql_query("INSERT INTO notifs (clientUN, lati, longi, helpType) "
//            . " VALUES('$user','$lat','$long','$') ",$con) or die ("error insert");

if($success){
$flag['code']=1;
}
print(json_encode($flag));

?>
