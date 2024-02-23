<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IndexPage</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        body {
            background-color: #f3e5f5; /* Purple background */
            color: #6a1b9a; /* Purple text color */
        }

        .container_main {
            width: 400px;
            margin: 5vh auto; /* Center container vertically and horizontally */
            background-color: #ffffff; /* White container background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add shadow effect */
        }

        h3 {
            text-align: center;
            margin-bottom: 20px;
            color: #6a1b9a; /* Dark purple heading color */
        }

        label {
            font-weight: bold;
            color: #6a1b9a; /* Purple label color */
        }

        .btn-primary {
            background-color: #9c27b0; /* Purple button color */
            border-color: #9c27b0; /* Purple button border color */
            width: 100%;
            margin-bottom: 10px;
        }

        .btn-primary:hover {
            background-color: #7b1fa2; /* Darker purple on hover */
            border-color: #7b1fa2; /* Darker purple border on hover */
        }

        .form-control {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="container_main">
        <h3> Login Page </h3>
        <form action="/dashboard" method="POST">
            <div class="form-group">
                <label>User Name :</label>
                <input class="form-control" type="text" name="username" />
            </div>
            <div class="form-group">
                <label>Password :</label>
                <input class="form-control" type="password" name="password" />
            </div>
            <input class="btn btn-primary" value="SignIn" type="submit"/>
            <button class="btn btn-primary" onclick="location.href='/forgot-password';" type="button">Forget Password</button>
        </form>
        <br />
        <div class="row">
            <div class="col">
                <a href="/signup"><button class="btn btn-primary btn-block">SignUp</button></a>
            </div>
            <div class="col">
                <button class="btn btn-primary btn-block" onclick="location.href='/about-us';" type="button">About Us</button>
            </div>
        </div>
    </div>
</body>
</html>
