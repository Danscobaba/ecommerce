<?php
include('../config/db.php');

$uid = $_POST['user_id'];
$products_list = $_POST['products_item'];
$totalAmount = $_POST['grand_total'];
$p_method = $_POST['pay_method'];

if(empty($uid) || $products_list === "" || $totalAmount === "" || $p_method === ""){
    echo json_encode([
        "code" => 401,
        "message" => "All field are required"
    ]);
}else{

    $amount_owed = $p_method == "wallet" ? 0 : $totalAmount;

    //insert query
    $query = "INSERT INTO order_history(user_id,items,grand_total,payment_method,amount_owed,order_status) 
                VALUES('$uid','$products_list','$totalAmount','$p_method','$amount_owed',1)";
    
    $res = mysqli_query($conn, $query);

    if($res){
        if($p_method == "wallet"){
            $que = "SELECT * FROM wallet WHERE user_id = '$uid'";
            $result = mysqli_query($conn,$que);
            if(mysqli_num_rows($result) > 0){
                $row = mysqli_fetch_assoc($result);
                $oldBal = $row['amount'];
                $newBal = $oldBal - floatval($totalAmount);

                $second_query = "UPDATE `wallet` SET `amount`='$newBal' WHERE user_id = '$uid' ";
                $s_res = mysqli_query($conn,$second_query);
                if($s_res){
                    echo json_encode([
                        "code" => 201,
                        "message" => "Order created successfully"
                    ]);
                }else{
                    echo json_encode([
                        "code" => 401,
                        "message" => "Unable to debit you"
                    ]);
                }
            }else{
                echo json_encode([
                    "code" => 401,
                    "message" => "something went wrong"
                ]);
            }
        }else{
            echo json_encode([
                "code" => 201,
                "message" => "Order created successfully"
            ]);
        }
       
    }else{
        echo json_encode([
            "code" => 401,
            "message" => "something went wrong"
        ]);
    }
}

?>