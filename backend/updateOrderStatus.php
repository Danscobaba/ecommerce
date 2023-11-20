<?php

include('../config/db.php');

$order_status = $_POST['order_status'];
$orderId = $_POST['order_id'];


if(empty($order_status) || empty($orderId)){
    echo json_encode([
        "code" => 401,
        "message" => "All fields are required"
    ]);
}else{
    $query = "UPDATE order_history SET order_status = '$order_status'  WHERE order_id = '$orderId'";
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
