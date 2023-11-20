<?php
include('../config/db.php');

if(!isset($_GET['user'])){
    header("Location:../auth/login.php"); 
}else{
    $user = $_GET['user'];
    $query = "SELECT * FROM users WHERE id='$user'";
    $result = mysqli_query($conn,$query);
    if(mysqli_num_rows($result) == 0){
        header("Location:../auth/login.php");
    }else{
        $row = mysqli_fetch_array($result);
        echo json_encode([
            'code' => 201,
            'data' => $row
        ]);
    }
}
?>