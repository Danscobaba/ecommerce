<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
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
                <h2 class="text-center">Reset Password</h2>
                <form class="p-3">
                    <div class="form-group mb-3">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" class="form-control">
                    </div>

                    <div class="form-group">
                        <a href="./login.php">Remember Password? Login</a>
                        <button type="submit" class="btn my-3 fw-700 btn-sm w-100 ">Send reset link</button>

                    </div>
                </form>
            </div>
        </div>
    </section>
</body>

</html>