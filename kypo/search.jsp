<%--
  Created by IntelliJ IDEA.
  User: dano
  Date: 22.4.17
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SQL Injection Demo - Search Product</title>
</head>
<body>
<%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("username")%>
<h1>Search Product</h1>
<form action="search">
    Product Name: <input type="text" name="product_name" value="" /><br />
    <input type="submit" value="Submit" />
</form>
<%
    }
%>

</body>
</html>