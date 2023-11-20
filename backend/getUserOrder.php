<?php
include('../config/db.php');

if(!isset($_GET['uid'])){
    header("Location:../auth/login.php"); 
}else{
    $user = $_GET['uid'];
    $query = "SELECT * FROM order_history WHERE user_id='$user'";
    $result = mysqli_query($conn,$query);
    if(mysqli_num_rows($result) == 0){
    }else{
        while($row = mysqli_fetch_assoc($result)){
            $data[] = $row;
        }
        echo json_encode([
            'code' => 201,
            'data' => $data
        ]);
    }
}
?>