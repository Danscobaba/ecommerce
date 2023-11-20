<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css" type="text/css">
    <script src="../assets/bootstrap/js/popper.js"></script>

    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <link href="../assets/css/index.css" type="text/css" rel="stylesheet">
    <link href="../assets/css/auth.css" type="text/css" rel="stylesheet">

</head>

<body>
    <header>
        <?php include('../includes/header.php'); ?>
    </header>

    <section>
        <div class="container-fluid d-flex py-3 " style="min-height: 85vh;">
            <div class="card p-3 m-auto">
                <h2 class="text-center">Create an Account</h2>
                <!-- <p>Please fill</p> -->
                <form id="reg_form" class="px-3">
                    <div class="form-group mb-3">
                        <label for="full_name">Full Name</label>
                        <input type="text" id="full_name" class="form-control">
                    </div>
                    <div class="form-group mb-3">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" class="form-control">
                    </div>
                    <div class="form-group mb-3">
                        <label for="pass">Password</label>
                        <input type="password" id="pass" class="form-control">
                    </div>
                    <div class="form-group mb-3">
                        <label for="cpass">Confirm Password</label>
                        <input type="password" id="cpass" class="form-control">
                    </div>
                    <div class="form-group mb-3">
                        <label for="phone">Phone No.</label>
                        <input type="number" id="phone" class="form-control">
                    </div>
                    <div class="form-group mb-3">
                        <label for="gender">Gender</label>
                        <select name="" id="gender" class="form-control">
                            <option value="" readonly selected>Choose...</option>
                            <option value="1">Male</option>
                            <option value="2">Female</option>
                            <option value="3">Others</option>
                        </select>
                    </div>

                    <div class="form-group">

                        <button type="submit" class="btn my-3 fw-700 btn-sm w-100 ">Create</button>
                        <p>Already have an account? <a href="./login.php">Sign In</a></p>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <footer>
        <?php include('../includes/footer.php'); ?>

    </footer>
    <script src="../assets/js/jquery.js"></script>
    <script src="../assets/js/sweet_alert.js"></script>
    <script src="../assets/js/alert.js"></script>



    <script>
        $(document).ready(function() {
            $('form#reg_form').submit(function(event) {
                event.preventDefault();
                // console.log(event.target);
                var full_name = $("#full_name").val();
                var email = $("#email").val();
                var password = $("#pass").val();
                var confirm_password = $("#cpass").val();
                var phone_no = $("#phone").val();
                var gender = $("#gender").val();

                if (full_name == '') {
                    showError('Please enter your full name');
                    return false;
                } else if (email == '') {
                    showError('Please enter your email');
                    return false;
                } else if (password == '') {
                    showError('Please enter your password');
                    return false;
                } else if (confirm_password != password) {
                    showError('Passwords do not match');
                    return false;
                } else if (phone_no == '') {
                    showError('Please enter your phone number');
                    return false;
                } else if (gender == '') {
                    showError('Please select your gender');
                    return false;
                } else {
                    $.ajax({
                        type: "POST",
                        url: "../backend/signup.php",
                        data: {
                            full_name: full_name,
                            email: email,
                            password: password,
                            phone_no: phone_no,
                            gender: gender
                        },
                        success: function(data) {
                            console.log(data);
                            const info = JSON.parse(data);
                            if (info.code == 201) {
                                 $("#full_name").val();
                                 $("#email").val('');
                                 $("#pass").val('');
                                 $("#cpass").val('');
                                 $("#phone").val('');
                                 $("#gender").val('');
                                 showSuccess(info.message);
                                location.href = './login.php';
                            } else {
                                showError(info.message);
                            }
                        }
                    });
                }
            });
        });
    </script>
</body>

</html>