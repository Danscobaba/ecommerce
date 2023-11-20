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
                <h2 class="text-muted">All Products</h2>
                <div class="card my-3 p-3">
                    <div class="d-flex mb-3" style="justify-content: end;">
                        <button class="btn btn-sm btn-outline-primary" data-bs-toggle="modal" data-bs-target="#addCategoryModal">Add new product</button>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-responsive table-striped table-hover">
                            <thead>
                                <tr class="text-center">
                                    <th>Product ID</th>
                                    <th>Product Image</th>

                                    <th>Product Name</th>
                                    <th>Category</th>
                                  
                                    <th>Discount</th>
                                    <th>Sale Price</th>

                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody  id="product_body">
                              
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>

        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="addCategoryModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog  modal-md">
            <div class="modal-content py-3">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Add product</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-3">
                    <form class="p-3" id="add_product" enctype="multipart/form-data">
                        <div class="mb-3 form-group">
                            <select name="cate" id="select_cate" aria-placeholder="Choose a category" Placeholder="Choose a category" class="form-control">
                                <option value="" aria-readonly="true">Choose a category</option>

                            </select>
                        </div>
                        <div class="mb-3 form-group">
                            <input type="text" name="product_name" placeholder="Product Name" id="product_name" class="form-control">
                        </div>
                        <div class="mb-3 form-group">
                            <textarea name="product_desc" class="form-control" id="product_desc" placeholder="Product Desc" cols="10" rows="5"></textarea>
                        </div>
                        <div class="mb-3 form-group">
                            <input type="text" name="product_price" placeholder="Product price" id="product_price" class="form-control">
                        </div>
                        <div class="mb-3 form-group">
                            <label for="discount">Discount</label>
                            <select name="discount" id="discount" class="form-control">
                                <option value="1">Yes</option>
                                <option value="2" selected>No</option>

                            </select>
                        </div>
                        <div class="mb-3 form-group">
                            <input type="number" name="product_discount" placeholder="Product Discount Price" id="product_discount" class="form-control">
                        </div>
                        <div class="form-group mb-3">
                            <input type="file" name="" accept="image/*" id="cover_image" class="form-control">
                        </div>
                        <div class="row mb-3" id="image-view">
                            <div class="col-8"></div>
                            <div class="col-4">
                                <img src="../assets/img/user.png" height="100px" width="100px" style="border-radius: 20px; border: 1px solid #ccc; object-fit: cover; object-position: center;" alt="">
                            </div>

                        </div>
                        <button type="submit" class="btn btn-sm form-control btn-outline-success">Submit</button>
                </div>
                </form>
            </div>

        </div>
    </div>
    </div>

    <!-- <script src="/assets/js/jquery.js"></script>
    <script src="/assets/js/sweet_alert.js"></script>
    <script src="/assets/js/alert.js"></script> -->

    <script>
        function getCategory() {
            $.ajax({
                method: 'GET',
                url: '../backend/getActiveCategory.php',
                data: {},
                success: function(data) {
                    console.log(data);
                    $("#select_cate").append(data);

                }
            });
        }
        function getProduct(){
            $.ajax({
                method: 'GET',
                url: '../backend/getProduct.php',
                data: {},
                success: function(data) {
                    console.log(data);
                    $("#product_body").append(data);

                }
            });
        }
        $(document).ready(function() {
            getCategory();
            getProduct();
            $("#image-view, #product_discount").hide();

            $("#discount").change(function(event) {
                const val = event.target.value;
                console.log(val, "du");
                if (val == 1) {
                    $("#product_discount").show();
                } else {
                    $("#product_discount").hide();
                }
            })
            $("#cover_image").change(function(e) {
                const file = e.target.files[0];
                const reader = new FileReader();

                reader.onload = function(e) {
                    $("#image-view .col-4 img").attr("src", e.target.result);
                };

                reader.readAsDataURL(file);
                $("#image-view").show();
            })

            $("#add_product").on("submit", function(e) {
                e.preventDefault();
                const category = $("#select_cate").val();
                const product_name = $("#product_name").val();
                const product_desc = $("#product_desc").val();
                const product_price = $("#product_price").val();
                const discount = $("#discount").val();
                const product_discount = $("#product_discount").val();
                const cover_image = $("#cover_image").prop('files')[0];

                if (category === "") {
                    showError("Please select a category");
                    return false;
                } else if (product_name === "") {
                    showError("Please enter product name");
                    return false;
                } else if (product_desc === "") {
                    showError("Please enter product description");
                    return false;
                } else if (product_price === "") {
                    showError("Please enter product price");
                    return false;
                } else if (discount === '1' && product_discount === "") {

                    showError("Please enter product discount percentage");
                    return false;

                } else if (cover_image === "") {
                    showError("Please upload product image");
                    return false;
                } else {
                    var formData = new FormData();

                    console.log("Images: " + cover_image);
                    formData.append("category", category);
                    formData.append("product_name", product_name);
                    formData.append("product_desc", product_desc);
                    formData.append("product_price", product_price);
                    formData.append("discount", discount);
                    formData.append("product_discount", product_discount);
                    formData.append("cover_image", cover_image);
                    console.log("formData: " + formData);

                    $.ajax({
                        method: 'POST',
                        url: '../backend/AddProduct.php',
                        data: formData,
                        cache: false,
                        contentType: false,
                        processData: false,
                        success: function(data) {
                            console.log("asdfghjkl", data);
                            const info = JSON.parse(data);

                            if (info.code !== 201) {
                                showError(info.message);

                            } else {
                                showSuccess(info.message);
                                $('#addCategoryModal').modal('hide');

                                window.location.reload();
                            }
                        }
                    });
                }
            });

        });
    </script>

</body>

</html>