<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Register</title>
<link href="css/login.css" rel="stylesheet" type="text/css" media="screen">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
<!-- Desktop -->
<link href="css/desktop.css" rel="stylesheet" type="text/css" media="only screen and (min-width:769px)">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Oleo+Script:700' rel='stylesheet' type='text/css'>
</head>

<body>
 <img class="loginImage" src="images/homePage/reg.png">

        <%@include file="/WEB-INF/pages/header.jsp" %>

        
        
     <div id="picture-reg">   
        
	<div id="container-reg">
    
    
    	<div id="login">
        	<h1>Register in Food Factory</h1>
            <form action="register" method="get" >
            
                 <p><input type="text" name="name" value="" placeholder="name"></p>
                 <p><input type="text" name="username" value="" placeholder="username or email"></p>
                <p><input type="password" name="password1" value="" placeholder="password"></p>
                <p><input type="password" name="password2" value="" placeholder="confirm password"></p>
                <p id="remember_me">
                	<label>
                    	<input type="checkbox" name="remember_me" id="remember_me">
                        Remember me on this computer
                    </label>
                </p> 
                <p id="submit"><input type="submit" name="commit" value="Create account"></p>
            </form>
        </div>   
     
     
    </div>
   </div>
    
   <%@include file="/WEB-INF/pages/footer.jsp" %>
</body>
</html>
