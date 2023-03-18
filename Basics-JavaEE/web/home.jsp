<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.Bitlab.JavaEE.JSP_Two.addItem.Item" %>
<%@ page import="kz.Bitlab.JavaEE.JSP_Two.addItem.DBManager" %><%--
  Created by IntelliJ IDEA.
  User: BekRakhman
  Date: 15.03.2023
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <div class = "container">
        <div class = "row">
            <div class = "col-md-3">
                <h3>BitHub</h3>
            </div>
            <div class = "col-md-2">
                <h5>java-start</h5>
            </div>
            <div class = "col-md-2">
                <h5>java-core</h5>
            </div>
            <div class = "col-md-3">
                <h5>Web</h5>
            </div>
            <div class = "col-md-2">
                <h5>Login</h5>
            </div>
        </div>
        <%
            ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("items");
        %>
        <div class = "row">
            <%
                for (Item item:items){
            %>
            <div class = "card">
                <h3 class =  "card-title"><%=item.getName()%></h3>
                <div class = "card-body">
                    <h4 class = "card-text"><%=item.getPrice()%></h4>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
