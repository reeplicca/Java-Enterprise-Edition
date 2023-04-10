<%@ page import="kz.bitlab.javaEE.User" %><%--
  Created by IntelliJ IDEA.
  User: BekRakhman
  Date: 01.04.2023
  Time: 18:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
    <%
        User currentUser = (User) request.getSession().getAttribute("currentUser");
        if (currentUser != null) {
    %>
    <div class="container">
        <div class="row">
            <form action="/profile" method="post">
                <input type="hidden" value="<%=currentUser.getEmail()%>" name="user-old-email">
                <div class="form-group">
                    <label class="form-label">EMAIL:</label>
                    <input type="email" class="form-control" name="user-email" value="<%=currentUser.getEmail()%>">
                </div>
                <div class="form-group">
                    <label class="form-label">PASSWORD:</label>
                    <input type="password" class="form-control" name="user-password">
                </div>
                <div class="form-group">
                    <label class="form-label">REPEAT-PASSWORD:</label>
                    <input type="password" class="form-control" name="user-re-password">
                </div>
                <div class="form-group">
                    <label class="form-label">FULLNAME:</label>
                    <input type="text" class="form-control" name="user-full-name" value="<%=currentUser.getFull_name()%>">
                </div>
                <div class="form-group">
                    <button class="btn btn-success">SAVE CHANGES</button>
                </div>
            </form>
        </div>
    </div>
    <%
        }
    %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
