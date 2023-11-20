<?php
include('../config/db.php');

$query = "SELECT * FROM users WHERE user_type = 1";

$res = mysqli_query($conn, $query);


 ?>
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
                <h2 class="text-muted">All Users</h2>
                <div class="card my-3 p-3">

                    <div class="table-responsive">
                        <table class="table table-responsive table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>S/No.</th>
                           
                                    <th>Full Name</th>
                                    <th>Email</th>
                                    <th>Phone No.</th>
                                    <th>Gender</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                if (mysqli_num_rows($res) > 0) {

                                    $i = 1;
                                    while ($row = mysqli_fetch_assoc($res)) {
                                        $id = $row['id'];
                              
                                        $fname = $row['full_name'];
                                        $email = $row['email'];
                                        $phone = $row['phone_no'];
                                        $gender = $row['gender'] == 1 ? 'Male' : ($row['gender'] == 2 ? 'Female' : 'Others') ;
                                        $status = $row['status'] == 1 ? 'Active' : 'Inactive';
                                   echo "<tr>
                                   <td>$id</td>
                                        <td>$fname</td>
                                        <td>$email</td>
                                        <td>$phone</td>
                                        <td>$gender</td>
                                        <td>$status</td>
                                        <td><button class='btn btn-sm btn-outline-primary'>Edit</button></td>
                                    </tr>";
                                    }
                                }
                               ?>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>

    </div>
  </div>


</body>

</html>