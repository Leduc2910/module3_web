<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit</title>
</head>
<body>
<div>
    <h1>Edit Student Information</h1>
    <form action="/students?action=edit&id=${student.id}" method="post">
        <div>
            <label>ID</label>
            <input type="text" name="id" placeholder="input student's ID...." value="${student.id}">
        </div>
        <div>
            <label>Name</label>
            <input type="text" name="name" placeholder="input student's name...." value="${student.name}">
        </div>
        <div>
            <label>Age</label>
            <input type="number" name="age" placeholder="input student's age...." value="${student.age}">
        </div>
        <div>
            <label>Image</label>
            <input type="text" name="image" placeholder="input student's image...." value="${student.image}">
        </div>
        <button>Submit</button>
    </form>
</div>
</body>
</html>