<nav class="navbar navbar-expand-lg">
    <div class="container-fluid align-items-center">
        <a class="navbar-brand" href="#"><img src="/assets/img/dan-logo.png" height="70px" width="150px" alt="" srcset=""></a>
        <div class="res-cart"  onclick="Cart()" id="cart" style="align-items: center; font-size: 12px; color: grey;">
                    <span><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                            <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                        </svg></span> Cart
        </div>
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasNavbarLabel"><img src="/assets/img/dan-logo.png" height="50px" width="120px" alt="" srcset=""></h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="../index.php">Home</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Category
                        </a>
                        <ul id="menu_category" class="dropdown-menu">
                          
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact Us</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Login/Register
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="../auth/login.php">Login</a></li>
                            <li><a class="dropdown-item" href="../auth/register.php">Register</a></li>

                        </ul>
                    </li>
                </ul>
                <div class="full-cart" id="cart" onclick="Cart()" style="align-items: center; font-size: 12px; color: grey;">
                    <span><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                            <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                        </svg></span> Cart
                </div>
                <div class="search-div">

                    <input type="search" name="" placeholder="search..." id="">

                </div>
            </div>
        </div>
    </div>
</nav>

<script src="../assets/js/jquery.js"></script>
<script src="../assets/js/sweet_alert.js"></script>
<script src="../assets/js/alert.js"></script>

<script>
const cartBtn = document.getElementById("cart");

function Cart(){
   window.location.href = '../cart.php';
}
$(document).ready(function(){
    $.ajax({
        type: "GET",
        url: "../backend/getActCategory.php",
        data: {},
        success:function(data){
            // console.log(data);
            const info = JSON.parse(data);
            // console.log("info=>", info.data[0][1]);
            var da = info.data;
            da.forEach(element => {
                // console.log("array",element);
                $("#menu_category").append(`<li><a class="dropdown-item" href="../category.php?id=${element[0]}">${element[1]}</a></li>`);
            });
        }
    });
});
</script>