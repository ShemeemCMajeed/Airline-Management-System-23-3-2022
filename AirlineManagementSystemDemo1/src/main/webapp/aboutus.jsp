<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
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
	height: 135vh;
	background-image:  url("images/preview.jpg");
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
</style>
</head>
<body>
<div class="banner">
<div class="navbar">
<img alt="Home Logo" src="images/download.png" class="logo">
<ul>
<li><a href="home.jsp">Home</a></li>
<li><a href="aboutus.jsp">About Us</a></li>
<li><a href="contactus.jsp">Contact Us</a></li>
<li><a href="login.jsp">Login</a></li>
<li><a href="register.jsp">Register</a></li>
</ul>
</div>
<div class="container">
<p style="font-size: 25px;color: white">Contact numbers for callers in India<br>
Call 24x7 Customer Care numbers 0124-2651407 / 020-26281407 / 1860 223 1407 from MTNL / BSNL lines and Mobile / landlines of most private telecom operators in India only.<br>

Contact numbers for callers outside India<br>
USA & Canada:1888 624 1407 (Toll Free)<br>
UK:0800 048 9244 (Toll Free)<br>
Australia:613 601 98270 (Toll Number) #<br>
France:331 874 06544 (Toll Number) #<br>
Germany:496915511337 (Toll Number) #<br>
Singapore:800 101 4116 (Toll Free)<br>
# Calls charged to callers as per applicable network call rates.<br>

Callers from all foreign locations can also call on<br>
+ 91 124 2641417 (International call rates applicable)<br>

+ 91 20 2623 1417 (International call rates applicable)<br>

Call Centre Email IDs<br>
E mail ID :contactus@airfly.in<br>
Helpdesk for online E tickets booked on Website<br>
Contact Number : 011 24567473 (Monday to Friday ,09:30 hrs - 17:30 hrs IST)<br>


Frequent Flyer<br>
Call 24x7 Customer Care numbers 0124-2541407 / 020-26238407 / 1860 273 1407 from MTNL / BSNL lines and Mobile / landlines of most private telecom operators in India only</p>
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