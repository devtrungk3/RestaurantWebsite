<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	HttpSession ses = request.getSession();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/base.css?version=1.1">
<link rel="stylesheet" type="text/css" href="css/header.css?version=1.1">
</head>
<body>
	<header class="header">
        <ul class="header_container">
            <li class="header_item"><a href="index.jsp">home</a></li>
     		<li class="header_item"><a href="menuServlet">menu</a></li>
     		<li class="header_item"><a href="about.jsp">about</a></li>
     		<% if(ses.getAttribute("username") != null) { %>
     		<li class="header_item" id="username">
     			<%=ses.getAttribute("username") %>
     			<div class="dropdown-container">
                    <ul class="dropdown">
                        <li class="dropdown-item">
                        	<div class="profile-btn">profile</div>
                        </li>
                        <form action="logout" method="post">
                            <li class="dropdown-item">
                                <input type="submit" value="logout" class="logout-btn">
                            </li>
                        </form>
                    </ul>
                </div>
     		</li>
     		<% } else { %>
            <li class="header_item"><a href="login.jsp">login</a></li>
            <% } %>
        </ul>
    </header>
</body>
</html>