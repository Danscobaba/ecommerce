<?php

include('../config/db.php');

$query = "SELECT products.*, category.category_title FROM products Left JOIN category ON products.category_id = category.id";
$res = mysqli_query($conn, $query);

if($res && mysqli_num_rows($res) > 0){

    $i = 1;

    while($row = mysqli_fetch_array($res) ){
        $id = $row['id'];
        $name = $row['product_name'];
        $Categoryname = $row['category_title'];
        $discount = $row['discount_status'] == 2 ? 'No' : $row['discount_percentage'].'%';
        $price = $row['selling_price'];
        $image = $row['product_image'];

        $img = "<img src='../backend/uploads/$image' height='40px' width='40px' style='border-radius:50%; border:1px solid #ccc' />";
        $status= $row['status'] == 1 ? 'Active' : 'Inactive';
        // echo $row;
        // $k = $i++;

        echo "<tr valign='middle' class='text-center'>
        <td>$id</td>
        <td>$img</td>
       
        <td>$name</td>
        <td>$Categoryname</td>
        <td>$discount</td>
        <td>N$price</td>

        <td>$status</td>
        <td><button class='btn btn-sm btn-outline-primary'>Edit</button> <button class='btn btn-sm btn-outline-danger'>Delete</button></td>

        </tr>";
        
    }
}
?>