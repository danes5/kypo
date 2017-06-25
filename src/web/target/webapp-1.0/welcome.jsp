<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <!-- META -->
    <meta charset="utf-8">

    <link rel="icon" href="img/kypo.jpg">
    <title>Hogwarts</title>

    <!-- CORE CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/css.css" rel="stylesheet" type="text/css">

    <!-- PLUGINS -->
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/owl.css" rel="stylesheet">

    <!-- THEME CSS -->
    <link href="css/theme.css" rel="stylesheet">
</head>
<body>
    <%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
    <%} else {
%>

<body class="fixed-header">

<header>
    <div class="pull-left" style="width:100%; max-width:250px; padding-left:30px;">
        <form action="/welcome" method="get">
            <input type="text" name="name" placeholder="Search" id="searchbar" class="form-control" value=""
                   style="height:30px; margin-top:15px; float:left; opacity:.4;">
        </form>

    </div>
    <div class="hidden-xs hidden-sm"
         style="position:fixed; z-index:-5; background:#000; height:100px; top:0; left:0; width:100%;">

    </div>


    <div style="text-align: center; float: none; margin: 0 auto; border-top:thin solid #333;">
        <nav style="float:none;">
            <div>
                <ul>
                    <li>
                        <a>
                            Hogwarts
                        </a>
                    </li>
                    <li>
                        <a>
                            Quidditch
                        </a>
                    </li>
                    <li>
                        <a>
                            Courses
                        </a>
                    </li>
                    <li>
                        <a>
                            Houses
                        </a>
                    </li>
                    <li>
                        <a>
                            Students
                        </a>
                    </li>
                    <li>
                        <a>
                            News
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</header>

<div id="wrapper" style="margin-top:35px;">


    <section class="hero cover"
             style="background-size:cover; background: url(img/background.jpg) center center;min-height:615px;">
                <%
    if (session.getAttribute("user") != null) {
%>
        <table align="center">
            <tr>
                <td style="padding-right:35px">
                    <img src="img/${sessionScope.user.nickname}.jpg" alt="avatar">
                </td>
                <td style="padding-right:35px; vertical-align: top; padding-top: 50px;">
                    <h1 style="color:#FFF; padding-bottom: 10px;">Name:</h1>
                    <h1 style="color:#FFF; padding-bottom: 10px;">House:</h1>
                    <h1 style="color:#FFF; padding-bottom: 10px;">Nickname:</h1>
                </td>
                <td  style="vertical-align: top; padding-top: 50px;">
                    <h1 style="color:#FFF; padding-bottom: 10px;">${sessionScope.user.name}</h1>
                    <h1 style="color:#FFF; padding-bottom: 10px;">${sessionScope.user.house}</h1>
                    <h1 style="color:#FFF">${sessionScope.user.nickname}</h1>
                </td>
            </tr>
        </table>
                <%
    } else {
        %>
         <div class="container text-center" style="padding-top:35px;">
            <div class="visible-lg visible-xl" style="height:75px;"></div>
             <h1 style="color:#FFF; text-transform:none; line-height:18px;margin-bottom:60px;">
                Welcome to Hogwarts <%=session.getAttribute("username")%>
            </h1>
                 <%
    if (session.getAttribute("username").equals("cuthy")) {
%>
             <h1 style="color:#FFF; text-transform:none; line-height:18px;margin-bottom:60px;">
                 <a href="img/exam.pdf" download style="color:#FFA726"><u>Here</u></a>
                    you can download your prepared exam
             </h1>


                 <%  } if (session.getAttribute("username").equals("admin")) { %>
             <h1 style="color:#FFF; text-transform:none; line-height:18px;margin-bottom:60px;">
                 Flag is Hedviga
             </h1>
      <%  } }  %>

    </section>
</div>
<%
    }
%>
</body>
</html>