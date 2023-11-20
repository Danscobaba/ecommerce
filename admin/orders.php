<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
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
                <h2 class="text-muted">All Orders</h2>
                <div class="card my-3 p-3">

                    <div class="table-responsive">
                        <table class="table table-responsive table-striped table-hover">
                            <thead>
                                <tr class="text-center">
                                    <th>S/No.</th>
                                    <th>Order No.</th>
                                    <th>Full Name</th>
                                    <th>Email</th>
                                
                                    <th>Total Price</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody id="order_body">
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>

        </div>
    </div>

    <script>
    function getCategory(){
      $.ajax({
        method: 'GET',
        url: '../backend/getAllCategory.php',
        data: {},
        success: function(data) {
          console.log(data);
          $("#cate-body").html(data);

        }
      });
    }
    $(document).ready(function() {
   
  getOrder();
     function getOrder(){
      $.ajax({
          method: 'GET',
          url: '../backend/getAllOrder.php',
         data: {},
          success: function(data) {
          const info = JSON.parse(data);
          if(info.code === 201){
            console.log(data);
            let orders = info.data;
            orders.forEach(function(element, index){
              $("#order_body").append(`
              <tr class="text-center">
                                    <td>${index + 1}</td>
                                    <td>OrderNo. ${element.order_id}</td>
                                    <td>${element.full_name}</td>
                                    <td>${element.email}</td>
                                    <td>${element.grand_total}</td>
                                    <td>${element.order_status == 1 ? 'Created' : (element.order_status == 2 ? 'Ongoing' :  (element.order_status == 3 ? 'Delivered' : 'Cancelled'))}</td>
                                    <td><a class='btn btn-sm btn-outline-primary' href="./order-details.php?order_id=${element.order_id}">View</a></td>

                                </tr>
              `);
            });
          }
          

          }
        });
     }
    });
  </script>

</body>

</html>