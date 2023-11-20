<?php
include('../config/db.php');

if(!isset($_POST['email']) && !isset($_POST['password'])){
    echo json_encode([
        'code' => 401,
        'message' => 'Please enter your email and password'
    ]);
}

$email = $_POST['email'];
$password = $_POST['password'];


//to check if user already exists
$query = "SELECT * FROM `users` WHERE `email` = '$email'";

$result = mysqli_query($conn, $query);
if(mysqli_num_rows($result) > 0){
    $nums = mysqli_fetch_assoc($result);
    if(password_verify($password, $nums['password'])){
        
    echo json_encode([
        'code' => 201,
       'message' => 'Loggin successfully',
       'data' => [
        'user_id' => $nums['id'],
        'user_type' => $nums['user_type'] == 1 ? 'USER' : 'ADMIN'
       ]
    ]);
}else{
    echo json_encode([
        'code' => 401,
       'message' => 'Invalid email or password'
    ]);
}
}else{
   
        echo json_encode([
            'code' => 401,
           'message' => 'Invalid email or password'
        ]);
    
}
