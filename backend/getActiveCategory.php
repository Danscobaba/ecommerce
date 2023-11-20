<?php

include('../config/db.php');

$query = "SELECT * FROM category WHERE status = 1";
$res = mysqli_query($conn, $query);

if($res && mysqli_num_rows($res) > 0){

    $i = 1;

    while($row = mysqli_fetch_array($res) ){
        $id = $row['id'];
        $name = $row['category_title'];
       
        // $k = $i++;

        echo "<option value='".$id."'>".$name."</option>";
        
    }
}
?>