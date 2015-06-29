<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Contact Us</title>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
<link href="css/desktop.css" rel="stylesheet" type="text/css" media="only screen and (min-width:769px)">
<link href="css/contact_us.css" rel="stylesheet" type="text/css" media="screen">
<link href='http://fonts.googleapis.com/css?family=Oleo+Script:700' rel='stylesheet' type='text/css'>

<script
src="http://maps.googleapis.com/maps/api/js">
</script>

<script>
var locations = [
      ['Colombo 2', 6.9333583, 79.8519406, 4],
      ['Rathnapura', 6.6667,80.4000, 5],
      ['Galle', 6.0536, 80.2117, 3],
      ['Moratuwa', 6.7991, 79.8767, 2],
      ['Mathugama', 6.5222, 80.1144, 1],
	  ['Kandy',7.2964, 80.6350, 6 ]
    ];


var myCenter=new google.maps.LatLng(6.9833,80.4833);
var marker, i;

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:8,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("google-map"),mapProp);

var infowindow = new google.maps.InfoWindow();

for (i = 0; i < locations.length; i++) {  
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map,
		animation:google.maps.Animation.BOUNCE
		
      });

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(map, marker);
        }
      })(marker, i));
    }

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>

</head>

<body>
   <img id="contactimage1" src="images/homePage/orange2.png">
   <img id="contactimage2" src="images/homePage/reg22.png">
   
	<%@include file="/WEB-INF/pages/header.jsp" %>
	
    
    
      <div id="wrapper-contact">
      <div id="wrap-top">
      
        <div id="google-map">
        	<p>Locations</p>
            
        </div>
        
        
        <div id="pizza-pic">
        <img src="images/homePage/contact1.png">
        </div>
    </div>
        
        
      
        <div id="adds">
        
        <div class="r1">
        	<div class="c1">
            	<div class="topic">
                <h4>Food factory -Union Place/Office</h4></div>
                <p>Gamma Pizzakraft (Lanka) Pvt Ltd</p>
                <p>No.321/A,</p>
                <p>Union Place,</p>
                <p>Colombo-02.</p>
                </div>
            
            <div class="c2">
            	<div class="topic">
                	<h4>Food factory - Dehiwela</h4></div>
                    <p>Gamma Pizzakraft (Lanka) Pvt Ltd</p>
                    <p>No.101 Galle Road,</p>
                    <p>Dehiwela.</p>
                </div>
            </div>
        
        
       <div class="r1">
        	<div class="c1">
            	<div class="topic">
                <h4>Food factory – Rajagiriya</h4></div>
                <p>Gamma Pizzakraft (Lanka) Pvt Ltd</p>
                <p>No.997/8,</p>
                <p>Sri Jayawardanapura Mw,</p>
                <p>Rajagiriya.</p>
                </div>
            
            <div class="c2">
            	<div class="topic">
                	<h4>Food factory – Wattala</h4></div>
                    
                <p>Gamma Pizzakraft (Lanka) Pvt Ltd,</p>
                <p>No.335,</p>
                <p>Negambo Road,</p>
                <p>Wattala.</p>
                </div>
            </div>
        
        <div class="r1">
        	<div class="c1">
            	<div class="topic">
                <h4>Food factory – Havelock</h4></div>
                <p>Gamma Pizzakraft (Lanka) Pvt Ltd,</p>
                    <p>No.454A</p>
                    <p>Havelock Road,</p>
                    <p>Colombo – 06.</p>
                </div>
            
            <div class="c2">
            	<div class="topic">
                	<h4>Food factory – Thalawathugoda</h4></div>
                   <p>Gamma Pizzakraft (Lanka) Pvt Ltd,</p>
                <p>No.531,</p>
                <p>Madiwela Rd,</p>
                <p>Thalawathugoda.</p> 
                </div>
            </div>
        
         <div class="r1">
        	<div class="c1">
            	<div class="topic">
                <h4>Food factory – Nugegoda</h4></div>
                <p>Gamma Pizzakraft (Lanka) Pvt Ltd,</p>
                <p>No.197,</p>
                <p>High Level Road,</p>
                <p>Nugegoda.</p>
                </div>
            <div class="c2">
            	<div class="topic">
                	<h4>Food factory - Kandy</h4></div>
                    <p>Gamma Pizzakraft (Lanka) Pvt Ltd,</p>
                    <p>No.6,</p>
                    <p>D.S.Senanayake Road,</p>
                    <p>Kandy.</p>
                </div>
            </div>
 
        
   </div>
   
 <%@include file="/WEB-INF/pages/footer.jsp" %>
        
        
</body>
</html>
