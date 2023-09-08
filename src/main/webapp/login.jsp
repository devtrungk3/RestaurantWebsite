<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"
	href="//use.fontawesome.com/releases/v5.0.7/css/all.css" />
<link rel="stylesheet" type="text/css" href="css/login.css?version=1">
</head>
<body>
	<div class="background">
		<div class="shape"></div>
		<div class="shape"></div>
	</div>

	<form action="">
		<h3>Login Here</h3>

		<label for="username">Email</label> 
		<input type="text"
			placeholder="Enter your email" id="username">
		<label
			for="password">Password</label> <input type="text"
			placeholder="Password" id="password">
		<button>Log In</button>
		<div class="other">
			<a class="home" href="index.jsp">
				<i class="fas fa-arrow-left"></i> Back to home
			</a>
			<a class="register" href="register.jsp">Register</a>
		</div>
	</form>
</body>
</html>