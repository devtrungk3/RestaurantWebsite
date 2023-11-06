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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
</head>
<body>
	<!-- Sidebar -->
	<div class="w3-sidebar w3-bar-block w3-white w3-animate-right"
		style="display: none; z-index: 10; right: 0; width: 300px"
		id="rightMenu">
		<div class="button-close">
			<button class="w3-button w3-circle w3-white"
				onclick="closeRightMenu()">
				<i class="fa-solid fa-xmark" style="color: darkgrey; width: 10px"></i>
			</button>
		</div>

		<h1
			style="text-transform: uppercase; text-align: center; font-weight: 100; margin: 0 0 20px 0;">
			New hours</h1>

		<h2 style="text-align: center; font-size: 20px; font-weight: 100">
			Monday - Tuesday</h2>

		<h2
			style="text-align: center; font-size: 18px; font-weight: 100; margin-bottom: 30px;">
			12:00PM to 9:00PM</h2>

		<h2 style="text-align: center; font-size: 20px; font-weight: 100">
			WEDNESDAY - SUNDAY</h2>

		<h2
			style="text-align: center; font-size: 18px; font-weight: 100; margin-bottom: 20px;">
			12:00PM to 10:00PM</h2>

		<div class="phone"
			style="display: flex; flex-direction: column; justify-content: center; align-items: center; margin-bottom: 30px;">
			<i class="fa-solid fa-phone fa-lg" style="margin: 0"></i>
			<h2 style="margin-bottom: 10px; color: #8b0000; font-size: 13px">
				Call Now</h2>
			<h2 style="margin: 0 0 10px 0; font-size: 18px; font-weight: 100;">
				0967 070 842</h2>
			<h2 style="margin: 0 0 10px 0; font-size: 18px; font-weight: 100;">
				0382 203 700</h2>
			<h2 style="margin: 0; font-size: 18px; font-weight: 100;">
				0818 741 182</h2>
		</div>

		<div class="direction"
			style="display: flex; flex-direction: column; justify-content: center; align-items: center; margin-bottom: 30px;">
			<i class="fa-solid fa-location-dot fa-lg" style="margin: 0 0 5px 0"></i>
			<h2 style="margin: 0 0 5px 0; color: #8b0000; font-size: 13px">
				Direction Here</h2>
			<h2 style="text-align: center; font-size: 18px; font-weight: 100; margin: 0;">
				470 Đ. Trần Đại Nghĩa | Đà Nẵng</h2>
		</div>

		<div class="direction"
			style="display: flex; flex-direction: column; justify-content: center; align-items: center;">
			<i class="fa-solid fa-envelope fa-lg" style="margin: 0 0 5px 0"></i>
			<p style="margin-bottom: 5px; color: #8b0000; font-size: 13px">
				Message Here</p>
			<h2 style="text-align: center; font-size: 18px; font-weight: 100; margin: 0;">
				thirdT@gmail.com</h2>
		</div>
	</div>

	<div class="w3-overlay" onclick="closeRightMenu()" id="myOverlay"></div>

	<header class="header">
		<ul class="header_container">
			<li class="header_item"><a href="index.jsp">home</a></li>
			<li class="header_item"><a href="menuServlet">menu</a></li>
			<li class="header_item"><a href="about.jsp">about</a></li>
			<%
			if (ses.getAttribute("username") != null) {
			%>
			<li class="header_item" id="username"><%=ses.getAttribute("username")%>
				<div class="dropdown-container">
					<ul class="dropdown">
						<li class="dropdown-item">
							<div class="profile-btn">profile</div>
						</li>
						<form action="logout" method="post">
							<li class="dropdown-item"><input type="submit"
								value="logout" class="logout-btn"></li>
						</form>
					</ul>
				</div></li>
			<%
			} else {
			%>
			<li class="header_item"><a href="login.jsp">login</a></li>
			<%
			}
			%>
			<div onclick="openRightMenu()">
				<li class="header_item">contact</li>
			</div>
		</ul>
	</header>

	<script>
		function openRightMenu() {
			document.getElementById("rightMenu").style.display = "block";
			document.getElementById("myOverlay").style.display = "block";
		}

		function closeRightMenu() {
			document.getElementById("rightMenu").style.display = "none";
			document.getElementById("myOverlay").style.display = "none";
		}
	</script>
</body>
</html>