<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Add Items</title>
<link href="css/addItems.css" rel="stylesheet" type="text/css" media="screen">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
<!-- Desktop -->
<link href="css/desktop.css" rel="stylesheet" type="text/css" media="only screen and (min-width:769px)">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Oleo+Script:700' rel='stylesheet' type='text/css'>
</head>

<body>
<img id="im1" src="images/icons/back3.png">
<img id="im2" src="images/icons/back2.png">
<img id="im3" src="images/homePage/toma.png">
<%@include file="/WEB-INF/pages/header.jsp" %>
	<div id="addItems">
        	<h1>ADD NEW FOOD ITEMS FROM HERE</h1>
            <form method="post" action="add"  >
            	<select name="catergory">
    				<option value="" disabled="disabled" selected="selected">Select the item catergory</option>
    				<option value="1">Breakfast</option>
    				<option value="2">Pizza</option>
                    <option value="3">Veggie,fish & salad</option>
    				<option value="4">Flame-grilled burger</option>
                    <option value="5">Sides</option>
    				<option value="6">Beverages</option>
                    <option value="7">Sweet treates</option>
				</select>
            	<p><input type="text" name="number" value="" placeholder="ID number"></p>
                <p><input type="text" name="id" value="" placeholder="Item Name"></p>
                <p><textarea rows="" cols="" name="smalldis" placeholder="Item Theme"></textarea></p>
                <p ><textarea class="large" rows="" cols="" name="largedis" placeholder="Description"></textarea></p>
                <p ><textarea class="large" rows="" cols="" name="ingradients" placeholder="Ingredients"></textarea></p>
                <p><input type="text" name="price" value="" placeholder="Price"></p>
                <div class="labelA">
                <label>
                    	 Insert a 250*175 size image here.
                 </label>
                 </div>
                <p><input type="file" name="image1" ></p>
                
                
                <div class="labelA">
                <label>
                    	 Insert a 500*540 size image here.
                 </label>
                 </div>
                <p><input type="file" name="image2" ></p>
                	
                
                <p id="submit"><input type="submit" name="commit" value="Add Item"></p>
            </form>
        </div>
        
<%@include file="/WEB-INF/pages/footer.jsp" %>
</body>
</html>
