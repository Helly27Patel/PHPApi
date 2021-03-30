<?php

require 'connection.php';

$email = $_REQUEST["email"];
$pwd = $_REQUEST["pwd"];

$db = new DBConnect();
$con = $db->connect();

$checkuser = "SELECT * FROM `student_detail` WHERE `stud_email`='$email' AND `password`='$pwd'";

$result = mysqli_query($con,$checkuser);

if(mysqli_num_rows($result)){
    $response['response']['error'] = 0;
    $response['response']['messsage'] = "Login Successfully";
}else{
    $response['response']['error'] = 1;
    $response['response']['messsage'] = "Login Failed";
}

echo json_encode($response);

?>