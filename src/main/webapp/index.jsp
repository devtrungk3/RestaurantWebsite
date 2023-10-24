<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="css/base.css?version=1.1">
<link rel="stylesheet" type="text/css" href="css/main.css?version=1.1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<main class="main">
		<section class="main_home">
			<div class="main_container"></div>
			<h1 class="main_title1">Third-T</h1>
			<p class="main_title2">restaurant</p>
		</section>
		<section class="order_section">
			<div class="order_categories">
				<div class="order_item">
					<img src="./images/starters.png" alt="">
					<p class="order_title">starters</p>
				</div>
				<div class="order_item">
					<img src="./images/sandwiches.png" alt="">
					<p class="order_title">sandwiches</p>
				</div>
				<div class="order_item">
					<img src="./images/mains.png" alt="">
					<p class="order_title">mains</p>
				</div>
				<div class="order_item">
					<img src="./images/desserts.png" alt="">
					<p class="order_title">desserts</p>
				</div>
			</div>
			<a href="" class="button btn_order">order now</a>
		</section>
		<section class="order_about_section">
			<div class="about">
				<div class="title_container">
					<h1 class="title">About</h1>
					<p class="subtitle">our restaurant</p>
				</div>
				<div class="socials_container">
					<i class="fa-solid fa-phone"></i>
					<i class="fa-solid fa-envelope"></i>
					<i class="fa-solid fa-location-dot"></i>
				</div>
				<div class="hours_container">
					<h3 class="subtitle2">HOURS</h3>
					<div class="container">
						<ul class="list days_list">
							<li>Monday -</li>
							<li>Tuesday -</li>
							<li>Wednesday -</li>
							<li>Thursday -</li>
							<li>Friday -</li>
							<li>Saturday -</li>
							<li>Sunday -</li>
						</ul>
						<ul class="list hours_list">
							<li>12pm-9pm</li>
							<li>12pm-9pm</li>
							<li>12pm-10pm</li>
							<li>12pm-10pm</li>
							<li>12pm-10pm</li>
							<li>12pm-10pm</li>
							<li>12pm-10pm</li>
						</ul>
					</div>
				</div>
				<a href="" class="button about_us_btn">About us</a>
			</div>
			<div class="order">
				<div class="title_container">
					<h1 class="title">Order</h1>
					<p class="subtitle">pick-up & delivery</p>
				</div>
				<div class="wrapper">
					<h3 class="subtitle2">CONTACTLESS TAKE-OUT</h3>
					<p>To place an order for pickup,</p>
					<p>
						please order via <a href="" class="link_to_menu">Menu</a>.
					</p>
				</div>
				<a class="button pickup_btn" href="">Order pickup</a>
			</div>
		</section>
		<section class="connect_section">
			<div class="background"></div>
			<div class="connect_container">
				<h3 class="title">connect with us</h3>
				<i class="fa-brands fa-facebook-f"></i> <i
					class="fa-brands fa-twitter"></i> <i class="fa-brands fa-instagram"></i>
			</div>
		</section>
	</main>
	
	<jsp:include page="footer.jsp" />

	<button id="topBtn">
		<i class="fa-solid fa-arrow-up fa-fade" style="color: black;"></i>
	</button>

	<script src="scripts/backToTop.js"></script>

</body>
</html>