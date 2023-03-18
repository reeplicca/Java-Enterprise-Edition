<%@ page import="kz.bitlab.javaEE.Task" %><%--
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
            <h5>Все задания</h5>
        </div>
    </div>
    <%
        Task task = (Task) request.getAttribute("task");
        if (task != null) {
    %>
    <form action="/update" method="post">
        <div class="row">
            <div class="form-group">
                <input type="hidden" class="form-control" name="task-id" value="<%=task.getId()%>">
            </div>
            <div class="form-group">
                <label class="form-label">Наименование:</label>
                <input type="text" class="form-control" name="task-name" value="<%=task.getName()%>">
            </div>
            <div class="form-group">
                <label class="form-label">Описание:</label>
                <input type="text" class="form-control h-50" name="task-description" value="<%=task.getDescription()%>">
            </div>
            <div class="form-group">
                <label class="form-label">Крайний срок:</label>
                <input type="date" class="form-control" name="task-date" value="<%=task.getDeadlineDate()%>">
            </div>
            <%
                if (task.getDoneTask().equals("Да")) {
            %>
            <div class="form-group">
                <label class="form-label">Выполнено:</label>
                <select class="form-control" name="task-done">
                    <option selected>Да</option>
                    <option>Нет</option>
                </select>
            </div>
            <%
                } else {
            %>
            <div class="form-group">
                <label class="form-label">Выполнено:</label>
                <select class="form-control" name="task-done">
                    <option>Да</option>
                    <option selected>Нет</option>
                </select>
            </div>
            <%
                }
            %>
            <div class="form-group">
                <button class = "btn btn-success">Сохранить</button>
            </div>
        </div>
    </form>
    <form action="/delete" method="post">
        <div class="form-group">
            <input type="hidden" class="form-control" name="task-id" value="<%=task.getId()%>">
        </div>
        <div class="form-group">
            <button class = "btn btn-success">Удалить</button>
        </div>
    </form>
    <%
        }
    %>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>

