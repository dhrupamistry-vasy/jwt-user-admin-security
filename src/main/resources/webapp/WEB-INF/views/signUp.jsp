<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa; /* Change background color */
        }

        .container-size{
            width:400px;
            margin-top: 10vh;
            background-color: #ffffff; /* Change container background color */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add shadow effect */
            padding: 20px;
        }

        h3 {
            color: #f261e1; /* Change heading color */
            text-align: center;
        }

        label {
            color: #495057; /* Change label color */
        }

        input.form-control {
            border-color: #ced4da; /* Change input border color */
        }

        .btn-primary {
            background-color: #e53beb; /* Change button background color */
            border-color: #e36fea; /* Change button border color */
        }

        .btn-primary:hover {
            background-color: #0056b3; /* Change button hover background color */
            border-color: #0056b3; /* Change button hover border color */
        }
    </style>
</head>
<body>
<div class="container container-size">
    <h3> Sign Up Page </h3>
    <form action="/signup" method="post">
    <div class="form-group">
        <label>Name :</label>
        <input class="form-control" type="text" name="name" />
    </div>
    <div class="form-group">
        <label>User Name :</label>
        <input class="form-control" type="text" name="username" />
    </div>
    <div class="form-group">
        <label>Email :</label>
        <input class="form-control" type="email" name="email" />
    </div>
    <div class="form-group">
        <label>Password :</label>
        <input class="form-control" type="password" name="password" />
    </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>
