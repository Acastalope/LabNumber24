<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="Coffee.css" />
<body>
	<h2>Please fill out:</h2>
	<form action="formresults" onsubmit="return validateInfo();">
		<p>
			First Name: <input id="firstname" type="text" name="firstname"
				size="45">
		</p>
		<p>
			Last Name: <input id="lastname" type="text" name="lastname" size="45">
		</p>
		<p>
			Email: <input type="email" name="email" placeholder="abc@gmail.com"
				pattern="[-0-9a-zA-Z.+_]{5}+@[-0-9a-zA-Z.+_]+\\\\.[a-zA-Z]{2,4}"
				required size="45"><br />
		</p>
		
		<p>
			Phone Number: <input type="tel" name="phonenumber"
				placeholder="123-456-7890" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"
				required size="45"></input>
		</p>
		<p>
			Password: <input type="password" name="password" pattern=".{5,12}"
				title="Five or more characters" size="45"> <span
				class="note"><i>Must be 5 to 12 characters long</i></span>
			<!-- Password: <input id= "password" type="password" name="password">  -->
		</p>

		<h5>Favorite Coffee Drink:</h5>

		<span action="dropDown"> <select name="favoriteCoffeeDrink">
				<option value="French Roast">French Roast</option>
				<option value="Americano">Americano</option>
				<option value="Cappuccino">Cappuccino</option>
				<option value="Cafe Au Lait">Cafe Au Lait</option>
				<option value="Espresso">Espresso</option>
				<option value="Mochaccino">Mochaccino</option>
				<option value="Iced Coffee">Iced Coffee</option>
		</select>
		</span>
		<p></p>


		<p></p>
		<span action="checkboxEx">
			<h5>Other Favorite Hot Drinks:</h5> 
			<input type="checkbox" name="Earl Gray Tea" value="Earl Gray Tea"> Earl Gray Tea<br>
			<input type="checkbox" name="Breafast Tea" value="Breakfast Tea"> Breakfast Tea<br> 
			<input type="checkbox" name="Oolong Tea" value="Oolong Tea"> Oolong Tea<br> 
			<input type="checkbox" name="Green Tea" value="Green Tea"> Green Tea<br>
			<input type="checkbox" name="Jasmine Tea" value="Jasmine Tea"> Jasmine Tea<br> 
			<input type="checkbox" name="Chamomile Tea" value="Chamomile Tea"> Chamomile Tea<br> 
			<input type="checkbox" name="Hot Chocolate" value="Hot Chocolate"> Hot Chocolate<br> 

		</span>


		<p></p>
		<span action="radiobuttonsOption">
		<h5>Other Favorite Beverages:</h5> 
		<input type="radio" name="noncoffeeDrink" value="Lemonade" checked> Lemonade<br> 
		<input type="radio" name="noncoffeeDrink" value="Fresh Pressed Juice" checked> Fresh Pressed Juice<br> 
		<input type="radio" name="noncoffeeDrink" value="Fruit Smoothie" checked> Fruit Smoothie<br> 
		<input type="radio" name="noncoffeeDrink" value="Apple Juice" checked> Apple Juice<br> 
		<input type="radio" name="noncoffeeDrink" value="Chocolate Milk" checked> Chocolate Milk<br>
			<p></p> 
		<input type="submit" value="submit"></span> 

	</form>

	<script src="script.js"></script>

</body>
</html>