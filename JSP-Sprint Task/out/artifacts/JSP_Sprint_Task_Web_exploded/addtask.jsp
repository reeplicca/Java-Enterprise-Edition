<%--
  Created by IntelliJ IDEA.
  User: BekRakhman
  Date: 16.03.2023
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row">
        <form action="/addtask" method="post">
            <div class="form-group">
                <label class="form-label">Наименование:</label>
                <input type="text" class="form-control" name="task-name">
            </div>
            <div class="form-group">
                <label class="form-label">Описание:</label>
                <input type="text" class="form-control" name="task-description">
            </div>
            <div class="form-group">
                <label class="form-label">Крайний срок:</label>
                <input type="date" class="form-control" name="task-date">
            </div>
            <div class="form-group">
                <button class="btn btn-success">Добавить</button>
            </div>
        </form>
        <form action="/closetask" method="post">
            <div class="form-group">
                <input type="hidden">
            </div>
            <div class="form-group">
                <button class = "btn btn-success">Закрыть</button>
            </div>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
