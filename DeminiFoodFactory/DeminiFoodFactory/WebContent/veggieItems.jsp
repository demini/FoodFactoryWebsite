<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.demini.entity.Food"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Veggie Items</title>
<link href="css/desktop.css" rel="stylesheet" type="text/css" media="only screen and (min-width:769px)">
<link href="css/foodItems.css" rel="stylesheet" type="text/css" media="screen">
<link href='http://fonts.googleapis.com/css?family=Oleo+Script:700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Give+You+Glory' rel='stylesheet' type='text/css'>
</head>
<body>
<%@include file="/WEB-INF/pages/header.jsp" %>

	
<img class="foodimage1" src="images/homePage/home1.png">
<img class="foodimage2" src="images/homePage/orange2.png">
<img class="foodimage3" src="images/bigbreakfast/salada.png">
<img class="foodimage4" src="images/bigbreakfast/toma1.png">
<div id="items-wrapper" class="pad">
 <div id="id">
 <h1 ><%=session.getAttribute("id") %> </h1>
 </div>
 
 <div id="smalldis">
 <h2 class="green"><%=session.getAttribute("smalldis") %></h2>
 </div>
 
 <div id="largedis">
 <%=session.getAttribute("largedis") %>
 </div>
 
 <div id="ingredients">
 <h3>Ingredients</h3>
 <p><%=session.getAttribute("ingradients") %></p>
 </div>
 
 
 <div id="price">
 <p class="blue">Price :    LKR <%=session.getAttribute("price") %></p>
 </div>
 
 <div id="add">
 <ul>
 <li><a href="">Add to my meal</a></li>
 <li><a href="veggie.jsp">Back</a></li>
 </ul>
 </div>
 
 </div>
 
 <div id="image-wrapper">
 <img src="<%=session.getAttribute("bigimage")%>">
 </div>
 
 

<%@include file="/WEB-INF/pages/footer.jsp" %>
</body>
</html>