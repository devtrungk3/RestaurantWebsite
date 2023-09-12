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
<link rel="stylesheet" type="text/css" href="css/base.css?version=1">
<link rel="stylesheet" type="text/css" href="css/header.css?version=1">
</head>
<body>
	<header class="header">
        <ul class="header_container">
            <li class="header_item">home</li>
     		<li class="header_item"><a href="menu.jsp">menu</a></li>
     		<% if(ses.getAttribute("username") != null) { %>
     		<li class="header_item"><%=ses.getAttribute("username") %></li>
     		<% } else { %>
            <li class="header_item"><a href="login.jsp">login</a></li>
            <% } %>
            <li class="header_item">item4</li>
            <li class="header_item">item5</li>
            <li class="header_item">item6</li>
        </ul>
    </header>
</body>
</html>