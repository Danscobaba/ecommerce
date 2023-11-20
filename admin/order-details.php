<?php
if (!$_GET['order_id']) {
    echo "Not avalable";
    header('Location: ../index.php');
    die();
}
include("../config/db.php");
$order_id = $_GET['order_id'];

$query = "SELECT order_history.grand_total as grand_total,order_history.order_id as order_id, order_history.order_status as order_status, users.full_name as full_name,users.address as address, users.phone_no as phone_no, users.email as email, order_history.items as product_order, order_history.order_date_time as order_date   FROM order_history
             LEFT JOIN users ON order_history.user_id = users.id WHERE order_history.order_id = '$order_id'";
$result = mysqli_query($conn, $query);
if (mysqli_num_rows($result) > 0) {


    while ($row = mysqli_fetch_assoc($result)) {
        // $data[] = $row;
        $customer_name = $row['full_name'];
        $address = $row['address'];
        $phone = $row['phone_no'];
        $email = $row['email'];
        $product = $row['product_order'];
        $total = $row['grand_total'];
        $order_date = $row['order_date'];
        $date = date_create($order_date);
        $new_date = date_format($date, "d-M-Y H:i");
        $order_sta = $row['order_status'];
        $order_status = $row['order_status'] == 1 ? 'Created' : ($row['order_status'] == 2 ? 'Ongoing' : ($row['order_status'] == 3 ? 'Delivered' : 'Cancelled'));
    }
    $new_product = json_decode($product);


    //    print_r($data);

    //  echo $data;
} else {
    // echo json_encode([
    //     "code" => 201,
    //     "data" => []
    //    ]);
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Details</title>
    <link rel="stylesheet" href="./assets/index.css">
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css" type="text/css">
    <script src="../assets/bootstrap/js/popper.js"></script>

    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="admin">
        <?php include('./layout/sidebar.php') ?>
        <div class="admin-rest">
            <?php include('./layout/header.php') ?>



            <div class="rest-content p-3">


                <div class="card p-3">
                    <input type="text" id="status_id" value="<?php echo $order_sta ?>" hidden>
                    <div class="row justify-content-between">
                        <div class="col-6">
                            <!-- CUSTOMER'S DETAIL -->

                            <div class="customer-details">
                                <h2>Customer's Details</h2>
                                <div class="d-flex" style="font-size: 10px;">
                                    <h6 class="text-muted">Name: </h6>
                                    <h6 class="mx-3"><?php echo $customer_name ?></h6>
                                </div>
                                <div class="d-flex" style="font-size: 10px;">
                                    <h6 class="text-muted">Address: </h6>
                                    <h6 class="mx-3"><?php echo $address ?></h6>
                                </div>
                                <div class="d-flex" style="font-size: 10px;">
                                    <h6 class="text-muted">Phone No: </h6>
                                    <h6 class="mx-3"><?php echo $phone ?></h6>
                                </div>
                                <div class="d-flex" style="font-size: 10px;">
                                    <h6 class="text-muted">Email: </h6>
                                    <h6 class="mx-3"><?php echo $email ?></h6>
                                </div>
                            </div>

                        </div>
                        <div class="col-6">
                            <!-- CUSTOMER'S DETAIL -->
                            <div class="d-flex justify-content-end">
                                <div class="customer-details">
                                    <h2></h2>
                                    <div class="d-flex" style="font-size: 10px;">
                                        <h6 class="text-muted">Order No.: </h6>
                                        <h6 class="mx-3">#0<?php echo $order_id ?></h6>
                                    </div>
                                    <div class="d-flex" style="font-size: 10px;">
                                        <h6 class="text-muted">Order Status: </h6>
                                        <h6 class="mx-3"><?php echo $order_status ?></h6>
                                    </div>
                                    <div class="d-flex" style="font-size: 10px;">
                                        <h6 class="text-muted">Order Date: </h6>
                                        <h6 class="mx-3"><?php echo $new_date ?></h6>
                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>
                    <hr>
                    <!-- .ITEMS-DETAILS -->
                    <div class="items-details">
                        <h3>Items Details</h3>
                        <table class="table table-striped table-hover my-3" style="font-size: 12px;">
                            <thead>
                                <tr class="text-center">
                                    <th style="width:30px">S/No</th>
                                    <th style="width:70px">Product Image</th>
                                    <th style="width:100px">Product Name</th>
                                    <th style="width:30px">Qty</th>
                                    <th style="width:30px">Discount</th>
                                    <th style="width:30px">Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                // print_r($new_product);
                                $index = 1;
                                foreach ($new_product as $item) {
                                    $p_name = $item->product_name;
                                    $p_discount = $item->discount_percent != 0 ? $item->discount_percent : "-";
                                    $p_image = $item->image;
                                    $p_price = $item->selling_price;
                                    $p_qty = $item->qty;
                                    $i = $index++;
                                    echo "
                               <tr class='text-center'>
                               <td>$i</td>
                               <td><img src='../backend/uploads/$p_image' height='50px' width='50px'></td>
                               <td>$p_name</td>
                               <td>$p_qty</td>
                               <td>$p_discount</td>
                               <td>$p_price</td>
                              </tr>
                               ";
                                }
                                ?>

                            </tbody>
                            <tfoot>
                                <tr>
                                    <th colspan="6">
                                        <div class="d-flex justify-content-end">
                                            <h6>Grand Total:</h6>
                                            <h6 class="mx-3"><?php echo $total ?></h6>
                                        </div>
                                    </th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>

                    <div class="order-change">
                        <label for="order">Change Order Status</label>
                        <select name="order_change" id="order_change">
                            <option value="1">Created</option>
                            <option value="2">Ongoing</option>
                            <option value="3">Delivered</option>
                            <option value="4">Cancelled</option>

                        </select>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script>
        $(document).ready(function() {
            const id_sta = $("#status_id").val();
            $("#order_change").val(id_sta);
            $("#order_change").change(function(event) {
                event.preventDefault();
                console.log("order status", event.target.value);
                const new_status = event.target.value;

                $.ajax({
                    type: "POST",
                    url: "../backend/updateOrderStatus.php",
                    data: {
                        order_id: <?php echo $order_id ?>,
                        order_status:new_status
                    },
                   
                    success: function (res) {
                        console.log(res)
                            const info = JSON.parse(res);
                            if(info.code == 201){
                                showSuccess(info.message);
                              window.location.reload(true);
                            }else{
                                showError(info.message);
                            }
                    }
                });
            });
        });
    </script>
</body>

</html>