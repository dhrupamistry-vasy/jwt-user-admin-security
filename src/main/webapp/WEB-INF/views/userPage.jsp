<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #f3e5f5; /* Purple background */
            color: #673ab7; /* Purple text color */
        }
        button {
            margin-top: 20px;
            background-color: #9c27b0; /* Purple button color */
            border-color: #9c27b0; /* Purple button border color */
        }
        button:hover {
            background-color: #7b1fa2; /* Darker purple on hover */
            border-color: #7b1fa2; /* Darker purple border on hover */
        }
    </style>
</head>
<body>
    <h1>This is User Page!!!</h1>
    <br />
    <p id='name'></p>
    <p id='username'></p>
    <p id='email'></p>
    <p id='contactno'></p>
    <p id='address'></p>
    <p id='city'></p>
    <br />
    <button class="btn btn-primary" id='BtnUInf'>Info</button>
    <h2><a href="/logout"><button class="btn btn-primary">Logout</button></a></h2>
    <input type="hidden" value="${Token}" id="Token"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        $.ajaxSetup({
            beforeSend: function(xhr) {
                xhr.setRequestHeader("Authorization", "Bearer " + $('#Token').val());
            }
        });

        $(document).ready(function(){
            $('#BtnUInf').click(function(){
                $.ajax({
                    type: "GET",
                    url: "http://localhost:8080/userPage/info",
                    success:function(response){
                        $('#name').text("Name: " + response.name);
                        $('#username').text("User Name: " + response.username);
                        $('#email').text("Email: " + response.email);
                        $('#contactno').text("Contact Number: " + response.contactno);
                        $('#address').text("Address: " + response.address);
                        $('#city').text("City: " + response.city);

                    }
                });
            });
        });
    </script>
</body>
</html>
   
   


