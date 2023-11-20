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
        <h2 class="text-muted">All Category</h2>
        <div class="card my-3 p-3">

          <div class="d-flex mb-3" style="justify-content: end;">
            <button class="btn btn-sm btn-outline-primary" data-bs-toggle="modal" data-bs-target="#addCategoryModal">Add new category</button>
          </div>
          <div class="table-responsive">
            <table class="table table-responsive table-striped table-hover">
              <thead>
                <tr>
                  <th>S/No.</th>
                  <th>Category Name</th>
                  <th>Status</th>

                  <th>Action</th>
                </tr>
              </thead>
              <tbody id="cate-body">

              </tbody>
            </table>
          </div>
        </div>

      </div>

    </div>
  </div>


  <!-- Modal -->
  <div class="modal fade" id="addCategoryModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">Add category</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body p-3">
          <form class="p-3" id="add_category">
            <div class="mb-3 form-group">
              <input type="text" name="category_name" id="category_name" placeholder="Category name" class="form-control">
            </div>
            <div class="mb-3 form-group">
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
    function getCategory(){
      $.ajax({
        method: 'GET',
        url: '../backend/getAllCategory.php',
        data: {},
        success: function(data) {
          console.log(data);
          $("#cate-body").html(data);

        }
      });
    }
    $(document).ready(function() {
     getCategory();

      $("#add_category").submit(function(event) {
        event.preventDefault();
        const cate_name = $("#category_name").val();

        if (cate_name == "") {
          showError("Please enter category name");
          return false;
        }
        $.ajax({
          method: 'POST',
          url: '../backend/saveCategory.php',
          data: {category_name: cate_name},
          success: function(data) {
            console.log(data);
            const info = JSON.parse(data);

            if(info.code !== 201){
              showError(info.message);

            }else{
              showSuccess(info.message);
              $("#category_name").val("");
              getCategory();
              $('#addCategoryModal').modal('hide');
            }

          }
        });

      });
    });
  </script>

</body>

</html>