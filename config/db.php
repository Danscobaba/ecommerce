<?php

    $serverName = '127.0.0.1:3306';
    $userName = 'root';
    $password = '';
    $databaseName = 'ecommerce';

    $conn = mysqli_connect($serverName,$userName,$password,$databaseName);
    if(!$conn){
        die("Not connected : ". mysqli_connect_error());
    }
    
  
?>  