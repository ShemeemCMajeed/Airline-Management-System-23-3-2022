<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="registerstyle.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<script type="text/javascript">
	function checkInputs() {
		 var email = document.getElementById('email');
		 var mobile = document.getElementById('mobile');
		 var date = document.forms["myForm"]["date"];
		 var address = document.getElementById('address');
		 var person = document.getElementById('person');
		 let e=0;
		 let m=0;
		 let d=0;
		 let a=0;
		 let p=0;
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
		 if(mobile.value === '') {
				setErrorFor(mobile, 'Please enter your mobile no');
				m=0;
			} else if (!isMobile(mobile.value)) {
				setErrorFor(mobile, 'Invalid mobile no');
				m=0;
			} else {
				setSuccessFor(mobile);
				m=1;
			}
		 if(date.value === '') {
				setErrorFor(date, 'Please enter date');
				d=0;
				
			}  else {
				setSuccessFor(date);
				d=1;
				
			}
		 if(address.value === '') {
				setErrorFor(address, 'Please enter address');
				a=0;
				
			} else if (!isAddress(address.value)) {
				setErrorFor(address, 'Address contains only alphabets,numbers and dot');
				a=0;
				
			} else {
				setSuccessFor(address);
				a=1;
				
			}
		 if(person.value === '') {
				setErrorFor(person, 'Please enter no of persons');
				p=0;
			} else if (!isPerson(person.value)) {
				setErrorFor(person, 'Please select between 1 to 9');
				p=0;
			} else {
				setSuccessFor(person);
				p=1;
			}
		 if(e==1&&m==1&&d==1&&a==1&&p==1) {
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
	function isMobile(mobile) {
		return /^[789]\d{9}$/.test(mobile);
	}
	function isAddress(address) {
		return /^[A-Za-z0-9(). \s]{5,150}$/.test(address);
	}
	function isPerson(person) {
		return /^[1-9]$/.test(person);
	}
	</script>
	<style type="text/css">
	.container {
	 width: 500px;
	}
	.form-control {
	 height: 100px;
	}
	.form-control textarea {
	border: 2px solid #f0f0f0;
	border-radius: 4px;
	font-family: inherit;
	font-size: 14px;
	padding: 10px;
}
.form-control textarea:focus {
	outline: 0;
	border-color: #777;
}
	.form-control.success textarea {
	border-color: #2ecc71;
}
.form-control.error textarea {
	border-color: #e74c3c;
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
<div class="container">
	<div class="header">
		<h2>Book Ticket</h2>
	</div>
	<form class="form" id="form" name="myForm"  onsubmit="return checkInputs()" action="payment.jsp">
<div class="form-control">
			<label for="email">Email</label><br>
			<input style="width: 100%" type="email" placeholder="Enter Your Email" id="email" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
		    <label for="phone">Phone</label><br>
			<input style="width: 100%" type="text" placeholder="Enter Your Phone No" id="mobile" maxlength="10" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
		    <label for="date">Date</label><br>
			<input style="width: 100%" type="date" id="date" name="date"/><br>
			<small>Error message</small>
		</div>
		<div class="form-control">
		    <label for="person">No of Person</label><br>
			<input style="width: 100%" type="text" placeholder="Enter No of Persons" id="person" maxlength="1" /><br>
			<small>Error message</small>
		</div>
		<div class="form-control" style="height: 160px">
		    <label for="address">Address</label><br>
			<textarea id="address" maxlength="150" style="width: 100%;height: 100px" placeholder="Enter Your Address"></textarea> <br>
			<small>Error message</small>
		</div>
       <input type="submit" value="Proceed to Payment">
      <a href="flightlist1.jsp" style="color: blue;font-size: 30px;margin-left: 38%">Cancel</a>

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