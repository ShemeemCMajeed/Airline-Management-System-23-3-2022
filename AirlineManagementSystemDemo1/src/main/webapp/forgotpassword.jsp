<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
<link rel="stylesheet" href="registerstyle.css">
<style type="text/css">
.container {
  margin-left: auto;
  margin-right: auto;
}

</style>
<script type="text/javascript">
	function checkInputs() {
		 var email = document.getElementById('email');
		 var password = document.getElementById('password');
		 var password2 = document.getElementById('password2');
		 let e=0;
		 let p=0;
		 let p2=0;
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
		 if(password.value === '') {
				setErrorFor(password, 'Please enter the new password');
				p=0;
				
			} else if (!isPassword(password.value)) {
				setErrorFor(password, 'Password should contain atleast 8 character,1 capital,small letter,number&special character');
				p=0;
			}
			 else {
				setSuccessFor(password);
				p=1;
				
			}
		 if(password2.value === '') {
				setErrorFor(password2, 'Please re-enter the password');
				p2=0;
				
			} else if (password.value==password2.value) {
				setSuccessFor(password2);
				p2=1;
			}
			 else {
				 setErrorFor(password2, 'Password does not match');
					p2=0;
				
			}
		 if(e==1&&p==1&&p2==1) {
				alert('You have successfully changed your password');
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
	function isEmail(email) {
		return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
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
		<h2>Forgot Password</h2>
	</div>
	<form class="form" id="form" name="myForm" onsubmit="return checkInputs()" action="login.jsp">
		<div class="form-control">
			<label for="email">Email</label><br>
			<input style="width: 100%" type="email" placeholder="Enter Your Email" id="email" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="password">New Password</label><br>
			<input style="width: 100%" type="password" placeholder="Create New Password" id="password" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
			<label for="password2">Confirm Password</label><br>
			<input style="width: 100%" type="text" placeholder="Confirm Your Password" id="password2" /><br>
			<small>Error message</small>
		</div>
		<input type="submit" value="Submit">
		</form>
		</div>
		</div>
</body>
</html>