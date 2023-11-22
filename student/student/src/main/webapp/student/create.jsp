<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Create</title>
</head>
<body>
<div class="create-container">
    <form action="/students?action=create" method="post">
        <h1>Create New Student</h1>
        <div>
            <label>ID</label>
            <input type="text" name="id" placeholder="input student's ID....">
        </div>
        <div>
            <label>Name</label>
            <input type="text" name="name" placeholder="input student's name....">
        </div>
        <div>
            <label>Age</label>
            <input type="number" name="age" placeholder="input student's age....">
        </div>
        <div>
            <label>Image</label>
            <input type="text" name="image" placeholder="input student's image....">
        </div>
        <button class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>