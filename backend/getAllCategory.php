<?php

include('../config/db.php');

$query = "SELECT * FROM category ";
$res = mysqli_query($conn, $query);

if($res && mysqli_num_rows($res) > 0){

    $i = 1;

    while($row = mysqli_fetch_array($res) ){
        $id = $row['id'];
        $name = $row['category_title'];
        $status= $row['status'] == 1 ? 'Active' : 'Inactive';
        // $k = $i++;

        echo "<tr>
        <td>$id</td>
        <td>$name</td>
        <td>$status</td>
        <td><button class='btn btn-sm btn-outline-primary'>Edit</button> <button class='btn btn-sm btn-outline-danger'>Delete</button></td>

        </tr>";
        
    }
}
?>