<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
<link rel="stylesheet" href="registerstyle.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<style type="text/css">
	.container {
	  width: 550px;
	}
    button {
	background-color: blue;
	border: 2px solid #8e44ad;
	border-radius: 4px;
	color: #fff;
	display: block;
	font-family: inherit;
	font-size: 16px;
	padding: 10px;
	margin-top: 20px;
	width: 100%;
}
table {
  background: white;
  margin-left: auto;
  margin-right: auto;
}
td,th {
 border: 3px solid black;
 
}
th {
 background: lightblue;
}
td {
height: 65px;
}
.form-control {
 height: 100px;
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
<div>
<h2 style="text-align: center;color: blue;background: white">Ticket is Successfully Booked</h2>

		<h2 style="margin-left: 19%">Confirm Detail</h2>
<table border="3">
<tr><th style="width: 125px">Flight No</th><th style="width: 150px">Aircraft Name</th><th>Departure<br>Date</th><th style="width: 150px">Departure City</th><th>Departure<br>Time</th><th style="width: 150px">Arrival City</th><th style="width: 90px">Arrival<br>Time</th><th style="width: 110px">Price</th></tr>
<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Rs</td></tr>
</table>
<h2 style="margin-left: 8%">Your Detail</h2>
<table border="3">
<tr><th style="width: 250px">Name</th><th style="width: 300px">Email ID</th><th style="width: 300px">Address</th><th style="width: 75px">Date</th><th style="width: 200px">Contact No</th><th style="width: 50px">No of<br>Person</th><th style="width: 110px">Final<br>Amount</th></tr>
<tr><td></td><td></td><td></td><td></td><td></td><td></td><td>Rs</td></tr>
</table>
</div>
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