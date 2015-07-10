<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Breakfast</title>
<link href="css/desktop.css" rel="stylesheet" type="text/css" media="only screen and (min-width:769px)">
<link href="css/breakfirst.css" rel="stylesheet" type="text/css" media="screen">
<link href='http://fonts.googleapis.com/css?family=Oleo+Script:700' rel='stylesheet' type='text/css'>
</head>
<body>
<img class ="breakimage1" src="images/homePage/burger.png">
<img class ="breakimage2" src="images/homePage/onion.png">
<img class ="breakimage3" src="images/homePage/toma.png">
<%@include file="/WEB-INF/pages/header.jsp" %>

<div id="breakfirst">
<h2>Breakfast</h2>
</div>
<div id="food-wrapper">
<div class="first-row size">
	<div class=" resize right firstcolumnBF">
    	<a href="foodDetails?number=1"><img  class ="food" src="images/breakfirst/baconEgg&CheeseCroissanwich.png"></a>
        <h2 class="brown">Bacon, Egg & Cheese Croissan'wich</h2>
    </div>
    
    <div class="resize secondcolumnBF">
    <a href="foodDetails?number=2"><img class ="food" src="images/breakfirst/baconEgg&CheeseMuffin.png"></a>
    <h2 class="brown">Bacon, Egg & Cheese Muffinsan'wich</h2>
    </div>
    
    <div class="resize finalBF left">
       	<a href="foodDetails?number=3"><img class ="food" src="images/breakfirst/belgianWaffle.png"></a>
        <h2 class="brown">Belgian Waffle</h2>
       </div>
</div>

<div class="second-row size">
	<div class=" resize right firstcolumnBF">
    	<a href="foodDetails?number=4"><img class ="food" src="images/breakfirst/breakfastHotPot.png"></a>
        <h2 class="brown">Breakfast HotPot</h2>
    </div>
    
    <div class="resize secondcolumnBF">
    <a href="foodDetails?number=5"><img class ="food" src="images/breakfirst/breakfirstWrap.png"></a>
    <h2 class="brown">Breakfirst Wrap</h2>
    </div>
    
    <div class="resize finalBF left">
       	<a href="foodDetails?number=6"><img class ="food" src="images/breakfirst/doubleCroissanwichWithSausage.png"></a>
        <h2 class="brown">Double Croissanwich WithSausage</h2>
       </div>
</div>

<div class="second-row size">
	<div class=" resize right firstcolumnBF">
    	<a href="foodDetails?number=7"><img class ="food" src="images/breakfirst/KingBreakfastBurger.png"></a>
        <h2 class="brown">King Breakfast Burger</h2>
    </div>
    
    <div class="resize secondcolumnBF">
    <a href="foodDetails?number=8"><img class ="food" src="images/breakfirst/sausageEgg&CheeseMufffin.png"></a>
    <h2 class="brown">Sausage Egg & Cheese Mufffin</h2>
    </div>
    
    <div class="resize finalBF left">
       	<a href="foodDetails?number=9"><img class ="food" src="images/breakfirst/stuffedHashBrown.png"></a>
        <h2 class="brown">Stuffed Hash Brown</h2>
       </div>
</div>


</div>
<%@include file="/WEB-INF/pages/footer.jsp" %>
</body>
</html>