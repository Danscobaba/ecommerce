

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <link href="assets/index.css" rel="stylesheet" > 
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css" type="text/css">
  <script src="../assets/bootstrap/js/popper.js"></script>

  <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<?php include("layout/header.php") ?>
<div class="container p-3">
    <div class="card p-3">
        <div class="text-center">
            
        </div>
        <div class="form-group mb-3">
            <label for="Full Name">Full Name</label>
            <input type="text" class="form-control" name="" id="fullName">
        </div>
        <div class="form-group mb-3">
            <label for="Full Name">Email Address</label>
            <input type="text" name="" class="form-control" id="email">
        </div>
        <div class="form-group mb-3">
            <label for="Full Name">Gender</label>
            <input type="text" name="" class="form-control" id="gender">
        </div>
        <div class="form-group mb-3">
            <label for="Full Name">Phone No.</label>
            <input type="text" name="" class="form-control" id="phone_no">
        </div>
    </div>
</div>

 <!-- Modal -->
 <div class="modal fade" id="addCategoryModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">Edit Profile</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body p-3">
          <form class="p-3" id="add_category">
          <div class="form-group mb-3">
            <label for="Full Name">Full Name</label>
            <input type="text" class="form-control" name="" id="e_fullName">
        </div>

        <div class="form-group mb-3">
            <label for="Full Name">Gender</label>
            <select name="" class="form-control" id="e_gender">
                <option value="1">Male</option>
                <option value="2">Female</option>
                <option value="3">Others</option>

            </select>
        </div>
        <div class="form-group mb-3">
            <label for="Full Name">Phone No.</label>
            <input type="text" name="" class="form-control" id="e_phone_no">
        </div>
            <div class="mb-3 form-group">
              <button type="submit" class="btn btn-sm form-control btn-outline-success">Update</button>
            </div>
          </form>
        </div>

      </div>
    </div>
  </div>


<script>
    $(document).ready(function(){
        const uid = localStorage.getItem("USER_ID");
        $("#fullName,#email,#gender,#phone_no").attr("readonly",true);

        $.ajax({
            type: "GET",
            url: "../backend/getProfile.php",
            data: {user: uid},
            success: function (response) {
                const info = JSON.parse(response)
                if(info.code == 201){
                    const full_name = info.data.full_name;
                    const email = info.data.email;
                    const gender = info.data.gender == 1 ? "Male" : "Female";
                    const phone = info.data.phone_no;
                    console.log(full_name);

                    $("input#fullName").val(full_name);
                    $("input#email").val(email);
                    $("input#gender").val(gender);
                    $("input#phone_no").val(phone);
                    $("input#e_fullName").val(full_name);
                    // $("input#email").val(email);
                    $("#e_gender").val(info.data.gender);
                    $("input#e_phone_no").val(phone);


                }
            }
        });
    });
</script>
</body>
</html>