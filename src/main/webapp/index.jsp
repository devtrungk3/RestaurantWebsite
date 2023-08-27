<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="css/main.css?version=1">
</head>
<body>
	<jsp:include page="header.jsp" /> 
    <main class="main">
        <section class="main_home">
            <div class="main_container"></div>
			<h1 class="main_title1">ABCDE</h1>
            <p class="main_title2">restaurant</p>
        </section>
        <section class="order_section">
            <div class="order_categories">
                <div class="order_item">
                    <img src="../images/starters.png" alt="">
                    <p class="order_title">starters</p>
                </div>
                <div class="order_item">
                    <img src="../images/starters.png" alt="">
                    <p class="order_title">sandwiches</p>
                </div>
                <div class="order_item">
                    <img src="../images/starters.png" alt="">
                    <p class="order_title">mains</p>
                </div>
                <div class="order_item">
                    <img src="../images/starters.png" alt="">
                    <p class="order_title">desserts</p>
                </div>
            </div>
            <a href="" class="button btn_order">order now</a>
        </section>
    </main>
</body>
</html>