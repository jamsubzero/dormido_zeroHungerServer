<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Content-Type: application/json; charset=UTF-8");
include 'conn.php';

$inputJSON = file_get_contents('php://input');

// $inputJSON = '
//     {
//         "type": 1,
//         "name": "r",
//         "email": "",
//         "mobile": "11111111222", 
//         "password": "12345678"
//     }
// ';

$input = json_decode($inputJSON, false);

$output = array();

$stmtnumber = $conn->prepare("SELECT mobile FROM users WHERE mobile = ?");
$stmtnumber->bind_param("s",$input->mobile);
$stmtnumber->execute();
$mobilen = $stmtnumber->fetch();
$stmtnumber->close();

$stmtemail = $conn->prepare("SELECT users.email FROM users WHERE users.email = ?");
$stmtemail->bind_param("s",$input->email);
if($input->email){
    $stmtemail->execute();
    $emailn = $stmtemail->fetch();
}
$stmtemail->close();

if($mobilen){
    $output = array("status" => 11, "message" => "Mobile Number already exist!");
}else if($emailn){
    $output = array("status" => 12, "message" => "Email Address already exist!");
}else{
    $stmt = $conn->prepare("INSERT INTO users VALUES(NULL,?,?,?,?,MD5(?), '$datenow');");
    $stmt->bind_param("issss",
        $input->type,
        $input->name,
        $input->mobile,
        $input->email,
        $input->password
    );
    if(!$stmt->execute()){
        $output = array("status" => 13, "message" => "Error Inserting New Record");
        echo($stmt->error);
    }else{
        $output = array("status" => 200, "message" => "Registered Successfully");
    }
    //$output = array("status" => 200, "message" => "Registered Successfully");
    $stmt->close();
}

echo json_encode($output);
$conn->close();
?>