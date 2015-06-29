<html>
<head>
<meta name="viewport" content="width=device-width">
<title>Food Factory</title>

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Oleo+Script:700' rel='stylesheet' type='text/css'>
<!-- Phone -->
<link href="css/phone.css" rel="stylesheet" type="text/css" media="only screen and (max-width:320px)">
<!-- Tablet -->
<link href="css/tablet.css" rel="stylesheet" type="text/css" media="only screen and (min-width:321px) and (max-width:768px)">
<!-- Desktop -->
<link href="css/desktop.css" rel="stylesheet" type="text/css" media="only screen and (min-width:769px)">
<style type="text/css">
		
		.div_wrapper > .front {position: absolute;
		                   -webkit-transform:perspective(600px) rotateY(0deg);
		                   transform:perspective(600px) rotateY(0deg);
						   backface-visibility:hidden;
						   transition:transform .5s linear 0s;}
		
		.div_wrapper > .back {position: absolute;
		                   -webkit-transform:perspective(600px) rotateY(180deg);  
		                   transform:perspective(600px) rotateY(180deg);
						   backface-visibility:hidden;
						   transition:transform .5s linear 0s;}
						   
		.div_wrapper:hover > .front { -webkit-transform:perspective(600px) rotateY(-180deg);
			transform:perspective(600px) rotateY(-180deg);
			}
			
		.div_wrapper:hover > .back { -webkit-transform:perspective(600px) rotateY(0deg);
			transform:perspective(600px) rotateY(0deg);
			}
		
		
	</style>
<script type="text/javascript">
	var banners=new Array();
	banners[0]="images/banners/banner1.png";
	banners[1]="images/banners/banner2.png";
	banners[2]="images/banners/banner3.png";
	banners[3]="images/banners/banner4.png";
	banners[4]="images/banners/banner5.png";
	banners[5]="images/banners/banner6.png";
	var bannerIndex=-1;
	
		function banner(){
			var bannerElement=document.getElementById("banner1");
			bannerIndex++;
			bannerElement.src=banners[bannerIndex];
			setTimeout("banner()",1100);
			if(bannerIndex==banners.length-1){
				bannerIndex=-1;
				}
			}
			onload=banner;
			
			function cdtd(){
			var offer=new Date ("August 18, 2015 00:01:00");
			var now= new Date();
			var timediff= offer.getTime()- now.getTime();
			
				if(timediff<=0){
					clearTimeout(timer);
					document.write("Offer is expired!");
					}
			var seconds= Math.floor(timediff/1000);
			var minutes=Math.floor(seconds/60);
			var hours=Math.floor(minutes/60);
			var days=Math.floor(hours/24);
			
			hours%=24;
			minutes%=60;
			seconds%=60;
			
			document.getElementById("daysBox").innerHTML=days;
			document.getElementById("hoursBox").innerHTML=hours;
			document.getElementById("minsBox").innerHTML=minutes;
			document.getElementById("secsBox").innerHTML=seconds;
			
			var timer=setTimeout("cdtd()",1000);
			
			}
    </script>
</head>

<body>
	<img class ="homeimage1" src="images/homePage/burger.png">
    <img class ="homeimage2" src="images/homePage/home1.png">
    
	<div id="header">
    	<div id="logo">
        <img src="images/logo/logo.png" >
        </div>
        
        <div id="offer">
<div id="description"><p>Enjoy 10% OFF<br/>
Remaining time: </p>
</div>

<div id="detailwrapper">
	
	<div id="days" class="boxSize">Days</div>
    
    <div id="hours" class="boxSize">Hours</div>
    
    <div id="mins" class="boxSize">Mins</div>
    
    <div id="secs" class="boxSize">Secs</div>
 </div>   
<div id="timewrapper">
	
	<div id="daysBox" class="boxSize"></div>
    
    <div id="hoursBox" class="boxSize"></div>
    
    <div id="minsBox" class="boxSize"></div>
    
    <div id="secsBox" class="boxSize"></div>
 </div>
 </div>
        
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
                	<li><a href="#">BREAKFIRST</a></li>
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
            <li><a href="login.jsp">LOGIN</a>
            	<ul>
                	 <li><a href="register.jsp">REGISTRE</a></li>
                </ul>
                </li>
         </ul>
            </div>

      </div>
      

          <div id="wrapper">
    
    <div id="banner">
    	<img src="images/banners/banner1.png" id="banner1">
    </div>
    
    <div id="menu">
    	<h2>Menu</h2>
    </div>
    
    <div id="first-row" class="size">
    <div class="div_wrapper">
    	<div class="resize right front firstcolumn">
        	<a href="#"><img class ="food" src="images/food menu/newbreakfirst.png"></a>
            <h2 class="brown">BREAKFIRST</h2>
        </div>
      <div id="one" class="resize right firstcolumn back">
        	<h2 class="brown">Breakfirst wrap</h2>  <h2 class="brown">King breakfirst burger</h2>  <h2 class="brown">Bacon butty</h2>  <h2 class="brown">Breakfirst platter</h2> <h2 class="brown">Hash browns</h2> <h2 class="brown">Muffins</h2>
				</div>
      </div>
      
     <div class="div_wrapper">
       <div class="resize front secondcolumn">
       		<a href="#"><img class ="food" src="images/food menu/newpizza.png"></a>
            <h2 class="red">PIZZA</h2>
       </div>
       <div id="two" class="resize secondcolumn back">
       <h2 class="red">Devilled chicken</h2> <h2 class="red">Sausage crust</h2> <h2 class="red">Pan pizza</h2> <h2 class="red">Cheesy bluster</h2> <h2 class="red">Hot & spicy chicken</h2> <h2 class="red">Veggie stravaganza</h2>
       </div>
     </div>
      
       
     <div class="div_wrapper">
       <div class="resize final left front">
       	<a href="#"><img class ="food" src="images/food menu/newveggie.png"></a>
        <h2 class="green">VEGGIE ,FIGH & <br> SALAD</h2>
       </div>
       <div id="three" class="resize final back">
       <h2 class="green">Veggie bean wrap</h2> <h2 class="green">Veggie bean burger</h2> <h2 class="green">King fish</h2> <h2 class="green">Garden side salad</h2> <h2 class="green">Kids veggie buger</h2> <h2 class="green">Crispy chicken salad</h2>
       </div>
     </div>
       
    </div>
    
    
    <div id="second-row" class="size">
         <div class="div_wrapper" >
             <div class="resize right firstcolumn front">
             	<a href="#"><img class ="food" src="images/food menu/newburger.png"></a>
                <h2 class="darkbrown">FLAME-GRILLED <br> BURGER</h2>
           </div>
           <div id="four" class="resize right firstcolumn back">
             <h2 class="darkbrown">Cheese burger</h2> <h2 class="darkbrown">Double cheese burger</h2> <h2 class="darkbrown">Hamburger</h2> <h2 class="darkbrown">Long rodeo BBQ</h2> <h2 class="darkbrown">Steak house</h2> <h2 class="darkbrown">Tripple whopper sandwich</h2>
           </div>
      </div>
               
          
             
           <div class="div_wrapper">
             <div class="resize secondcolumn front">
             	<a href="#"><img class ="food" src="images/food menu/newsides.png"></a>
                <h2 class="yellow">SIDES</h2>
             </div>
             <div id="five" class="resize secondcolumn back">
             <h2 class="yellow">Apple fries</h2>  <h2 class="yellow">Chicken fries</h2> <h2 class="yellow">Chilli cheese bites</h2> <h2 class="yellow">Hash brown</h2> <h2 class="yellow">Onion rings</h2> <h2 class="yellow">Chicken nuggets</h2>
             </div>
      </div>
       
                        
          <div class="div_wrapper">
             <div class="resize final left front" >
             	<a href="#"><img class ="food" src="images/food menu/newbev.png"></a>
                <h2 class="magenda">BEVERAGES</h2>
             </div>
            <div id="six" class="resize final left back">
             <h2 class="magenda">5 Alive</h2> <h2 class="magenda">Black coffee</h2> <h2 class="magenda">Hot chocolate</h2> <h2 class="magenda">Strawberry banana smoothie</h2> <h2 class="magenda">Shakes</h2> <h2 class="magenda">Tropical mango smoothie</h2>
            </div>
         </div>
    </div>
    
    <div id="third-row" class="size">
         
    	<div class="resize right firstcolumn execp"> </div>      
    
        
     <div class="div_wrapper">
     
        <div class="resize secondcolumn front">
        	<a href="#"><img class ="food" src="images/food menu/newsweet.png"></a>
            <h2 class="blue">SWEET TREATS</h2>
        </div>
       <div id="seven" class="resize secondcolumn back">
        <h2 class="blue">Belgian waffle</h2> <h2 class="blue">BK fusions</h2> <h2 class="blue">Chocolate cookie</h2> 
        <h2 class="blue">Strawberry sundae</h2> <h2 class="blue">Ice cream cone</h2> <h2 class="blue">Chocolate bronie hottie</h2>
       </div>
     </div>
      
        
        <div class="resize final left front"></div>
   </div>
    
    <div id="footer">
    <p>TM & cpyright 2015 Food factory Corporation.<br>
     All right reserved.</p>
    
    </div>
    
    <script type="text/javascript">
		cdtd();
    </script>
    
    
</body>

</html>