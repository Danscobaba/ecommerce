<?php

include('../config/db.php');

if (empty($_POST['category_name'])) {
    echo json_encode([
        'code' => 401,
        'message' => "Please category name can't be empty"
    ]);
} else {
    $cate_name = $_POST['category_name'];
    $check = "SELECT * FROM category WHERE category_title = '$cate_name'";
    $res = mysqli_query($conn, $check);
    if (mysqli_num_rows($res) > 0) {
        echo json_encode([
            'code' => 401,
            'message' => "Category Already Exist"
        ]);
    } else {
        $query = "INSERT INTO category (category_title, status) VALUES('$cate_name', 1)";
        $result = mysqli_query($conn, $query);
        if ($result) {
            echo json_encode([
                'code' => 201,
                'message' => "Category successfully created"
            ]);
        }else{
            echo json_encode([
                'code' => 401,
                'message' => "Unable to create category $cate_name"
            ]);
        }
    }
}
