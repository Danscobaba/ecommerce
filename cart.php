<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart</title>
    <link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.min.css" type="text/css">
    <script src="/assets/bootstrap/js/popper.js"></script>

    <script src="/assets/bootstrap/js/bootstrap.min.js"></script>
    <link href="/assets/css/index.css" type="text/css" rel="stylesheet">
    <link href="/assets/css/cart.css" type="text/css" rel="stylesheet">

</head>

<body>
    <header>
        <?php include('./includes/header.php'); ?>
    </header>
    <div class="container p-3" style="min-height: 85vh; display:flex;">
        <div class="cart-full">
            <div class="cart-container">
                <div class="cart-item">
                    <div class="cart-head">
                        <h2 id="cartT">Cart (<span style="color:green; font-weight:700"></span>)Items </h2>
                    </div>
                    <div class="cart-body py-3 px-3 table-responsive">
                        <table id="table" class="table table-striped table-hover table-bordered table-responsive-lg">
                            <thead style="font-size: 14px;">
                                <tr class="text-center table-primary">
                                    <th>S/no</th>
                                    <th>Product Image</th>
                                    <th>Product Name</th>
                                    <th>Product Price</th>
                                    <th>Qty</th>
                                    <th>Sub-Total</th>
                                </tr>
                            </thead>
                            <tbody style="font-size: 12px" id="tbody">


                            </tbody>
                            <tfoot>
                                <tr class="text-end ">
                                    <th>Total:</th>
                                    <th colspan="5">
                                        <h5 id="total" style="color:green"></h5>

                                    </th>
                                </tr>
                                <tr>
                                    <th colspan="6">
                                        <p id="remove_all" style="font-size:11px; color:blue; cursor:pointer; text-decoration:underline">Remove all</p>
                                        <button id="Proceed_payment" data-bs-toggle="modal" data-bs-target="#paymentModal" class="float-end btn btn-outline-secondary">Make Payment</button>
                                    </th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>

                <!-- Modal -->
                <div class="modal fade" id="paymentModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Choose Payment Method</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body p-3">

                                <form class="p-3" id="payment_proceed">
                                    <p>Wallet Balance: <span style="font-size: 12px; color: red" id="wallet"></span></p>
                                    <div class="mb-3 form-group">
                                        <select name="" id="payment_option" class="form-control">
                                            <option value="">Choose payment</option>
                                            <option value="1">Wallet</option>
                                            <option value="2">Pay on Delivery</option>
                                        </select>
                                    </div>
                                    <div class="mb-3 form-group">
                                        <button type="submit" id="proceed_btn" class="btn btn-sm form-control btn-outline-success">Submit</button>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>

                <!--            <div class="cart-summary">-->
                <!--                <div class="cart-head">-->
                <!--                    <h2>Cart Summary</h2>-->
                <!--                </div>-->
                <!--            </div>-->
            </div>
        </div>

    </div>
    <footer>
        <?php include('./includes/footer.php'); ?>

    </footer>

    <script src="/assets/js/jquery.js"></script>
    <script>
        function cart(cartProducts) {
            // $("#table").html("<tbody id='tbody'></tbody>");

            cartProducts.forEach(function(element, index) {
                var body = $("tbody#tbody");

                body.append(
                    `<tr class="text-center">
                                    <td>${index + 1}</td>
                                    <td>
                                        <img src="backend/uploads/${element.image}" height="50" width="50" style="border-radius:50%; object-fit:contain; object-position: center ;" alt="">
                                    </td>
                                    <td>
                                        <h6>${element['product_name']}</h6>
                                        <p id="remove" data-id="${element['id']}" data-total="${element.discount == 1 ? (element.selling_price - ((element.discount_percent / 100) * element.selling_price)) * element.qty: element.selling_price * element.qty}" style="font-size:11px; color:blue; cursor:pointer; text-decoration:underline">Remove</p>


                                    </td>
                                    <td>
                                        <h6>${element.discount == 1 ? element.selling_price - ((element.discount_percent / 100) * element.selling_price) : ''}</h6>
                                        <p > <span style="${element.discount == 1 ? 'text-decoration:line-through' : ''}"> N${element.selling_price}</span> <span style="color:red; font-size:10px">${element.discount == 1 ? '-' + element.discount_percent + '%' : ''}</span></p>

                                    </td>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <button id="decrease_cart" data-id="${element.id}"  class="btn btn-sm btn-danger px-3">-</button> <span style='width:30%;font-size:18px; text-align:center'> ${element.qty}</span> <button id='increase_cart' class="btn btn-sm btn-primary px-3" data-id="${element.id}">+</button>
                                        </div>
                                    </td>
                                    <td>
                                        <h6>${element.discount == 1 ? (element.selling_price - ((element.discount_percent / 100) * element.selling_price)) * element.qty: element.selling_price * element.qty}</h6>
                                    </td>

                                </tr>`
                );
            });
        }

        const data = localStorage.getItem('data');
        console.log(data);
        $(document).ready(function() {
            $("#proceed_btn").hide();
            let cartProducts = JSON.parse(localStorage.getItem('cart'));
            let grandTotal = parseFloat(localStorage.getItem('total'));
            let sub = 0;
            if (localStorage.getItem('cart') == null || localStorage.getItem('cart') == "null") {
                $('#cartT span').append(0);

            }
            if (cartProducts.length > 0) {
                $('#cartT span').append(cartProducts.length);
                console.log('cart length', cartProducts);
                cart(cartProducts);
                $("#total").text(grandTotal);


                $('button#increase_cart').click(function() {
                    const p_id = $(this).data('id');
                    console.log('product_id', p_id);
                    let product;
                    newArray = [];
                    cartProducts.filter(function(res) {
                        if (res.id == p_id) {
                            console.log('old qty', res.qty);

                            const initial_qty = res.qty;
                            res.qty = res.qty + 1;
                            console.log('new', res.qty);
                            product = res.qty;
                        }

                    });

                    console.log('product', product)

                    cartProducts.forEach(function(item) {

                        if (item.id === p_id) {
                            item.qty = product
                        }

                        newArray.push(item);


                    })

                    newArray.forEach(function(items) {
                        if (items.discount == 1) {
                            const g = parseFloat(items.selling_price) - ((parseInt(items.discount_percent) / 100) * parseFloat(items.selling_price));
                            const sub_total = g * items.qty;
                            sub += sub_total
                        } else {
                            const g = parseFloat(items.selling_price) * items.qty;
                            sub += g;
                        }
                    });
                    cartProducts = newArray;
                    console.log("cartProduct", cartProducts);
                    localStorage.setItem('cart', JSON.stringify(cartProducts));
                    localStorage.setItem('total', sub);

                    window.location.reload(true);

                });

                $('button#decrease_cart').click(function() {
                    const p_id = $(this).data('id');
                    console.log('product_id', p_id);
                    let product;
                    newArray = [];
                    cartProducts.filter(function(res) {
                        if (res.id == p_id) {
                            console.log('old qty', res.qty);

                            const initial_qty = res.qty;
                            if (initial_qty === 1) {
                                product = 1;
                            } else {
                                res.qty = res.qty - 1;
                                console.log('new', res.qty);
                                product = res.qty;
                            }

                        }

                    });


                    console.log('product', product)

                    cartProducts.forEach(function(item) {

                        if (item.id === p_id) {
                            item.qty = product
                        }

                        newArray.push(item);


                    })

                    newArray.forEach(function(items) {
                        if (items.discount == 1) {
                            const g = parseFloat(items.selling_price) - ((parseInt(items.discount_percent) / 100) * parseFloat(items.selling_price));
                            const sub_total = g * items.qty;
                            sub += sub_total
                        } else {
                            const g = parseFloat(items.selling_price) * items.qty;
                            sub += g;
                        }
                    });
                    cartProducts = newArray;
                    console.log("cartProduct", cartProducts);
                    localStorage.setItem('cart', JSON.stringify(cartProducts));
                    localStorage.setItem('total', sub);


                    window.location.reload(true);

                });

                // cartProducts.forEach(element =>{

                // })
            } else {
                $('#cartT span').append(0);

            }

            $("p#remove").on("click", function() {
                let pro = [];
                const product_id = $(this).attr("data-id");
                const product_sub_total = $(this).data("total");

                console.log(product_id, product_sub_total);
                cartProducts.filter(function(res) {
                    if (res.id == product_id) {


                    } else {
                        pro.push(res);
                    }

                });
                const new_total = grandTotal - parseFloat(product_sub_total);
                localStorage.setItem("cart", JSON.stringify(pro));
                localStorage.setItem("total", new_total);
                window.location.reload(true);




            });

            $("p#remove_all").click(function() {
                Swal.fire({
                    title: 'Are you sure you want to remove cart item?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, remove all!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        localStorage.removeItem("cart");
                        localStorage.removeItem("total");
                        Swal.fire(
                            'Cart remove successfully',
                            'success'
                        );
                        window.location.reload(true);

                    }
                })
            });

            $("button#Proceed_payment").click(() => {
                const uid = localStorage.getItem("USER_ID");
                if (uid === "" || uid === null || uid === "null" || uid === undefined || uid === "undefined") {
                    Swal.fire(
                        "",
                        "Please login to continue",
                        "info"
                    );
                    location.href = "auth/login.php"

                } else {

                }
            });

            let wallet;

            const uid = localStorage.getItem("USER_ID");
            $.ajax({
                type: "GET",
                url: "../backend/getWallet.php",
                data: {
                    user_id: uid
                },
                success: function(response) {
                    console.log(response);
                    const info = JSON.parse(response);
                    if (info.code == 201) {
                        const bal = "N " + info.data.amount
                        $("#wallet").text(bal)
                        wallet = info.data.amount
                    }
                }
            });


            let pay_option;
            $("#payment_option").change(function(e) {
                console.log(e.target.value);
                const fd = e.target.value;
                pay_option = fd;
                const total = localStorage.getItem("total");
                if (fd != "") {
                    if (fd == 1) {
                        $("#proceed_btn").text("Pay N" + total + " Now");
                        $("#proceed_btn").show();
                    } else {
                        $("#proceed_btn").text("Complete order");
                        $("#proceed_btn").show();
                    }
                } else {
                    $("#proceed_btn").hide();
                    $("#proceed_btn").text("");


                }
            });

            $("#proceed_btn").click(function(e) {
                e.preventDefault();
                console.log("option selected =>", pay_option);
               const totalCartAmount =localStorage.getItem('total');
                if (pay_option == "1") {
                    if(parseFloat(wallet) < parseFloat(totalCartAmount)){
                        showError("Insufficient fund");
                    }else{

                        const param = {
                           user_id: localStorage.getItem("USER_ID"),
                           grand_total: totalCartAmount,
                           products_item: localStorage.getItem("cart"),
                           pay_method: "wallet"
                        }
                    $.ajax({
                        type: "post",
                        url: "backend/addOrder.php",
                        data: param,
                    
                        success: function (response) {
                            console.log(response);
                            const info = JSON.parse(response);
                            if(info.code == 201){
                                showSuccess(info.message);
                                localStorage.removeItem("cart");
                                localStorage.removeItem("total");
                                window.location.href = "./order-success.php";
                            }else{
                                showError(info.message);

                            }
                        }
                    });

                    }
                } else {
                    const param = {
                           user_id: localStorage.getItem("USER_ID"),
                           grand_total: totalCartAmount,
                           products_item: localStorage.getItem("cart"),
                           pay_method: "pod"
                        }
                    $.ajax({
                        type: "post",
                        url: "backend/addOrder.php",
                        data: param,
                    
                        success: function (response) {
                            console.log(response);
                            const info = JSON.parse(response);
                            if(info.code == 201){
                                showSuccess(info.message);
                                localStorage.removeItem("cart");
                                localStorage.removeItem("total");
                                window.location.href = "./order-success.php";
                            }else{
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