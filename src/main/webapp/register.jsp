<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet"
	href="//use.fontawesome.com/releases/v5.0.7/css/all.css" />
<link rel="stylesheet" type="text/css" href="css/register.css?version=1">
</head>
<body>
	<div class="background">
		<div class="shape"></div>
		<div class="shape"></div>
	</div>
	<form action="">
		<h3>Resister Here</h3>

		<label for="username">Username</label> <input type="text"
			placeholder="Enter your username" id="username"> <label
			for="username">Email</label> <input type="text"
			placeholder="Enter your email" id="email"> <label
			for="password">Password</label> <input type="text"
			placeholder="Password" id="password"> <label for="password">Confirm your password</label>
		<input type="text" placeholder="Retype password" id="password">
		<button>Register</button>
		<div class="other">
			<a class="home" href="index.jsp""> <i class="fas fa-arrow-left"></i>
				Back to home
			</a> <a class="login" href="login.jsp">Login</a>
		</div>
	</form>
</html>