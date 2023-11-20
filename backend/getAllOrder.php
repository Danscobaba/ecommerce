<?php
include('../config/db.php');
$query = "SELECT order_history.grand_total as grand_total,order_history.order_id as order_id, order_history.order_status as order_status, users.full_name as full_name, users.email as email  FROM order_history
             LEFT JOIN users ON order_history.user_id = users.id";
$result = mysqli_query($conn, $query);
if(mysqli_num_rows($result) > 0){
   
    
   while($row = mysqli_fetch_assoc($result)){
    $data[] = $row;
   }

//    print_r($data);

   echo json_encode([
    "code" => 201,
    "data" => $data
   ]);
}else{
    echo json_encode([
        "code" => 201,
        "data" => []
       ]);
}
?>