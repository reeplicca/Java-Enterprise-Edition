<%@ page import="kz.bitlab.javaEE.Task" %>
<%@ page import="java.util.ArrayList" %><%--
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
        <div class="col-md-3">
            <h3>TASK MANAGER</h3>
        </div>
        <div class="col-md-2">
            <h5>Все Задания</h5>
        </div>
    </div>
    <div class = "row">
        <a href="/addtask" class="btn btn-success col-md-2">+ Добавить задание</a>
    </div>
    <div class = "row">
        <div class="col-md-1">
            <h4>ID</h4>
        </div>
        <div class="col-md-5">
            <h4>Наименование</h4>
        </div>
        <div class="col-md-2">
            <h4>Крайний срок</h4>
        </div>
        <div class="col-md-2">
            <h4>Выполнено</h4>
        </div>
        <div class="col-md-2">
            <h4>Детали</h4>
        </div>
    </div>
    <%
        ArrayList<Task> tasks = (ArrayList<Task>) request.getAttribute("tasks");
    %>
    <div class="row">
        <%
            for(Task task:tasks){
        %>
        <div class="col-md-1">
            <h4><%=task.getId()%></h4>
        </div>
        <div class="col-md-5">
            <h4><%=task.getName()%></h4>
        </div>
        <div class="col-md-2">
            <h4><%=task.getDeadlineDate()%></h4>
        </div>
        <div class="col-md-2">
            <h4><%=task.getDoneTask()%></h4>
        </div>
        <div class="col-md-2">
            <a href="/details?id=<%=task.getId()%>" class = "btn btn-success">Детали</a>
        </div>
        <%
            }
        %>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
