<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<link rel="stylesheet" href="home.css">
<script type="text/javascript">
	$(function() {
		$("input[name='check']").click(function() {
			if ($("#roundtrip").is(":checked")) {
				$("#returning").removeAttr("disabled");
			} else {
				$("#returning").attr("disabled", "disabled");
			}
		});
	});
</script>
<script type="text/javascript">
function checkInputs() {
	 var type=document.forms["myForm"]["check"];
	 var flyingfrom = document.getElementById('flyingfrom');
	 var flyingto = document.getElementById('flyingto');
	 var departing = document.forms["myForm"]["departing"];
	 let t=0;
	 let ff=0;
	 let ft=0;
	 let d=0;
	 if(type[0].checked==false&&type[1].checked==false) {
			document.getElementById('checkid').innerHTML="Please select a travel type";
			t=0;
		} else {
			document.getElementById('checkid').innerHTML=" ";
			t=1;
		}
	 if(flyingfrom.value === '') {
			setErrorFor(flyingfrom, 'Please enter departing city');
			ff=0;
			
		} else if (!isFlyingfrom(flyingfrom.value)) {
			setErrorFor(flyingfrom, 'Please enter a valid city');
			ff=0;
			
		} else {
			setSuccessFor(flyingfrom);
			ff=1;
			
		}
	 if(flyingto.value === '') {
			setErrorFor(flyingto, 'Please enter arrival city');
			ft=0;
			
		} else if (!isFlyingto(flyingto.value)) {
			setErrorFor(flyingto, 'Please enter a valid city');
			ft=0;
			
		} else {
			setSuccessFor(flyingto);
			ft=1;
			
		}
	 if(departing.value === '') {
			setErrorFor(departing, 'Please enter departing date');
			d=0;
			
		}  else {
			setSuccessFor(departing);
			d=1;
			
		}
	 if(t==1&&ff==1&&ft==1&&d==1&&r==1) {
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
function isFlyingfrom(flyingfrom) {
	  return /^[A-Za-z ]+$/.test(flyingfrom);
	}
function isFlyingto(flyingto) {
	  return /^[A-Za-z ]+$/.test(flyingto);
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
			<form action="flightlist.jsp" method="post" class="form" id="form"
				name="myForm" onsubmit="return checkInputs()">
				<div class="form-control">
					<label for="roundtrip"><input type="radio" class="btn"
						name="check" id="roundtrip" value="Roundtrip">Roundtrip</label> <label
						for="oneway"><input type="radio" class="btn" name="check"
						id="oneway" value="Oneway">Oneway</label><br> <span
						id="checkid" style="color: red"></span>
				</div>
				<div class="form-control">
					<label for="flyingfrom">Flying From</label><br> <input
						style="width: 100%" type="text" placeholder="City" id="flyingfrom" /><br>
					<small>Error message</small>
				</div>
				<div class="form-control">
					<label for="flyingto">Flying To</label><br> <input
						style="width: 100%" type="text" placeholder="City" id="flyingto" /><br>
					<small>Error message</small>
				</div>
				<div class="form-control">
					<label for="departing">Departing</label><br> <input
						style="width: 100%" type="date" id="departing" name="departing" /><br> <small>Error
						message</small>
				</div>
				<div class="form-control">
					<label for="returning">Returning</label><br> <input
						style="width: 100%" type="date" id="returning" name="returning" disabled="disabled" /><br>
					<small>Error message</small>
				</div>
                 <div class="form-control">
						<label for="travelclass">Travel Class</label> <select>
							<option value="1">Economy Class</option>
							<option value="2">Business Class</option>
						</select> <br><small>Error message</small>
					</div>
					<input type="submit" value="Show Flights">
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