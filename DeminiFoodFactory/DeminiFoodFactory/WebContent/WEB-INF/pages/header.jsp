<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div id="header">
    	<div id="logo">
        <img src="images/logo/logo.png" >
        </div>
        <%
			if(session.getAttribute("name")==null){
				
		%>
        <div id="notlog">
        
        
        	<a href="login.jsp">SIGN IN</a>
        	<a href="register.jsp">SIGN UP</a>
        	</div>
        	<%
			}else{
		%>
		<div id="log">
		<h2>Welcome : <%=session.getAttribute("name") %></h2>
		<a href="logout">SIGN OUT</a>
		
        </div>
        
        <%
			}
		%>
		
        <div id="social-media">
        	<p class="head">Food Factory on social</p>
            <ul>
            	<li><a href="http//:www.facebook.com"><img src="images/icons/facebook_32.png"></a></li></li>
                <li><a href="http//:www.twitter.com"><img src="images/icons/twitter_32.png"></a></li></li>
                <li><a href="#"><img src="images/icons/rss_32.png"></a></li></li>
                <li><a href="http//:www.linkedln.com"><img src="images/icons/linkedin_32.png"></a></li></li>
                <li><a href="http//:www.yelp.com"><img src="images/icons/yelp_32.png"></a></li></li>
                <li><a href="http//:www.youtube.com"><img src="images/icons/youtube_32.png"></a></li></li>
            </ul>
            
            <p class="number">Hotline : 011-272-97-29
          </p>
        </div>

	<div id="topnav">
    	<ul>
        	<li><a href="home.jsp">FOOD<img src="images/icons/newArrow.png"></a>
            	<ul>
                	<li><a href="breakfirst.jsp">BREAKFAST</a></li>
                    <li><a href="#">PIZZA</a></li>
                    <li><a href="#">VEGGIE FISH & SALAD</a></li>
                    <li><a href="#">FLAME-GRILLED BURGER</a></li>
                    <li><a href="#">SIDES</a></li>
                    <li><a href="#">BEVERAGES</a></li>
                    <li><a href="#">SWEET TREATES</a></li>
                </ul>
            </li>
            <li><a href="contact_us.jsp">CONTACT US</a></li>
            <li><a href="about_us.jsp">ABOUT US</a></li>
            <li><a href="#">LOCATIONS</a></li>
            <li><a href="#">FEEDBACK</a></li>
            
         </ul>
         
            </div>

      </div>
    
</body>
</html>