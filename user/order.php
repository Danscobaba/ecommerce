<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Dashboard</title>
  <link href="assets/index.css" rel="stylesheet">
  <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css" type="text/css">
  <script src="../assets/bootstrap/js/popper.js"></script>

  <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
  <style>
    .container {
      min-height: 80vh;
      align-items: center;
    }

    .cardi {
      /* border-radius: 12px; */
      width: 500px;
      min-height: 300px;
      padding: 12px;

      /* box-shadow: 0px 0px 10px #bebebe; */
    }

    .card-history {
      width: 90%;
      min-height: 100px;
      background: whitesmoke;
      border-radius: 12px;
      box-shadow: 0px 0px 10px #bebebe;
      padding: 12px;

    }
  </style>
</head>

<body>
  <?php include("layout/header.php") ?>
  <div class="container d-flex justify-content-center">
    <div class="cardi">
      <h2>Order History</h2>

      <div class="" id="order_list"></div>
    </div>
  </div>

  <script>
    $(document).ready(function() {
      const uid = localStorage.getItem("USER_ID");
      $.ajax({
        type: "GET",
        url: "../backend/getUserOrder.php",
        data: {
          uid: uid
        },

        success: function(response) {
          console.log(response);
          const info = JSON.parse(response);
          if (info.code == 201) {
            const orders = info.data;
            orders.forEach(function(element, index) {
              $("#order_list").append(`
              <div class="card-history my-3">
          <div class="d-flex justify-content-between align-items-center">
            <p>Order No.: #${element['order_id']}</p>
            <p>Date: ${element['order_date_time']}</p>
          </div>
          <div class="d-flex justify-content-between align-items-center">
            <p>Order Status.: ${element.order_status == 1 ? 'Created' : (element.order_status == 2 ? 'Ongoing' :  (element.order_status == 3 ? 'Delivered' : 'Cancelled'))}</p>
            <p>Grand Total: ${element['grand_total']}</p>
          </div>
          <div class="">
            <a class="btn w-100 btn-primary rounded-3" href="./order-details.php?order_id=${element.order_id}">View Details</a>
          </div>
        </div>
      
              `);
            });
          }
        }
      });
    });
  </script>
</body>

</html>