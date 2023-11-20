<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <link href="assets/index.css" rel="stylesheet" > 
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css" type="text/css">
  <script src="../assets/bootstrap/js/popper.js"></script>

  <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<?php include("layout/header.php") ?>

    <div class="container p-3">
    <div class="row g-3 gh">
            <div class="col-6  col-sm-4 col-md-4 col-lg-3">

              <div class="custom-card first px-3 py-2">
                <div class="row justify-content-center align-items-center p-2">
                  <div class="col-4">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrows-angle-contract" viewBox="0 0 16 16">
                      <path fill-rule="evenodd" d="M.172 15.828a.5.5 0 0 0 .707 0l4.096-4.096V14.5a.5.5 0 1 0 1 0v-3.975a.5.5 0 0 0-.5-.5H1.5a.5.5 0 0 0 0 1h2.768L.172 15.121a.5.5 0 0 0 0 .707zM15.828.172a.5.5 0 0 0-.707 0l-4.096 4.096V1.5a.5.5 0 1 0-1 0v3.975a.5.5 0 0 0 .5.5H14.5a.5.5 0 0 0 0-1h-2.768L15.828.879a.5.5 0 0 0 0-.707z" />
                    </svg>
                  </div>
                  <div class="col-8 text-center">
                    <h3 style="line-height: 70%;" id="wallet"></h3>
                    <p style="line-height: 70%; font-size: 12px;" class="text-muted">Account Balance</p>
                  </div>
                </div>
              </div>


            </div>
            <div class="col-6 col-sm-4 col-md-4 col-lg-3">
            <div class="custom-card second px-3 py-2">
                <div class="row justify-content-center align-items-center p-2">
                  <div class="col-4">
                  <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-file-earmark-bar-graph" viewBox="0 0 16 16">
  <path d="M10 13.5a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-6a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v6zm-2.5.5a.5.5 0 0 1-.5-.5v-4a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-.5.5h-1zm-3 0a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-1z"/>
  <path d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z"/>
</svg>
                  </div>
                  <div class="col-8 text-center">
                    <h3 style="line-height: 70%;">100</h3>
                    <p style="line-height: 70%; font-size: 12px;" class="text-muted">Total Orders</p>
                  </div>
                </div>
              </div>

            </div>
            <div class="col-6 col-sm-4 col-md-4 col-lg-3">
            <div class="custom-card third px-3 py-2">
                <div class="row justify-content-center align-items-center p-2">
                  <div class="col-4">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrows-angle-contract" viewBox="0 0 16 16">
                      <path fill-rule="evenodd" d="M.172 15.828a.5.5 0 0 0 .707 0l4.096-4.096V14.5a.5.5 0 1 0 1 0v-3.975a.5.5 0 0 0-.5-.5H1.5a.5.5 0 0 0 0 1h2.768L.172 15.121a.5.5 0 0 0 0 .707zM15.828.172a.5.5 0 0 0-.707 0l-4.096 4.096V1.5a.5.5 0 1 0-1 0v3.975a.5.5 0 0 0 .5.5H14.5a.5.5 0 0 0 0-1h-2.768L15.828.879a.5.5 0 0 0 0-.707z" />
                    </svg>
                  </div>
                  <div class="col-8 text-center">
                    <h3 style="line-height: 70%;">100</h3>
                    <p style="line-height: 70%; font-size: 12px;" class="text-muted">Transaction History</p>
                  </div>
                </div>
              </div>

            </div>
                     </div>
        
    </div>


    <script>
      $(document).ready(function(){
        const uid =localStorage.getItem("USER_ID");
        $.ajax({
          type: "GET",
          url: "../backend/getWallet.php",
          data: {
            user_id : uid
          },
          success: function (response) {
            console.log(response);
            const info = JSON.parse(response);
            if(info.code == 201){
              const bal = "N "+ info.data.amount
              $("#wallet").text(bal)
            }
          }
        });

      });
    </script>
</body>
</html>