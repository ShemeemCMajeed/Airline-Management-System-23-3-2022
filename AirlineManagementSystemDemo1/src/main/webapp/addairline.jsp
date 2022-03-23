<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Airline</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<link rel="stylesheet" href="registerstyle.css">
	<style type="text/css">
	.navbar {
	 width: 97%;
	}
	</style>
	<script type="text/javascript">
	function checkInputs() {
		var airlinecode = document.getElementById('airlinecode');
		var airlinename = document.getElementById('airlinename');
		let ac=0;
		let an=0;
		if(airlinecode.value === '') {
			setErrorFor(airlinecode, 'Please enter the airline code');
			ac=0;
			
		}
		else if (!isAirlinecode(airlinecode.value)) {
			setErrorFor(airlinecode, 'Airline code contains three numbers between 100 to 999');
			ac=0;
		}else {
			setSuccessFor(airlinecode);
			ac=1;
		}
		if(airlinename.value === '') {
			setErrorFor(airlinename, 'Please enter the airline name');
			an=0;
			
		}
		else if (!isAirlinename(airlinename.value)) {
			setErrorFor(airlinename, 'Airline name contains only alphabets');
			an=0;
		}else {
			setSuccessFor(airlinename);
			an=1;
		}
		if(ac==1&&an==1) {
			alert('Airline added!');
			return true;
		}
		else
		return false;
	}
	function setErrorFor(input, message) {
		var formControl = input.parentElement;
		var small = formControl.querySelector('small');
		formControl.className = 'form-control error';
		small.innerText = message;
	}

	function setSuccessFor(input) {
		var formControl = input.parentElement;
		formControl.className = 'form-control success';
	}
	function isAirlinecode(airlinecode) {
		return /^([1-9][0-9][0-9])$/.test(airlinecode);
		}
	function isAirlinename(airlinename) {
		  return /^[A-Za-z ]{3,100}$/.test(airlinename);
		}
	</script>
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
<div class="container">
<form class="form" id="form" name="myForm" onsubmit="return checkInputs()">
		<div class="form-control">
			<label for="airlinecode">Airline Code</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Airline Code" id="airlinecode" maxlength="3" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="airlinename">Airline Name</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Airline Name" id="airlinename" /><br>
			<small>Error message</small>
		</div>
		<input type="submit" value="Add Airline">
		</form>
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