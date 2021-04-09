<?php
require 'connection.php';

$id = $_REQUEST["studid"];
$username = $_REQUEST["studname"];
$email = $_REQUEST["studemail"];

$db = new DBConnect();
$con = $db->connect();

$updateUser = "UPDATE `student_detail` SET `stud_email`='$email',`stud_name`='$username' WHERE `stud_id`='$id'";

$result = mysqli_query($con,$updateUser);

if($result>0){
    $fetchUserDetail = "SELECT `stud_id`,`stud_name`,`stud_email` FROM `student_detail` WHERE 
    `stud_email`='$email'";
    $checkResult = mysqli_query($con,$fetchUserDetail);

    if(mysqli_num_rows($checkResult) > 0){
        while($row=$checkResult->fetch_assoc()){
            $response['user'] = $row;
        }
        $response['error'] = 0;
        $response['message'] = "Student Data Updated Successfully.";
    }
}else{
    $response['user']=(object)[];
    $response["error"] = 1;
    $response["message"] = "Student Update Failed!";
}

echo json_encode($response);



?>