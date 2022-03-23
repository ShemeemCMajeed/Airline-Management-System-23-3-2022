<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<link rel="stylesheet" href="loginstyle.css">
	<script type="text/javascript">
	function checkInputs() {
	var username = document.getElementById('username');
	var password = document.getElementById('password');

	let u = 0;
	let p = 0;

	if (username.value === '') {
		setErrorFor(username, 'Please enter the username');
		u = 0;

	}
	else if (!isUsername(username.value)) {
		setErrorFor(username, 'Username contains small letters,numbers,underscore,dot only');
		u = 0;
	} else {
		setSuccessFor(username);
		u = 1;
	}
	if (password.value === '') {
		setErrorFor(password, 'Please enter the password');
		p = 0;

	} else if (!isPassword(password.value)) {
		setErrorFor(password, 'Password should contain atleast 8 character,1 capital,small letter,number&special character');
		p = 0;
	}
	else {
		setSuccessFor(password);
		p = 1;

	}
	if (u == 1 && p == 1) {
		alert("You have successfully logged in!");
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
</script>
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
	<div class="header">
		<h2>Login Here</h2>
	</div>
			<form class="form" name="form" onsubmit="return checkInputs()" action="home1.jsp">
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
		<input type="submit" name="submit" value="Login"><br>
				
				<a href="forgotpassword.jsp">Forgot your password?</a><br>
				<p>
					Don't have an account? <a href="register.jsp">Register</a>
				</p>
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