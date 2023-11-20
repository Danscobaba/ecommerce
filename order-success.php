<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order completed</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        .container {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            width: 250px;
            height: 300px;
            /* background: red; */
            box-shadow: 0px 2px 5px 0px #bebebe;
            border-radius: 20px;
            overflow: hidden;
        }

        .head-card {
            background-color: lightgreen;
            height: 40%;
            padding: 12px 0px;
           

        }
        .head-card>div{
            display:flex;
            justify-content: center;
            align-items: center;
            color: white;
        }

        .head-card p{
            /* border:2px solid white; */
            width: 250px;
            text-align: center;
            color: white;

        }

        .text-center{
            text-align: center;
        }

        .body-card{
            height: 60%;
            padding: 12px;
            vertical-align: middle;
        }

        .body-card p{
            font-size: 12px;
            color: #bebebe;
            font-weight: 700;
        }

        .body-card button{
            margin-top: 30px;
            padding: 10px 12px;
            background-color: lightgreen;
            border-radius: 20px;
            border: none;
            outline: none;
            color: white;
            font-weight: 500;
            box-shadow: rgba(17, 17, 26, 0.1) 0px 8px 24px, rgba(17, 17, 26, 0.1) 0px 16px 56px, rgba(17, 17, 26, 0.1) 0px 24px 80px;
        }

        .card:hover{
            border:1px solid lightgreen;
            box-shadow: rgba(0, 0, 0, 0.4) 0px 30px 90px;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="card">
            <div class="head-card">
                <div >
                    <span class="text-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="70" height="70" fill="currentColor" class="bi bi-check-circle" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                            <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" />
                        </svg>

                    </span>
                    
                </div>
                <p class="text-center">Success</p>

            </div>
            <div class="body-card">
                <p class="text-center">
                    Congratulations! your order has been successfully created. <br><br>
                    You will receive an email notification soon.
                </p>
                <div class="" style="display: flex; justify-content:center">
                <button id="continue" onclick="gotoHome()">Continue</button>

                </div>
            </div>
        </div>
    </div>

    <script>
        function gotoHome(){
            window.location.href = "./index.php";
        }
    </script>
</body>

</html>
