<div class="header">

    <h2>LOGO</h2>
    <ul class="">
        <li><a href="../../index.php">Home</a></li>
        <li><a href="order.php">My Orders</a></li>
        <li><a href="profile.php">My Profile</a></li>
        <li><a id="logout">Logout</a></li>
    </ul>
</div>
<script src="../../assets/js/jquery.js"></script>
    <script src="../../assets/js/sweet_alert.js"></script>
    <script src="../../assets/js/alert.js"></script>
    <script>
        $("#logout").click(function(){
            localStorage.clear();
            window.location.href = "../../auth/login.php";

        });
    </script>