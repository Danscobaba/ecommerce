<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | Ecommerce</title>
    <link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.min.css" type="text/css">
    <script src="/assets/bootstrap/js/popper.js"></script>

    <script src="/assets/bootstrap/js/bootstrap.min.js"></script>
    <link href="/assets/css/index.css" type="text/css" rel="stylesheet">

</head>

<body>
<header>
    <?php include('./includes/header.php'); ?>
</header>
<section>
    <div class="hero-section">
        <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                <button type="butto n" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="5000">

                    <img src="/assets/img/chair-02.png" alt="">
                </div>
                <div class="carousel-caption d-none d-md-block">
                    <h5>First slide label</h5>
                    <p>Some representative placeholder content for the first slide.</p>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="5000">
                <img src="/assets/img/shopper-01.png" alt="...">

                <div class="carousel-caption d-none d-md-block">
                    <h5>Second slide label</h5>
                    <p>Some representative placeholder content for the second slide.</p>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="5000">
                <img src="/assets/img/shopper-2.png" alt="...">

                <div class="carousel-caption d-none d-md-block">
                    <h5>Third slide label</h5>
                    <p>Some representative placeholder content for the third slide.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    </div>

    <div class="p-4">
        <!-- category section -->

        <div class="category-section">
            <h2 class="text-center my-3">All Category</h2>
            <div class="row justify-between-center gap-3" id="home_category">


            </div>
        </div>
        <!-- End of category section -->

        <!-- Start All Products -->
        <div class="product-section">
            <h2 class="text-center my-3">All Products</h2>

            <div id="product_view" class="row gy-4 gx-2 justify-content-center">

            </div>
        </div>

        <!-- End All Products -->
    </div>


</section>
<footer>
    <?php include('./includes/footer.php'); ?>

</footer>

<!-- <script src="./assets/js/jquery.js"></script> -->
<script>
    $.ajax({
        type: "GET",
        url: "../backend/getActiveProduct.php",
        data: {},
        success: function (data) {
            console.log("Products", data);
            const info = JSON.parse(data);
            console.log("info=>", info.data);
            var da = info.data;
            da.forEach(function (element) {
                console.log("array", element);
                $("#product_view").append(`
            <div class="col-6 col-sm-4 col-md-4 col-lg-3">
            <div class="product-card">
              <div class="product-img">
                <img src="backend/uploads/${element.product_image}" alt="">
              </div>
              <div class="product-content">
                <span class="cate">${element['category_title']}</span>
                <h2>${element['product_name']}</h2>
                ${element['discount_status'] == 1 ? "<p> <span id='dis'>- " + element['discount_percentage'] + "%</span> NGN " + (parseFloat(element['selling_price']) - (parseInt(element['discount_percentage']) / 100 * parseFloat(element['selling_price']))).toFixed(2)
                    + " <span>NGN" + element['selling_price'] + "</span></p>" : "<p>NGN" + element['selling_price'] + " </p> "}
                <div class="cate-btn">
                  <button class="btn btn-sm btn-outline-primary add_cart" 
                  data-name="${element['product_name']}" data-id="${element['id']}" 
                  data-sell="${element['selling_price']},${element['discount_status']},${element['discount_percentage']},${element.product_image}"  id="add_cart">Add to cart</button>
                </div>
              </div>
            </div>
          </div>
         
            `);


            });


        }

    });
    $(document).ready(function () {
        $.ajax({
            type: "GET",
            url: "../backend/getActCategory.php",
            data: {},
            success: function (data) {

                const info = JSON.parse(data);

                var da = info.data;
                da.forEach(element => {

                    $("#home_category").append(` <div class="col-6 col-sm-3 col-md-4">
          <div class="category-card" onclick='goto(${element[0]})'>
            <div class="category-card-img">

            </div>
            <h2>${element[1]}</h2>
          </div>
        </div>`);
                });
            }
        });


        $("button#add_cart").click(function () {
            var item = $(this).data("name");
            var id = $(this).data("id");
            var price = $(this).data("sell");
            var info = price.split(',');
            // console.log("selling", info[0]);

            const param = {
                "product_name": item,
                "id": id,
                "selling_price": info[0],
                "discount_percent": info[2],
                "discount": info[1],
                "image": info[3],
                "qty": 1
            }


            getLocal = localStorage.getItem("cart");
            console.log("check", getLocal);
            let product = [];
            let total = 0;
            var check = false;
            if (getLocal) {
                product = JSON.parse(getLocal);
                const df = localStorage.getItem("total");
                total = parseFloat(df);
                product.forEach(element => {
                    if (element.id == param.id) {
                        check = true;
                    }

                });
                if (check == false) {
                    product.push(param)
                    if (param.discount == 1) {
                        const g = parseFloat(param.selling_price) - ((parseInt(param.discount_percent) / 100) * parseFloat(param.selling_price));
                        const sub_total = g * param.qty;
                        total += sub_total
                    }else{
                        const g = parseFloat(param.selling_price) * param.qty;
                    total += g;

                    }
                  
                    localStorage.setItem('total', total);
                    localStorage.setItem("cart", JSON.stringify(product));
                    showSuccess("Product successfully added to cart")


                } else {
                    showError("Product already exist in cart")
                }


            } else {
                product.push(param)
                localStorage.setItem("cart", JSON.stringify(product));
                showSuccess("Product successfully added to cart"+param.discount);
                
                if (param.discount == 1) {
                        const g = parseFloat(param.selling_price) - ((parseInt(param.discount_percent) / 100) * parseFloat(param.selling_price));
                        const sub_total = g * param.qty;
                        total += sub_total
                }else{
                    const g = parseFloat(param.selling_price) * param.qty;
                total += g;
                }
                
                console.log('total', total);
                localStorage.setItem('total', total);


            }

            // product.push(param)
            console.log(product);
        });


    });


    function goto(id) {
        window.location.href = "category.php?id=" + id;
    }
</script>

</body>

</html>