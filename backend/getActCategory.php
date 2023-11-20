<?php

include('../config/db.php');

$query = "SELECT * FROM category WHERE status = 1";
$res = mysqli_query($conn, $query);


echo json_encode([
    'code' => 201,
    'data' => mysqli_fetch_all($res)
]);
?>