<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="http://getbootstrap.com/favicon.ico">

        <title>Signin Template for Bootstrap</title>

        <!-- Bootstrap core CSS -->
        <link href="bootstrap.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="signin.css" rel="stylesheet">

    </head>

    <body>


        <div class="container">

            <form action="login"  class="form-signin">
                <h2 class="form-signin-heading">Please sign in</h2>
                <label for="inputEmail" class="sr-only">Email address</label>
                    <input id="inputEmail" class="form-control" placeholder="Email address" type="text" name="username" required="" autofocus="" type="email">
                <label for="inputPassword" class="sr-only">Password</label>
                    <input id="inputPassword" class="form-control" placeholder="Password" type="password" name="password" required="" type="password">
                <div class="checkbox">
                    <label>
                        <input value="remember-me" type="checkbox"> Remember me
                    </label>
                </div>

                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            </form>

            <%--<form action="login">--%>
                <%--Username: <input type="text" name="username" value="" /><br />--%>
                <%--Password: <input type="password" name="password" value="" /><br />--%>
                <%--<input type="submit" value="Login" />--%>
            <%--</form>--%>

        </div>

    </body>
</html>

<%--<table border="1">--%>
<%--<thead>--%>
<%--<tr>--%>
<%--<th>meno</th>--%>
<%--<th>hash</th>--%>
<%--<th>house</th>--%>
<%--</tr>--%>
<%--</thead>--%>
<%--<c:forEach items="${users}" var="user">--%>
<%--<tr>--%>
<%--<td><c:out value="${user.name}"/></td>--%>
<%--<td><c:out value="${user.hash}"/></td>--%>
<%--<td><c:out value="${user.house}"/></td>--%>
<%--<td>--%>
<%--<form method="post" action="${pageContext.request.contextPath}/user/delete?id=${user.name}"--%>
<%--style="margin-bottom: 0;"><input type="submit" value="Smazat"></form>--%>
<%--</td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--</table>--%>

<%--<form action="${pageContext.request.contextPath}/login/add" method="post">--%>
<%--<table>--%>
<%--<tr>--%>
<%--<th>meno usera:</th>--%>
<%--<td><input type="text" name="name" value="<c:out value='${param.name}'/>"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<th>hash usera:</th>--%>
<%--<td><input type="text" name="hash" value="<c:out value='${param.hash}'/>"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<th>house usera:</th>--%>
<%--<td><input type="text" name="house" value="<c:out value='${param.house}'/>"/></td>--%>
<%--</tr>--%>
<%--</table>--%>
<%--<input type="Submit" value="Zadat"/>--%>
<%--</form>--%>