<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Booked Ticket Reports</title>
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
	background-image:  url("images/preview.jpg");
	background-size: cover;
	background-position: center;
}
.navbar {
	width: 102%;
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
.navbar ul li::after{
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
td,th {
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
<li><a href="admin.jsp">Home</a></li>
<li><a href="addadmin.jsp">Add<br>Admin</a></li>
<li><a href="viewadmin.jsp">View<br>Admin</a></li>
<li><a href="addflight.jsp">Add<br>Flight</a></li>
<li><a href="flightreport.jsp">Flight<br>Report</a></li>
<li><a href="viewbookedticketreports.jsp">View Booked<br>Ticket Reports</a></li>
<li><a href="viewfeedback.jsp">View<br>Feedback</a></li>
<li><a href="addairport.jsp">Add<br>Airport</a></li>
<li><a href="addairline.jsp">Add<br>Airlines</a></li>
<li><a href="home.jsp">Logout</a></li>
</ul>
</div>
<form action="">
<table border="3">
<tr><th style="width: 250px">Name</th><th style="width: 300px">Email</th><th style="width: 85px">ID</th><th style="width: 90px">Booking<br>Time&Date</th><th style="width: 85px">Flight No</th><th style="width: 115px">Aircraft Name</th><th style="width: 85px">Departure<br>Date</th><th style="width: 115px">Departure City</th><th style="width: 85px">Departure<br>Time</th><th style="width: 115px">Arrival City</th><th style="width: 85px">Arrival Time</th><th style="width: 85px">Total Price</th></tr>
<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
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