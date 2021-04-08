<?php

require 'connection.php';

$email = $_REQUEST["email"];
$pwd = md5($_REQUEST["password"]);

$db = new DBConnect();
$con = $db->connect();

$checkuser = "SELECT `stud_id`,`stud_name`,`stud_email` FROM `student_detail` WHERE
             `stud_email`='$email' AND `password`='$pwd'";

//echo $checkuser;

$result = mysqli_query($con,$checkuser);

if(mysqli_num_rows($result)>0){
    while($row=$result->fetch_assoc()){
        $response['user'] = $row;
    }
    $response['error'] = 0;
    $response['message'] = "Login Successfully";
}else{
    $response['user']=(object)[];
    $response['error'] = 1;
    $response['message'] = "Username & Password does not match";
}

echo json_encode($response);

?>
