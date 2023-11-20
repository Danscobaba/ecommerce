<?php

include('../config/db.php');
$category = $_POST['category'];
$product_name = $_POST['product_name'];
$product_desc = $_POST['product_desc'];
$product_price = $_POST['product_price'];
$product_image = $_FILES['cover_image'];
$discount = $_POST['discount'];
$product_discount_percent = $_POST['product_discount'] == "" ? 0.0 : $_POST['product_discount'];
function generateRandomString($length = 20) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}
if($category == "" || $product_desc == '' || $product_name == "" || $product_price == ""){
    echo json_encode([
        'code' => 401,
        'message' => 'Please fill all fields!'
    ]);
}

$image_tmp = $product_image['tmp_name'];
$image_name = $product_image['name'];
$image_type = explode("/",$product_image['type']);
$image_size = $product_image['size'];

$img_new_name = generateRandomString().'.'.$image_type[1];
if($image_size > 100000){
    echo json_encode([
        'code' => 401,
        'message' => 'Image is too large!'
    ]);
}else{
    $query = "INSERT INTO products (product_name, project_description, category_id, selling_price, discount_status, discount_percentage, product_image,status) 
    VALUES('$product_name', '$product_desc', '$category','$product_price','$discount', '$product_discount_percent', '$img_new_name', 1)";
     $result = mysqli_query($conn, $query);
     if(!$result){
        echo json_encode([
            'code' => 401,
            'message' => 'Something went wrong!'
        ]);
     }else{
        move_uploaded_file($image_tmp, 'uploads/'.$img_new_name);
        echo json_encode([
            'code' => 201,
            'message' => 'Product created successfully'
        ]);
     }

   
   
}
