<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.javaEE.Item" %>
<%@ page import="kz.bitlab.javaEE.DBManager" %>

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
                <h3>BitHub</h3>
            </div>
            <div class="col-md-2">
                <h5>java-start</h5>
            </div>
            <div class="col-md-2">
                <h5>java-core</h5>
            </div>
            <div class="col-md-3">
                <h5>Web</h5>
            </div>
            <div class="col-md-2">
                <h5>login</h5>
            </div>
        </div>
        <%
            ArrayList<Item>items = (ArrayList<Item>) request.getAttribute("items");
        %>
        <div class="row">
            <%
                for(Item item:items){
            %>
            <div class="card">
                <h3 class="card-title"><%=item.getName()%></h3>
                <div class="card-body">
                    <h4 class="card-text"><%=item.getPrice()%></h4>
                    <h4 class="card-text"><%=item.getAmount()%></h4>
                    <a href="/details?id=<%=item.getId()%>" class = "btn btn-success">DETAILS</a>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
