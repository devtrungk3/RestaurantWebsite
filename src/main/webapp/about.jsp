<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale-1">
<title>About</title>

<link rel="stylesheet" type="text/css" href="css/about.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Urbanist:wght@100;300&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<main class="main">
		<section class="main_poster">
			<div class="background"></div>
			<div class="slogan_container">
				<h1 class="main_title1">Third-T</h1>
				<p class="main_title2">restaurant</p>
			</div>
		</section>

		<section class="address_infor justify-content-center">
			<div id="informantion_container" class="row justify-content-center">
				<div
					class="d-flex justify-content-between col-8 border-bottom border-black px-0 py-1"
					style="border-bottom-color: black !important; border-bottom-width: 1.5px">
					<div class="px-0 ">
						<p class="mb-0"
							style="line-height: 1.6rem; font-size: 15px; letter-spacing: 0.25rem">
							GREENWICH VILLAGE</p>
					</div>
					<div class="px-0">
						<p class="mb-0"
							style="line-height: 1.6rem; font-size: 15px; letter-spacing: 0.25rem">
							140 WEST 4TH STREET</p>
					</div>
				</div>
				<div class="d-flex justify-content-between col-8 px-0 pt-3"
					style="border-bottom-color: black !important; border-bottom-width: 1.5px">
					<div class="px-0 ">
						<p class="mb-0"
							style="line-height: 1.6rem; font-size: 15px; letter-spacing: 0.25rem">
							Monday to Tuesday, 12pm-9pm</p>
					</div>
					<div class="px-0">
						<p class="mb-0"
							style="line-height: 1.6rem; font-size: 15px; letter-spacing: 0.25rem">
							212.260.7049</p>
					</div>
				</div>
				<div class="d-flex justify-content-between col-8 px-0 pt-3"
					style="border-bottom-color: black !important; border-bottom-width: 1.5px">
					<div class="px-0 ">
						<p class="mb-0"
							style="line-height: 1.6rem; font-size: 15px; letter-spacing: 0.25rem">
							Wednesday to Sunday, 12pm-10pm</p>
					</div>
					<div class="px-0">
						<p class="mb-0"
							style="line-height: 1.6rem; font-size: 15px; letter-spacing: 0.25rem">

							212.260.1212</p>
					</div>
				</div>
			</div>
		</section>
		<section class="other_information">
			<div class="mx-5 my-2 d-flex justify-content-around row">
				<div class="col mx-2 text-center p-4 font-f justify-content-center"
					style="background-color: rgb(240, 239, 239);">
					<img alt="con bo" src="./images/conbo160.png"
						class="rounded-circle border border-black">
					<h4 class="pt-4 pb-1 uppercase-text"'>VEGAN</h4>
					<p class="px-6 pb-5">fine what it means to be vegan by creating
						innovative mock meat and seafood dishes.</p>
					<button type="button"
						class="btn btn-outline-secondary bot-button uppercase-text">Reviews</button>
				</div>
				<div class="col mx-2 text-center p-4 font-f justify-content-center"
					style="background-color: rgb(240, 239, 239);">
					<img alt="con bo" src="./images/conbo160.png"
						class="rounded-circle border border-black">
					<h4 class="pt-4 pb-1 uppercase-text"'>GLOBAL CUISINE</h4>
					<p class="px-6 pb-5">
						Every year we add new vegan dishes from around the word. Newest
						dishes include: <br> <br>Portobello Fritters, Salmon
						Teriyaki, Pasta Carbonara, Rigatoni Bolognese, Caesar, Greek and
						Cobb Salad
					</p>
					<button type="button"
						class="btn btn-outline-secondary bot-button uppercase-text">menu</button>
				</div>
				<div class="col mx-2 text-center p-4 font-f justify-content-center"
					style="background-color: rgb(240, 239, 239);">
					<img alt="con bo" src="./images/conbo160.png"
						class="rounded-circle border border-black">
					<h4 class="pt-4 pb-1 uppercase-text"'>NEW YORK CITY</h4>
					<p class="px-6 pb-5">
						We are located in historic Greenwichk Village half a block away
						from Washington Square Park. <br> <br>140 West 4th
						Street NY, NY 10012 (between 6th Ave. and MacDougal St.)
					</p>
					<button type="button"
						class="btn btn-outline-secondary bot-button uppercase-text">find
						us</button>
				</div>
			</div>
		</section>
		<section class="blur_bg mx-5"
			style="height: 650px; display: flex; justify-content: center; align-items: center;">
			<div class="background"></div>
			<div class="deli" style="position: absolute;">
				<div class="fontnew">
					<div class="d-flex justify-content-center">
						<span class="mb-1 text-center fontnew delivery-heading "
							style="font-size: 60px; border-bottom: 1px solid black;">DELIVERY</span>
					</div>

					<p class="fontnew text-center"
						style="font-size: 40px; color: rgb(162, 53, 52)">on demand</p>
				</div>
				<div>
					<p class="text-center fontnew">
						Delivery is currently only available through our partners:<br>
						Postmates, GrubHub, Seamless & UberEats
					</p>
				</div>
				<div class="d-flex justify-content-center">
					<div class="row col-6">
						<div class="col-sm  mt-3 ml-4 mr-2 p-0 text-center">
							<img alt="bike" src="./images/food-delivery.png">
							<p class="fontnew text-center uppercase-text mb-1"
								style="font-size: 27px; color: rgb(162, 53, 52)">red bamboo</p>
							<p class="text-center" style="font-size: 17px;">
								<b>Take out</b>
							</p>
							<p class="text-center">We are currently offering contactless
								take out via our website online order page.</p>
						</div>
						<div class="col-sm  mt-3 mr-4 ml-2 p-0 text-center">
							<img alt="bike" src="./images/food-delivery.png">
							<p class="fontnew text-center uppercase-text mb-1"
								style="font-size: 27px; color: rgb(162, 53, 52)">POSTMATES</p>
							<p class="text-center" style="font-size: 17px;">
								<b>Delivery</b>
							</p>
							<p class="text-center">
								Receive up to $100 credit on your first weeks order.<br>
								code: redbamboo100
							</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class="text-center mt-5">
			<img alt="" src="./images/store.png" height="600px"> 
		</div>
	</main>

</body>
</html>