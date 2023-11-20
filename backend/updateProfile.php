<?php

include('../config/db.php');

$full_name = $_POST['full_name'];
$senderId = $_POST['user_id'];
$gender = $_POST['gen'];
$mobile = $_POST['mobile_no'];
$address = $_POST['home'];

if(empty($full_name) || empty($senderId) || empty($gender) || empty($mobile) || empty($address)){
    echo json_encode([
        "code" => 401,
        "message" => "All fields are required"
    ]);
}else{
    $query = "UPDATE users SET full_name = '$full_name', gender = '$gender', phone_no = '$mobile', address = '$address' WHERE id = '$senderId'";
    $res = mysqli_query($conn,$query);
    if($res){
        echo json_encode([
            "code" => 201,
            "message" => "Update successfully"
        ]);
    }else{
        echo json_encode([
            "code" => 405,
            "message" => "Something went wrong"
        ]);
    }
}
