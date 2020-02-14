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

$stmt = $conn->prepare("SELECT id, users.type, name, mobile, email FROM users WHERE (email = ? OR mobile = ?) AND password = MD5(?);");
$stmt->bind_param("sss",
    $input->emailNumber,
    $input->emailNumber,
    $input->password
);
$stmt->execute();
$stmt->bind_result($id, $type, $name, $mobile, $email);
$tmp = array();

while($stmt->fetch()) {
    // $tmp["id"] = $id;
    // $tmp["type"] = $type;
    // array_push($output, $tmp);
    $data = array("id" => $id, "type" => $type, "name" => $name, "mobile" => $mobile, "email" => $email);
    $output = array("status" => 200, "message" => "Success", "data" => array($data));
}
//$output = array("result" => $output);
if(empty($output)){
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