<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}

.banner {
	width: 100%;
	height: 115vh;
	background-image: url("images/preview.jpg");
	background-size: cover;
	background-position: center;
}

.navbar {
	width: 85%;
	margin: auto;
	padding: 35px 0;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.logo {
	width: 220px;
	cursor: pointer;
}

.navbar ul li {
	list-style: none;
	display: inline-block;
	margin: 0 20px;
	position: relative;
}

.navbar ul li a {
	font-size: 25px;
	text-decoration: none;
	color: #fff;
	text-transform: uppercase;
}

.navbar ul li::after {
	content: '';
	height: 3px;
	width: 0;
	background: #009688;
	position: absolute;
	left: 0;
	bottom: -10px;
	transition: 0.5s;
}

.navbar ul li:hover::after {
	width: 100%;
}

table {
	background: white;
	margin-left: auto;
	margin-right: auto;
}

td, th {
	height: 65px;
	border: 3px solid black;
}

input[type="submit"] {
	font-size: 23px;
	margin-left: 8%;
	width: 80px;
}

h2 {
	text-align: center;
}

th {
	background: lightblue;
}
</style>
</head>
<body>
	<div class="banner">
		<div class="navbar">
			<img alt="Home Logo" src="images/download.png" class="logo">
			<ul>
				<li><a href="home1.jsp">Home</a></li>
				<li><a href="mybookings.jsp">My Bookings</a></li>
				<li><a href="aboutus1.jsp">About Us</a></li>
				<li><a href="contactus1.jsp">Contact Us</a></li>
				<li><a href="home.jsp">Log Out</a></li>
			</ul>
		</div>
		<div class="header">
			<h2>Search Result:</h2>
		</div>
		<form action="bookticket.jsp">
			<table border="3">
				<tr>
					<th style="width: 125px">Flight No</th>
					<th style="width: 150px">Aircraft Name</th>
					<th>Departure<br>Date
					</th>
					<th style="width: 150px">Departure City</th>
					<th>Departure<br>Time
					</th>
					<th style="width: 150px">Arrival City</th>
					<th style="width: 90px">Arrival<br>Time
					</th>
					<th style="width: 150px">Travel Class</th>
					<th style="width: 100px">Capacity</th>
					<th style="width: 110px">Price</th>
					<th style="width: 100px">Remain<br>Seats
					</th>
					<th style="width: 100px"></th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td><input type="submit" value="Book"
						style="background-color: blue; color: white"></td>
				</tr>
			</table>



		</form>

	</div>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>