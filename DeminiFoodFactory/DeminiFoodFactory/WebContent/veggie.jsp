<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Veggie</title>
<link href="css/desktop.css" rel="stylesheet" type="text/css" media="only screen and (min-width:769px)">
<link href="css/breakfirst.css" rel="stylesheet" type="text/css" media="screen">
<link href='http://fonts.googleapis.com/css?family=Oleo+Script:700' rel='stylesheet' type='text/css'>
</head>
<body>
<img class ="breakimage1" src="images/homePage/burger.png">
<img class ="breakimage2" src="images/homePage/onion.png">

<%@include file="/WEB-INF/pages/header.jsp" %>

<div id="veggie">
<h2>Veggie Fish & Salad</h2>
</div>

<div id="food-wrapper">
	<%  Integer finalNumber=(Integer)request.getSession().getAttribute("finalNumber");
	   
	   
	   for(int num=1; num<=finalNumber; num++){
		  if(num<=3){
	   		if(num%3==1) { %>
<div class="first-row size">
	<div class=" resize right firstcolumnBF">
	
    	<a href="veggieDetails?number=<%=(Integer)session.getAttribute("IdNumber"+num)%>"><img  class ="food" src="<%=session.getAttribute("veggieimage"+num) %>"></a>
        <h2 class="green"><%=session.getAttribute("head"+num) %></h2>
    </div>
 <%}else if(num%3==2){ %>   
    
    <div class="resize secondcolumnBF">
    <a href="veggieDetails?number=<%=(Integer)session.getAttribute("IdNumber"+num)%>"><img class ="food" src="<%=session.getAttribute("veggieimage"+num) %>"></a>
    <h2 class="green"><%=session.getAttribute("head"+num) %></h2>
    </div>
    
<%}else{ %>
    
    <div class="resize finalBF left">
       	<a href="veggieDetails?number=<%=(Integer)session.getAttribute("IdNumber"+num)%>"><img class ="food" src="<%=session.getAttribute("veggieimage"+num) %>"></a>
        <h2 class="green"><%=session.getAttribute("head"+num) %></h2>
       </div>

</div>

<%} 
	   		}else if(num<=6){
	   			if(num%3==1){%>
<div class="second-row size">
	<div class=" resize right firstcolumnBF">
    	<a href="veggieDetails?number=<%=(Integer)session.getAttribute("IdNumber"+num)%>"><img class ="food" src="<%=session.getAttribute("veggieimage"+num) %>"></a>
        <h2 class="green"><%=session.getAttribute("head"+num) %></h2>
    </div>
    <%}else if(num%3==2) {%>
    
    <div class="resize secondcolumnBF">
    <a href="veggieDetails?number=<%=(Integer)session.getAttribute("IdNumber"+num)%>"><img class ="food" src="<%=session.getAttribute("veggieimage"+num) %>"></a>
    <h2 class="green"><%=session.getAttribute("head"+num) %></h2>
    </div>
    
    <%}else{ %>
    
    <div class="resize finalBF left">
       	<a href="veggieDetails?number=<%=(Integer)session.getAttribute("IdNumber"+num)%>"><img class ="food" src="<%=session.getAttribute("veggieimage"+num) %>"></a>
        <h2 class="green"><%=session.getAttribute("head"+num) %></h2>
       </div>
</div>
<%}
	   			}else {
	   				if(num%3==1){%>
<div class="second-row size">
	<div class=" resize right firstcolumnBF">
    	<a href="veggieDetails?number=<%=(Integer)session.getAttribute("IdNumber"+num)%>"><img class ="food" src="<%=session.getAttribute("veggieimage"+num) %>"></a>
        <h2 class="green"><%=session.getAttribute("head"+num) %></h2>
    </div>
    <%}else if(num%3==2){ %>
    <div class="resize secondcolumnBF">
    <a href="veggieDetails?number=<%=(Integer)session.getAttribute("IdNumber"+num)%>"><img class ="food" src="<%=session.getAttribute("veggieimage"+num) %>"></a>
    <h2 class="green"><%=session.getAttribute("head"+num) %></h2>
    </div>
   <%}else{ %> 
    <div class="resize finalBF left">
       	<a href="veggieDetails?number=<%=(Integer)session.getAttribute("IdNumber"+num)%>"><img class ="food" src="<%=session.getAttribute("veggieimage"+num) %>"></a>
        <h2 class="green"><%=session.getAttribute("head"+num) %></h2>
       </div>

</div>
<%}
	   				}
	   				}%>


</div>
<%@include file="/WEB-INF/pages/footer.jsp" %>

</body>
</html>