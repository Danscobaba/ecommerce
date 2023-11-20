<?php
include("../config/db.php");
$uid = $_GET['user_id'];
if(!empty($uid)){
    $query = "SELECT * FROM wallet WHERE user_id = '$uid'";
    $res = mysqli_query($conn,$query);

    if(mysqli_num_rows($res) > 0){
        $row = mysqli_fetch_assoc($res);

        echo json_encode(
            [
                "code" => 201,
                "data" => $row
            ]
            );
    }else{
        echo json_encode([
            "code" => 405,
            "message" => "Something went wrong"
        ]);
    }
}else{
    echo json_encode([
        "code" => 405,
        "message" => "Something went wrong"
    ]);
}
?>