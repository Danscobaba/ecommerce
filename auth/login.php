<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
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
    <div class="container-fluid d-flex " style="min-height: 85vh;">
        <div class="card p-3 m-auto">
            <h2 class="text-center">Welcome Back, Please Login</h2>
            <form id="login_form" class="p-3">
                <div class="form-group mb-3">
                    <label for="email">Email Address</label>
                <input type="email" id="email" class="form-control">
            </div>
            <div class="form-group mb-3">
                    <label for="pass">Password</label>
                <input type="password" id="pass" class="form-control">
            </div>
            <div class="form-group">
                    <a href="./forget-password.php">Forget Password?</a>
                    <button type="submit" class="btn my-3 fw-700 btn-sm w-100 ">Login</button>
                    <p>Don't have an account? <a href="./register.php">Sign up</a></p>
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
      $(document).ready(function(){
        $('form#login_form').submit(function(event) {
                event.preventDefault();
                console.log(event.target);
                var email = $("#email").val();
                var password = $("#pass").val();

                if (email == '') {
                    showError('Please enter your email');
                    return false;
                } else if (password == '') {
                    showError('Please enter your password');
                    return false;
                }else{
                  $.ajax({
                        type: "POST",
                        url: "../backend/login.php",
                        data: {
                            
                            email: email,
                            password: password,
                          
                        },
                        success: function(data) {
                            console.log(data);
                            const info = JSON.parse(data);
                            if (info.code == 201) {
                                localStorage.setItem('USER_ID', info.data.user_id);
                                showSuccess(info.message);

                                if(info.data.user_type == 'USER'){
                                location.href = '../index.php';

                                }else if(info.data.user_type == 'ADMIN'){
                                    location.href = '../admin/index.php';
                                }
                             

                            } else {
                                showError(info.message);
                            }

                            $("#email").val('');
                                 $("#pass").val('');
                        }
                    });
                }

        })

      })
    </script>
</body>
</html>