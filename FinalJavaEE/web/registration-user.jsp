<%--
  Created by IntelliJ IDEA.
  User: BekRakhman
  Date: 28.03.2023
  Time: 10:48
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
    String check = request.getParameter("success");
    String checkEmailError = request.getParameter("email-is-exist");
    String checkPasswordError = request.getParameter("password-is-not-match");
    if (check != null) {
%>
<div class = "row">
    <div class = "alert alert-success">
        REGISTER SUCCESS
    </div>
</div>
<%
} else if (checkEmailError != null) {
%>
<div class = "row">
    <div class = "alert alert-danger">
        EMAIL IS EXIST
    </div>
</div>
<%
} else if (checkPasswordError != null) {
%>
<div class = "row">
    <div class = "alert alert-danger">
        PASSWORD IS NOT MATCH
    </div>
</div>
<%
    }
%>
<div class="container">
    <div class="row">
        <form action="/register" method="post">
            <div class="form-group">
                <label class="form-label">EMAIL:</label>
                <input type="email" class="form-control" name="user-email">
            </div>
            <div class="form-group">
                <label class="form-label">PASSWORD:</label>
                <input type="password" class="form-control" name="user-password">
            </div>
            <div class="form-group">
                <label class="form-label">RE-PASSWORD:</label>
                <input type="password" class="form-control" name="user-re-password">
            </div>
            <div class="form-group">
                <label class="form-label">Full_Name:</label>
                <input type="text" class="form-control" name="user-full_name">
            </div>
            <div class="form-group">
                <button class="btn btn-success">REGISTER</button>
            </div>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
