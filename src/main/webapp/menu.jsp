<%@page import="bean.MenuItem"%>
<%@page import="java.util.List"%>
<%@ page import="bean.CategoryItem" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Menu</title>
	<link rel="stylesheet" type="text/css" href="css/base.css?version=1.1">
	<link rel="stylesheet" type="text/css" href="css/menu.css?version=1.1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<% 
List<CategoryItem> categoryItems = (List<CategoryItem>) request.getAttribute("categoryItems");
List<MenuItem> menuItems = (List<MenuItem>) request.getAttribute("menuItems");
%>
	<jsp:include page="header.jsp" /> 
    <main class="main_menu">
        <header class="sub-header">
            <ul class="sub-header_container">
            	<%
				for (CategoryItem item : categoryItems) {
				%>
                <li class="categories_item">
                	<a href="#<%=item.getName()%>"><%=item.getName()%></a>
               	</li>
               	<% } %>
            </ul>
        </header>
        <section class="menu_header">
            <button class="search_open-btn"><i class="fa-solid fa-magnifying-glass"></i></button>
            <div class="search-bar_container">
                <button class="search_icon"><i class="fa-solid fa-magnifying-glass"></i></button>
                <input type="text" name="" id="" placeholder="Search" class="search-bar">
                <button class="search_close-btn"><i class="fa-solid fa-xmark"></i></button>
            </div>
            <ul class="categories_container">
            	<%
				for (CategoryItem item : categoryItems) {
				%>
                <li class="categories_item">
                	<a href="#<%=item.getName()%>"><%=item.getName()%></a>
               	</li>
               	<% } %>
            </ul>
        </section>
        <section class="menu_container" id="menu_container">
        	<%
        	String lastCategory = "";
        	for (int i=0; i < menuItems.size(); i++) {
        		MenuItem item = menuItems.get(i);
        		if (!lastCategory.equals(item.getCategory())) {
        			lastCategory = item.getCategory();
        	%>
        	<div id="<%=item.getCategory()%>" style="height: 60px"></div>
            <div class="memu_title"><%=item.getCategory()%></div>
            <div class="menu_grid" id="menu_grid_<%=item.getCategory()%>">
            <% } %>
                <div class="menu_item">
                    <div class="menu_content">
                        <div class="menu_name"><%=item.getName()%></div>
                        <% if (item.getDescription() != null) { %>
                        <div class="menu_desc"><%=item.getDescription()%></div>
                        <% } %>
                        <div class="menu_price"><%=item.getPrice()%>$</div>
                    </div>
                    <div class="menu_img">
                        <img src="<%=item.getUrl()%>" alt="">
                    </div>
                </div>
            <% 
            if (i+1 < menuItems.size() && !item.getCategory().equals(menuItems.get(i+1).getCategory())) {
            %>
            </div>
            <% } %>
            <% } %>
        </section>
    </main>
    <script>
    	var menuItems = JSON.parse('<%=request.getAttribute("jsonMenuItems")%>');
    	
    	var searchTimeout;
    	var lastCate = '';
    	var searchBar = document.querySelector('.search-bar');
    	searchBar.addEventListener('input', function() {
    		clearTimeout(searchTimeout);
    		searchTimeout = setTimeout(function() {
    			startSearch();
    		}, 500);
    	});
    	
    	function startSearch() {
    		var menu_container = document.getElementById('menu_container');
    		menu_container.innerHTML = "";
			for (var i=0; i<menuItems.length; i++) {
				if (menuItems[i].name.toLowerCase().includes(searchBar.value.toLowerCase())) {
					if (lastCate != menuItems[i].category) {
						lastCate = menuItems[i].category;
						menu_container.innerHTML +=
						"<div id='"+ lastCate +"' style='height: 60px'></div>" +
			            "<div class='memu_title'>"+ lastCate +"</div>" +
			            "<div class='menu_grid' id='menu_grid_"+ lastCate +"'></div>";
					}
					var menu_grid = document.getElementById('menu_grid_'+lastCate);
					if (menuItems[i].description == null) menuItems[i].description = "";
					if (menu_grid != null) {
						menu_grid.innerHTML +=
						"<div class='menu_item'>" +
							"<div class='menu_content'>" +
								"<div class='menu_name'>"+ menuItems[i].name +"</div>" +
								"<div class='menu_desc'>"+menuItems[i].description+"</div>" +
								"<div class='menu_price'>"+menuItems[i].price+"$</div>" +
							"</div>" +
							"<div class='menu_img'><img src='"+ menuItems[i].url +"' alt=''></div>" +
						"</div>";
					}
				}
			}
    	}
    </script>
    <script src="scripts/menu.js"></script>
</body>
</html>