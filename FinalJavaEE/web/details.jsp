<%@ page import="kz.bitlab.javaEE.News" %>
<%@ page import="kz.bitlab.javaEE.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.javaEE.Comment" %><%--
  Created by IntelliJ IDEA.
  User: BekRakhman
  Date: 28.03.2023
  Time: 21:52
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
    <%
        User currentUser = (User) request.getSession().getAttribute("currentUser");
        News news = (News) request.getAttribute("news");
        if (news != null) {
    %>
    <div class="row" style="background-color: grey">
        <div class="col-md-3">
            <label><a href="/home" class="text-decoration-none" style="color:white"><h3>Almaty Smog</h3></a></label>
        </div>
        <div class="col-md-5">

        </div>

        <%
            if (currentUser == null) {
        %>

        <div class="col-md-2">
            <a href="/login" class="text-decoration-none" style="font-size:12px; color:white; ">Sign in</a>
        </div>

        <div class="col-md-2">
            <a href="/add-user" class="text-decoration-none" style="font-size:12px; color:white">Sign up</a>
        </div>

        <%
        } else if (currentUser != null) {
        %>
        <div class="col-md-1">
            <form action="/logout" method="post">
                <button class="btn btn-danger">LOG OUT</button>
            </form>
        </div>

        <div class="col-md-1">
            <form action="/update-profile" method="post">
                <button class="btn btn-primary">PROFILE</button>
            </form>
        </div>
    </div>
    <div class="row">
        <form action="/update" method="post">
            <div class="form-group">
                <input type="hidden" class="form-control" name="news-id" value="<%=news.getId()%>">
            </div>
            <div class="form-group">
                <label class="form-label">TITLE</label>
                <input type="text" class="form-control" name="news-title" value="<%=news.getTitle()%>">
            </div>
            <div class="form-group">
                <label class="form-label">CONTENT</label>
                <input type="text" class="form-control" name="news-content" value="<%=news.getContent()%>">
            </div>
            <div class="form-group">
                <input type="hidden" class="form-control" name="news-post-date" value="<%=news.getPost_date()%>">
            </div>
            <div class="form-group">
                <button class="btn btn-success">UPDATE</button>
            </div>
        </form>
        <form action="/delete" method="post">
            <div class="form-group">
                <input type="hidden" class="form-control" name="news-id" value="<%=news.getId()%>">
            </div>
            <div class="form-group">
                <button class="btn btn-success">DELETE</button>
            </div>
        </form>
    </div>
    <%
        }
    %>
    <%
        if(currentUser != null) {
    %>
    <div class="row">
        <form action="/comment" method="post">
            <input type="text" name="comment-user-id" value="<%=currentUser.getId()%>">
            <input type="text" name="comment-news-id" value="<%=news.getId()%>">
            <textarea name="comment-text" id="" cols="30" rows="10"></textarea>
            <button class="btn btn-success">ADD COMMENT</button>
        </form>
    </div>
    <%
        ArrayList<Comment> comments = (ArrayList<Comment>) request.getAttribute("comments");
        for (Comment comment : comments) {
    %>
    <div class="row">
        <div class="card">
            <h4 class="card-title"><%=comment.getComment()%></h4>
            <h5 class="card-text"><%=comment.getUserComment().getEmail()%></h5>
            <h5 class="card-text"><%=comment.getUserComment().getFull_name()%></h5>
            <h5 class="card-text"><%=comment.getPostDate()%></h5>
        </div>
    </div>
    <%
        }
    %>
    <%
        }
    %>
    <%
        }
    %>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
