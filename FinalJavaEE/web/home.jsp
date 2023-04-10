<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.javaEE.News" %>
<%@ page import="kz.bitlab.javaEE.Comment" %><%--
  Created by IntelliJ IDEA.
  User: BekRakhman
  Date: 28.03.2023
  Time: 12:20
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
      <h3>BITLAB NEWS</h3>
    </div>
    <div class="col-md-2">
      <h5>sales</h5>
    </div>
    <div class="col-md-2">
      <h5>location</h5>
    </div>
    <div class="col-md-2">
      <a href="/addnews" class="btn btn-success">ADD NEWS</a>
    </div>
    <div class="col-md-2">
      <a href="/login" class="btn btn-success">LOGIN</a>
    </div>
  </div>
</div>
<%
  ArrayList<News> news = (ArrayList<News>) request.getAttribute("news");
  for (News blog:news) {
%>
<div class="container">
  <div class="row">
    <div class="card">
      <h3 class="card-title"><%=blog.getTitle()%></h3>
      <div class="card-body">
        <h4 class="card-text"><%=blog.getContent()%></h4>
        <h4 class="card-text"><%=blog.getPost_date()%></h4>
        <a href="/details?id=<%=blog.getId()%>" class="btn btn-primary">DETAILS</a>
      </div>
    </div>
  </div>
  <%
    ArrayList<Comment> comments = (ArrayList<Comment>) request.getAttribute("comments");
    if (comments != null) {
      for (Comment comment: comments) {
  %>
  <div class="row">
    <h5><%=comment.getUserComment().getFull_name()%></h5>
    <p><%=comment.getComment()%></p>
    <p><%=comment.getPostDate()%></p>
  </div>
  <%
      }
    }
  %>
</div>
<%
  }
%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
