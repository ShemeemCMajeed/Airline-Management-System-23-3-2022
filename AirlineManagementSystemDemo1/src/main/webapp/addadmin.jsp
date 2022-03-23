<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Admin</title>
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
	var username = document.getElementById('username');
	var password = document.getElementById('password');
	var firstname = document.getElementById('firstname');
	var lastname = document.getElementById('lastname');
    var email = document.getElementById('email');
    let u=0;
    let p=0;
    let f=0;
    let l=0;
    let e=0;
    if(username.value === '') {
		setErrorFor(username, 'Please enter the username');
		u=0;
		
	}
	else if (!isUsername(username.value)) {
		setErrorFor(username, 'Username contains small letters,numbers,underscore,dot only');
		u=0;
	}else {
		setSuccessFor(username);
		u=1;
	}
	if(password.value === '') {
		setErrorFor(password, 'Please enter the password');
		p=0;
		
	} else if (!isPassword(password.value)) {
		setErrorFor(password, 'Password should contain atleast 8 character,1 capital,small letter,number&special character');
		p=0;
	}
	 else {
		setSuccessFor(password);
		p=1;
		
	}
	if(firstname.value === '') {
		setErrorFor(firstname, 'Please enter your firstname');
		f=0;
		
	} else if (!isFirstname(firstname.value)) {
		setErrorFor(firstname, 'Firstname contains only alphabets');
		f=0;
		
	} else {
		setSuccessFor(firstname);
		f=1;
		
	}
	if(lastname.value === '') {
		setErrorFor(lastname, 'Please enter your lastname');
		l=0;
		
	} else if (!isLastname(lastname.value)) {
		setErrorFor(lastname, 'Lastname contains only alphabets');
		l=0;
		
	} else {
		setSuccessFor(lastname);
		l=1;
		
	}
	if(email.value === '') {
		setErrorFor(email, 'Please enter your email');
		e=0;
		
	} else if (!isEmail(email.value)) {
		setErrorFor(email, 'Invalid email');
		e=0;
		
	} else {
		setSuccessFor(email);
		e=1;
		
	}
	if(u==1&&p==1&&f==1&&l==1&&e==1) {
		alert('You have successfully added!');
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
	function isUsername(username) {
		return /^(?=[a-z0-9._]{3,20}$)(?![0-9])(?!.*[_.]{2})[^_.].*[^_.]$/.test(username);
		}	
		function isPassword(password) {
	return /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-=]).{8,}$/.test(password);
	}
	function isFirstname(firstname) {
		  return /^[A-Za-z ]{3,20}$/.test(firstname);
		}
		function isLastname(lastname) {
		  return /^[A-Za-z]{3,20}$/.test(lastname);
		}
		function isEmail(email) {
		return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
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
			<label for="username">Username</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Username" id="username" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="password">Password</label><br>
			<input style="width: 100%" type="password" placeholder="Enter Password" id="password" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="firstname">First Name</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Your First Name" id="firstname" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="lastname">Last Name</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Your Last Name" id="lastname" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="email">Email</label><br>
			<input style="width: 100%" type="email" placeholder="Enter Your Email" id="email" /><br>
			<small>Error message</small>
		</div>
       <input type="submit" value="Add Admin">
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