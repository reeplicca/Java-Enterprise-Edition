<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.javaEE.Item" %>
<%@ page import="kz.bitlab.javaEE.User" %><%--
  Created by IntelliJ IDEA.
  User: BekRakhman
  Date: 18.03.2023
  Time: 15:18
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
%>
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <h3>SHOP</h3>
        </div>
        <div class="col-md-2">
            <h5>sales</h5>
        </div>
        <div class="col-md-2">
            <h5>location</h5>
        </div>
        <%
            if (currentUser == null) {
        %>
        <div class="col-md-3">
            <a href="/additem" class="btn btn-success">Add Item</a>
        </div>
        <div class="col-md-2">
            <a href="/login" class="btn btn-success">LOGIN</a>
        </div>
        <%
        } else {
        %>
        <div class="col-md-3">
            <a href="/additem" class="btn btn-success">Add Item</a>
        </div>
        <div class="col-md-2">
            <form action="/logout" method="post">
                <button class="btn btn-success">LOGOUT</button>
            </form>
        </div>
        <%
            }
        %>
    </div>
</div>
<%
    if (currentUser != null) {
%>
<div class="container">
    <%
        ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("items");
        for (Item item:items) {
    %>
   <div class="row">
      <div class="card">
        <h3 class="card-title"><%=item.getName()%></h3>
        <div class="card-body">
          <h4 class="card-text"><%=item.getPrice()%></h4>
          <h4 class="card-text"><%=item.getAmount()%></h4>
          <a href="/details?id=<%=item.getId()%>" class="btn btn-primary">DETAILS</a>
        </div>
      </div>
   </div>
    <%
        }
    %>
</div>
<%
    } else {
%>
<div class = "row">
    <div class = "alert alert-danger">
        YOU ARE NOT LOGIN
    </div>
</div>
<%
    }
%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
