<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Flight</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<link rel="stylesheet" href="registerstyle.css">
	<style type="text/css">
	.navbar {
	 width: 97%;
	}
	.banner {
	height: 218vh;
}
	</style>
	<script type="text/javascript">
	function checkInputs() {
	var flightno = document.getElementById('flightno');
	var aircraftname = document.getElementById('aircraftname');
	var departureairport = document.getElementById('departureairport');
	var departuredate = document.getElementById('departuredate');
	var departuretime = document.getElementById('departuretime');
	var arrivalairport = document.getElementById('arrivalairport');
	var arrivaltime = document.getElementById('arrivaltime');
	var economycapacity = document.getElementById('economycapacity');
	var economyprice = document.getElementById('economyprice');
	var businesscapacity = document.getElementById('businesscapacity');
	var businessprice = document.getElementById('businessprice');
	let f=0;
	let a=0;
	let d=0;
	let departurdate=0;
	let departurtime=0;
	let arivalairport=0;
	let arivaltime=0;
	let economycapacty=0;
	let economprice=0;
	let businesscapacty=0;
	let businesprice=0;
	if(flightno.value === '') {
		setErrorFor(flightno, 'Please enter the flight no');
		f=0;
		
	}
	else if (!isFlightno(flightno.value)) {
		setErrorFor(flightno, 'Flight no contains first two capital letters and numbers');
		f=0;
	}else {
		setSuccessFor(flightno);
		f=1;
	}
	if(aircraftname.value === '') {
		setErrorFor(aircraftname, 'Please enter the aircraft name');
		a=0;
		
	}
	else if (!isAircraftname(aircraftname.value)) {
		setErrorFor(aircraftname, 'Aircraft name contains only alphabets');
		a=0;
	}else {
		setSuccessFor(aircraftname);
		a=1;
	}
	if(departureairport.value === '') {
		setErrorFor(departureairport, 'Please enter the departure airport');
		d=0;
		
	}
	else if (!isDepartureairport(departureairport.value)) {
		setErrorFor(departureairport, 'Departure airport contains only alphabets');
		d=0;
	}else {
		setSuccessFor(departureairport);
		d=1;
	}
	 if(departuredate.value === '') {
			setErrorFor(departuredate, 'Please enter departure date');
			departurdate=0;
			
		}  else {
			setSuccessFor(departuredate);
			departurdate=1;
			
		}
	 if(departuretime.value === '') {
			setErrorFor(departuretime, 'Please enter departure time');
			departurtime=0;
			
		}  else {
			setSuccessFor(departuretime);
			departurtime=1;
			
		}
	 if(arrivalairport.value === '') {
			setErrorFor(arrivalairport, 'Please enter the arrival airport');
			arivalairport=0;
			
		}
		else if (!isArrivalairport(arrivalairport.value)) {
			setErrorFor(arrivalairport, 'Arrival airport contains only alphabets');
			arivalairport=0;
		}else {
			setSuccessFor(arrivalairport);
			arivalairport=1;
		}
	 if(arrivaltime.value === '') {
			setErrorFor(arrivaltime, 'Please enter arrival time');
			arivaltime=0;
			
		}  else {
			setSuccessFor(arrivaltime);
			arivaltime=1;
			
		}
	 if(economycapacity.value === '') {
			setErrorFor(economycapacity, 'Please enter the economy capacity');
			economycapacty=0;
			
		}
		else if (!isEconomycapacity(economycapacity.value)) {
			setErrorFor(economycapacity, 'Invalid economy capacity');
			economycapacty=0;
		}else {
			setSuccessFor(economycapacity);
			economycapacty=1;
		}
	 if(economyprice.value === '') {
			setErrorFor(economyprice, 'Please enter the economy price');
			economprice=0;
			
		}
		else if (!isEconomyprice(economyprice.value)) {
			setErrorFor(economyprice, 'Invalid economy price');
			economprice=0;
		}else {
			setSuccessFor(economyprice);
			economprice=1;
		}
	 if(businesscapacity.value === '') {
			setErrorFor(businesscapacity, 'Please enter the business capacity');
			businesscapacty=0;
			
		}
		else if (!isBusinesscapacity(businesscapacity.value)) {
			setErrorFor(businesscapacity, 'Invalid business capacity');
			businesscapacty=0;
		}else {
			setSuccessFor(businesscapacity);
			businesscapacty=1;
		}
	 if(businessprice.value === '') {
			setErrorFor(businessprice, 'Please enter the business price');
			businesprice=0;
			
		}
		else if (!isBusinessprice(businessprice.value)) {
			setErrorFor(businessprice, 'Invalid business price');
			businesprice=0;
		}else {
			setSuccessFor(businessprice);
			businesprice=1;
		}
	if(f==1&&a==1&&d==1&&departurdate==1&&departurtime==1&&arivalairport==1&&arivaltime==1&&economycapacty==1&&economprice==1&&businesscapacty==1&&businesprice==1) {
		alert('Successfully Saved!');
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
	function isFlightno(flightno) {
		return /^([A-Z][A-Z][0-9][0-9][0-9])$/.test(flightno);
		}
	function isAircraftname(aircraftname) {
		  return /^[A-Za-z ]{3,20}$/.test(aircraftname);
		}
	function isDepartureairport(departureairport) {
		  return /^[A-Za-z ]{3,20}$/.test(departureairport);
		}
	function isArrivalairport(arrivalairport) {
		  return /^[A-Za-z ]{3,20}$/.test(arrivalairport);
		}
	function isEconomycapacity(economycapacity) {
		return /^([1-9][0-9]{0,2}|1000)$/.test(economycapacity);
		}
	function isEconomyprice(economyprice) {
		return /^([1-9][0-9]{0,5}|100000)$/.test(economyprice);
		}
	function isBusinesscapacity(businesscapacity) {
		return /^([1-9][0-9]{0,2}|1000)$/.test(businesscapacity);
		}
	function isBusinessprice(businessprice) {
		return /^([1-9][0-9]{0,5}|100000)$/.test(businessprice);
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
			<label for="flightno">Flight No</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Flight No" id="flightno" maxlength="5" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="aircraftname">Aircraft Name</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Aircraft Name" id="aircraftname" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="departureairport">Departure Airport</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Departure Airport" id="departureairport" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="departuredate">Departure Date</label><br>
			<input style="width: 100%" type="date" placeholder="Enter Departure Date" id="departuredate" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="departuretime">Departure Time</label><br>
			<input style="width: 100%" type="time" placeholder="Enter Departure Time" id="departuretime" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="arrivalairport">Arrival Airport</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Arrival Airport" id="arrivalairport" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="arrivaltime">Arrival Time</label><br>
			<input style="width: 100%" type="time" placeholder="Enter Arrival Time" id="arrivaltime" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="economycapacity">Economy Capacity</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Economy Capacity" id="economycapacity" maxlength="4" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="economyprice">Economy Price</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Economy Price" id="economyprice" maxlength="6" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="businesscapacity">Business Capacity</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Business Capacity" id="businesscapacity" maxlength="4" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="businessprice">Business Price</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Business Price" id="businessprice" maxlength="6" /><br>
			<small>Error message</small>
		</div>
  <input type="submit" value="Save">
  <a href="flightreport.jsp" style="margin-left: 43%;font-size: 25px">Cancel</a>
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