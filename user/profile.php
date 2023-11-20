<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <link href="assets/index.css" rel="stylesheet">
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css" type="text/css">
    <script src="../assets/bootstrap/js/popper.js"></script>

    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
    <?php include("layout/header.php") ?>
    <div class="container p-3">
        <div class="card p-3">
            <div class="text-center">
                <img src="../assets/img/log.png" height="100px" width="100px"><br>
                <button class="btn mt-3 btn-outline-secondary btn-sm" data-bs-toggle="modal" data-bs-target="#addCategoryModal">Edit Profile</button>
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
            <div class="form-group mb-3">
                <label for="address">Address</label>
                <input type="text" class="form-control" name="" id="address">
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
                    <form class="p-3" id="edit_profile"  >
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
                        <div class="form-group mb-3">
                            <label for="e_address">Address</label>
                            <input type="text" class="form-control" name="" id="e_address">
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
        function getProfile(){
            const uid = localStorage.getItem("USER_ID");

            $.ajax({
                type: "GET",
                url: "../backend/getProfile.php",
                data: {
                    user: uid
                },
                success: function(response) {
                    const info = JSON.parse(response)
                    if (info.code == 201) {
                        const full_name = info.data.full_name;
                        const email = info.data.email;
                        const gender = info.data.gender == 1 ? "Male" : (info.data.gender == 2 ? "Female" : "Others");
                        const phone = info.data.phone_no;
                        const address = info.data.address;
                        console.log(full_name);

                        $("input#fullName").val(full_name);
                        $("input#email").val(email);
                        $("input#gender").val(gender);
                        $("input#phone_no").val(phone);
                        $("input#address").val(address);

                        $("input#e_fullName").val(full_name);

                        // $("input#email").val(email);
                        $("#e_gender").val(info.data.gender);
                        $("input#e_phone_no").val(phone);
                        $("input#e_address").val(address);
                        
                        gender_new = info.data.gender;



                    }
                }
            });
        }
        $(document).ready(function() {
            const uid = localStorage.getItem("USER_ID");
            $("#fullName,#email,#gender,#phone_no, #address").attr("readonly", true);
            getProfile();

            let gender_new = $("#e_gender").val();

            //Get Profile
            

            $("#e_gender").change(function(event){
                   
                    gender_new = event.target.value;
                });

            //update
            $("#edit_profile").on('submit',function(e){
                e.preventDefault();
                const fName = $("#e_fullName").val();
                const gender = gender_new;
                const phone = $("#e_phone_no").val();
                const address = $("#e_address").val();
                // alert("u clicked me my gender is "+ gender_new);
                if(fName === "" || gender === "" || phone === "" || address === ""){
                    showError("All fields are required");
                    return false;
                }else{
                    $.ajax({
                        type: "POST",
                        url: "../backend/updateProfile.php",
                        data: {
                            user_id:  uid,
                            full_name:fName,
                            gen: gender,
                            mobile_no: phone,
                            home: address
                        },
                        dataType:"",
                        success: function(res){
                            console.log(res)
                            const info = JSON.parse(res);
                            if(info.code == 201){
                                showSuccess(info.message);
                                $('#addCategoryModal').modal('hide');
                                getProfile();
                            }else{
                                showError(info.message);
                            }
                        }
                    })
                }

              
            });



        
        });
    </script>
</body>

</html>