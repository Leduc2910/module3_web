<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Create</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <style>
        /*        .create-container {
                    width: 100%;

                }*/
        .create-container {
            width: 100%;
        }
        .create-container form {
            border: 1px solid black;
            width: fit-content;
        }
        .create-container h1 {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="create-container">
    <form action="/students?action=create" method="post">
        <h1>Create New Student</h1>
        <div class="row">
            <label class="col-3">ID</label>
            <input type="text" name="id" placeholder="input student's ID...." class="col-9">
        </div>
        <div class="row">
            <label class="col-3">Name</label>
            <input class="col-9" type="text" name="name" placeholder="input student's name....">
        </div>
        <div class="row">
            <label class="col-3">Age</label>
            <input class="col-9" type="number" name="age" placeholder="input student's age....">
        </div>
        <div class="row">
            <label class="col-3">Image</label>
            <input class="col-9" type="text" name="image" placeholder="input student's image....">
        </div>
        <button class="btn btn-primary">Submit</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
</body>
</html>