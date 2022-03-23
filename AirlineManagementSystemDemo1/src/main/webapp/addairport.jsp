<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Airport</title>
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
		var airportcode = document.getElementById('airportcode');
		var airportname = document.getElementById('airportname');
		var airportcity = document.getElementById('airportcity');
		var airportstate = document.getElementById('airportstate');
		var airportcountry = document.getElementById('airportcountry');
		let ac=0;
		let an=0;
		let acty=0;
		let as=0;
		let acntry=0;
		if(airportcode.value === '') {
			setErrorFor(airportcode, 'Please enter the airport code');
			ac=0;
			
		}
		else if (!isAirportcode(airportcode.value)) {
			setErrorFor(airportcode, 'Airport code contains three numbers between 100 to 999');
			ac=0;
		}else {
			setSuccessFor(airportcode);
			ac=1;
		}
		if(airportname.value === '') {
			setErrorFor(airportname, 'Please enter the airport name');
			an=0;
			
		}
		else if (!isAirportname(airportname.value)) {
			setErrorFor(airportname, 'Airport name contains only alphabets');
			an=0;
		}else {
			setSuccessFor(airportname);
			an=1;
		}
		if(airportcity.value === '') {
			setErrorFor(airportcity, 'Please enter the airport city');
			acty=0;
			
		}
		else if (!isAirportcity(airportcity.value)) {
			setErrorFor(airportcity, 'Airport city contains only alphabets');
			acty=0;
		}else {
			setSuccessFor(airportcity);
			acty=1;
		}
		if(airportstate.value === '') {
			setErrorFor(airportstate, 'Please enter the airport state');
			as=0;
			
		}
		else if (!isAirportstate(airportstate.value)) {
			setErrorFor(airportstate, 'Airport state contains only alphabets');
			as=0;
		}else {
			setSuccessFor(airportstate);
			as=1;
		}
		if(airportcountry.value === '') {
			setErrorFor(airportcountry, 'Please enter the airport country');
			acntry=0;
			
		}
		else if (!isAirportcountry(airportcountry.value)) {
			setErrorFor(airportcountry, 'Airport country contains only alphabets');
			acntry=0;
		}else {
			setSuccessFor(airportcountry);
			acntry=1;
		}
		if(ac==1&&an==1&&acty==1&&as==1&&acntry==1) {
			alert('Airport added!');
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
	function isAirportcode(airportcode) {
		return /^([1-9][0-9][0-9])$/.test(airportcode);
		}
	function isAirportname(airportname) {
		  return /^[A-Za-z ]{3,100}$/.test(airportname);
		}
	function isAirportcity(airportcity) {
		  return /^[A-Za-z ]{3,100}$/.test(airportcity);
		}
	function isAirportstate(airportstate) {
		  return /^[A-Za-z ]{3,100}$/.test(airportstate);
		}
	function isAirportcountry(airportcountry) {
		  return /^[A-Za-z ]{3,100}$/.test(airportcountry);
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
			<label for="airportcode">Airport Code</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Airport Code" id="airportcode" maxlength="3" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="airportname">Airport Name</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Airport Name" id="airportname" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="airportcity">Airport City</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Airport City" id="airportcity" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="airportstate">Airport State</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Airport State" id="airportstate" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="airportcountry">Airport Country</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Airport Country" id="airportcountry" /><br>
			<small>Error message</small>
		</div>
		<input type="submit" value="Add Airport">
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