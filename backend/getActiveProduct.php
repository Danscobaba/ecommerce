<?php

include('../config/db.php');

$query = "SELECT products.*, category.category_title FROM products LEFT JOIN category ON category.id = products.category_id WHERE category.status = 1 AND products.status = 1 ";
$res = mysqli_query($conn, $query);

// while($row = mysqli_fetch_array($res)){

// }

while($row = $res->fetch_assoc()){
    $products[] = $row;
}

echo json_encode([
    'code' => 201,
    'data' => $products
]);
?>