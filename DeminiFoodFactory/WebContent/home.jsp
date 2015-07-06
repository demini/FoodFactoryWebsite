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
			setTimeout("banner()",1500);
			if(bannerIndex==banners.length-1){
				bannerIndex=-1;
				}
			}
			onload=banner;
			
		
    </script>
</head>

<body>
	<img class ="homeimage1" src="images/homePage/burger.png">
    <img class ="homeimage2" src="images/homePage/home1.png">
    
	<%@include file="/WEB-INF/pages/header.jsp" %>
      

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
    
     <%@include file="/WEB-INF/pages/footer.jsp" %>
    
   
    
    
</body>

</html>