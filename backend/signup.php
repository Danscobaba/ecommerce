<?php
include('../config/db.php');

if(!isset($_POST['full_name']) || !isset($_POST['email'])
 || !isset($_POST['password']) || !isset($_POST['phone_no']) || !isset($_POST['gender'])){
    echo json_encode([
        'code' => 401,
        'message' => 'Please fill in all fields'
    ]);
}

$name = $_POST['full_name'];
$email = $_POST['email'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT);
$phone_no = $_POST['phone_no'];
$gender = $_POST['gender'];

//to check if user already exists
$query = "SELECT * FROM `users` WHERE `email` = '$email'";

$result = mysqli_query($conn, $query);
if(mysqli_num_rows($result) > 0){
    echo json_encode([
        'code' => 401,
       'message' => 'Email already exists'
    ]);
}else{
    $querys = "INSERT INTO `users` (`full_name`, `email`, `password`, `phone_no`, `gender`, `user_type`, `status`) 
                VALUES ('$name', '$email', '$password', '$phone_no', '$gender', 1,1)";
    $results = mysqli_query($conn, $querys);
    if($results){
        echo json_encode([
            'code' => 201,
           'message' => 'User created successfully'
        ]);
    }else{
        echo json_encode([
            'code' => 401,
           'message' => 'Something went wrong'
        ]);
    }
}
