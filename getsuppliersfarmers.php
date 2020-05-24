<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Content-Type: application/json; charset=UTF-8");
include 'conn.php';

$inputJSON = file_get_contents('php://input');

// $inputJSON = '
// {"emailNumber":"bass@gmail.com",
//     "password":"12345678"
// }';

$input = json_decode($inputJSON, FALSE); //convert JSON into array

$output = array();

if($input == null){
    $stmt = $conn->prepare("SELECT recID, needhavedb.type, item_name, quan, unit, year, month, latitude, longitude, city, province, need_have, date_time, NAME, mobile, email FROM needhavedb INNER JOIN users on needhavedb.userID = users.id;");
}else{
    $stmt = $conn->prepare("SELECT recID, needhavedb.type, item_name, quan, unit, year, month, latitude, longitude, city, province, need_have, date_time, NAME, mobile, email FROM needhavedb INNER JOIN users on needhavedb.userID = users.id WHERE recID = ?;");
    $stmt->bind_param("i",
        $input->id
    );
}

$stmt->execute();
$stmt->bind_result($recID, $type, $item_name, $quan, $unit, $year, $month, $latitude, $longitude, $city, $province, $need_have, $date_time, $name, $mobile, $email);

$tmp = array();
$data = array();

while($stmt->fetch()) {
    // $tmp["id"] = $id;
    // $tmp["type"] = $type;
    // array_push($output, $tmp);
    // $tmp = array("id" => $id,
    //  "recID" => $recID, 
    //  "type" => $type, 
    //  "item_name" => $item_name, 
    //  "quan" => $quan, 
    //  "unit" => $unit, 
    //  "year" => $year, 
    //  "month" => $month, 
    //  "lat" => $latitude, 
    //  "long" => $longitude, 
    //  "city" => $longitude, 
    //  "province" => $province, 
    //  "need_have" => $need_have, 
    //  "date_time" => $date_time, 
    //  "name" => $name, 
    //  "mobile" => $mobile
    // );

    $tmp["id"] = $recID;
    $tmp["type"] = $type; 
    $tmp["item_name"] = $item_name; 
    $tmp["quan"] = $quan;
    $tmp["unit"] = $unit; 
    $tmp["year"] = $year; 
    $tmp["month"] = $month; 
    $tmp["lat"] = $latitude; 
    $tmp["long"] = $longitude; 
    $tmp["city"] = $longitude; 
    $tmp["province"] = $province; 
    $tmp["need_have"] = $need_have; 
    $tmp["date_time"] = $date_time; 
    $tmp["name"] = $name;
    $tmp["mobile"] = $mobile;
    $tmp["email"] = $email;
    
    array_push($data, $tmp);
    
}

$output = array("status" => 200, "message" => "Success", "data" => $data);
//$output = array("result" => $output);
if(empty($data)){
    // $tmp["status"] = 0;
    // $tmp["message"] = "No Data";
    // array_push($output, $tmp);
    $output = array("status" => 0, "message" => "No Data");
    echo json_encode($output);
}else{
    echo json_encode($output);
}

$stmt->close();
$conn->close();
?>