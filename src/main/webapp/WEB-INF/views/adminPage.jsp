<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #f3e5f5; /* Purple background */
            color: #673ab7; /* Purple text color */
            margin-top: 50px;
        }
        .sizer {
            width: 400px;
        }
        button {
            margin: 10px;
        }
        h1 {
            color: #512da8; /* Dark purple heading color */
        }
        #name, #username, #email {
            color: #673ab7; /* Purple text color */
        }
        .btn-primary {
            background-color: #9c27b0; /* Purple button color */
            border-color: #9c27b0; /* Purple button border color */
        }
        .btn-primary:hover {
            background-color: #7b1fa2; /* Darker purple on hover */
            border-color: #7b1fa2; /* Darker purple border on hover */
        }
        .table-dark th, .table-dark td {
            border-color: #9c27b0; /* Purple border color for table */
        }
        .btn-group {
            display: flex;
            justify-content: center;
        }
    </style>
</head>
<body>
    <h1>This is Admin Page !!</h1>
    <br />
    <input type="hidden" value="${Token}" id="Token"/>
    <p id='name'></p>
    <p id='username'></p>
    <p id='email'></p>
    <p id='contactno'></p>
    <p id='address'></p>
    <p id='city'></p>

    <br />
    <div class="sizer">
        <table id='records_table' class="table table-dark">
        </table>
    </div>
    <div class="btn-group">
        <button class="btn btn-primary" id='BtnU'>User Page</button>
        <button class="btn btn-primary" id='BtnUInf'>User Info</button>
        <button class="btn btn-primary" id='BtnAInf'>All User Info</button>
    </div>
    <h2><a href="/logout"><button class="btn btn-primary">Logout</button></a></h2>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        $.ajaxSetup({
            beforeSend: function(xhr) {
                xhr.setRequestHeader("Authorization", "Bearer " + $('#Token').val());
            }
        });
        $('#BtnU').click(function(){
            $.ajax({
                type: "GET",
                url: "http://localhost:8080/userPage",
                success:function(response){
                    document.open();
                    document.title = "userPage";
                    document.write(response);
                    document.close();
                }
            });
        });
        $('#BtnUInf').click(function(){
            $.ajax({
                type: "GET",
                url: "http://localhost:8080/userPage/info",
                success:function(response){
                    $('#name').text("Name : "+response.name);
                    $('#username').text("User Name : "+response.username);
                    $('#email').text("Email : " + response.email);
                    $('#contactnumber').text("Contact Number: " + response.contactnumber);
                    $('#address').text("Address: " + response.address);
                    $('#city').text("City: " + response.city);
                }
            });
        });
        $('#BtnAInf').click(function(){
            $.ajax({
                type: "GET",
                url: "http://localhost:8080/adminPage/info",
                success:function (response) {
                    var trHTML = '';
                    $.each(response, function (i, item) {
                        trHTML += '<tr><td>' + item.name + '</td><td>' + item.username + '</td><td>' + item.email + '</td></tr>' + item.contactno + '</td></tr>' + item.address + '</td></tr>' + item.city + '</td></tr>';
                    });
                    $('#records_table').append(trHTML);
                }
            });
        });
    </script>
</body>
</html>
