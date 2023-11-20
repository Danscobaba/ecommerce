<?php
include('./config/db.php');

if(!isset($_GET['id']) || empty($_GET['id'])){
    header('Location: index.php');
    exit();
}else{
    $id = $_GET['id'];
    $check_category_exist = "SELECT * FROM category WHERE id = '$id'";
    $res = mysqli_query($conn, $check_category_exist);
    if(mysqli_num_rows($res) > 0){
        $query = "SELECT products.*, category.category_title FROM products LEFT JOIN category ON products.category_id = category.id WHERE category_id = '$id' AND products.status = 1";
        $result = mysqli_query($conn, $query);
     
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category</title>
    <link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.min.css" type="text/css">
    <script src="/assets/bootstrap/js/popper.js"></script>

    <script src="/assets/bootstrap/js/bootstrap.min.js"></script>
    <link href="/assets/css/index.css" type="text/css" rel="stylesheet">
    <link href="/assets/css/category.css" type="text/css" rel="stylesheet">


</head>

<body>
    <header>
        <?php include('./includes/header.php'); ?>
    </header>
    <section class="p-4">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="./index.php">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Category</li>
            </ol>
        </nav>
        <div class="filter d-flex justify-content-between">
            <div class="">
                <label>Sort by:</label>
                <select name="" id="">
                    <option value="">asc</option>
                    <option value="">desc</option>
                    <option value="">lowest price</option>
                    <option value="">highest price</option>
                    <option value="" selected>default</option>
                </select>
            </div>
            <div class="">
                <label for="">Search for:</label>
                <input type="search" placeholder="Search a product">
            </div>
        </div>

        <div class="categ">
            <div class="cate-row">
                <?php
            if(mysqli_num_rows($result) > 0){
            
            while($row = mysqli_fetch_assoc($result)){
                $product_id = $row['id'];
                $name = $row['product_name'];
                $Categoryname = $row['category_title'];
                $discount = $row['discount_status'];
                $discount_price =   ($row['discount_percentage'] / 100) * $row['selling_price'];
                                $price = $row['selling_price'];
                $image = $row['product_image'];
                $new_selling = $price - $discount_price;
                $product_price = $discount == 1 ? "<p>NGN $new_selling <span class='ml-2'> NGN $price</span></p>" : "<p>NGN $price</p>";
              
                echo "<div class='cate-col'>
                <div class='product-img'>
                    <img src='/backend/uploads/$image' alt=''>
                </div>
                <div class='product-content'>
                    <span class='cate'>$Categoryname</span>
                    <h2>$name</h2>
                    $product_price
                    <div class='cate-btn'>
                        <button class='btn btn-sm btn-outline-primary' id='add_cart' data-product='$name' >Add to cart</button>
                    </div>
                </div>
            </div>";
            }
        }
        ?>
          
            
            </div>

        </div>
        </div>
    </section>
    <footer>
        <div class="container px-5">
            <div class="row justify-content-center">
                <div class="col-6 col-sm-6 col-lg-4">
                    <h2 class="text-left text-grey-500"> Account</h2>
                    <ul>
                        <li><a href="">Login</a></li>
                        <li><a href="">Register</a></li>
                        <li><a href="">My Order</a></li>
                        <li><a href="">Profile</a></li>

                    </ul>
                </div>
                <div class="col-6 col-sm-6 col-lg-4">
                    <h2 class="text-left text-grey-500">Website</h2>
                </div>
                <div class="col-6 col-sm-6 col-lg-4">
                    <h2 class="text-left text-grey-500">NEWSLETTER</h2>
                    <p class="text-center">To subscribe to our newsletter kindly enter your email</p>
                    <div class="form-group">
                        <input type="email" name="" placeholder="Enter your email" id="">
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script>
        $(document).ready(function(){
            $('#add_cart').click(function(){
                console.log("click to add");
                var product = $(this).attr('data-product');
                console.log(product);
            });
        });
    </script>
</body>

</html>