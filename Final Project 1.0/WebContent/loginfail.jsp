<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background: linear-gradient(-45deg, #A4A1A0, #F0F8FF, #9dfae4, #B2FFFF);
	background-size: 400% 400%;
	animation: gradient 15s ease infinite;
}

@keyframes gradient {
	0% {
		background-position: 0% 50%;
	}
	50% {
		background-position: 100% 50%;
	}
	100% {
		background-position: 0% 50%;
	}
}


			/* Nav Bar */

.bg-img {
  /* The image used */
  background-image: url("https://i.ibb.co/HBFqHNr/logo.png");

  min-height: 350px;

  /* Center and scale the image nicely */
  background-position: center top;
  background-repeat: no-repeat;
  background-size: cover;

  /* Needed to position the navbar */
  position: relative;
}

/* Position the navbar container inside the image */
.container {
  position: absolute;
  margin: 20px;
  width: auto;
}

/* The navbar */
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Navbar links */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}
.button {
  display: inline-block;
  border-radius: 5px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 25px;
  padding: 10px;
  width: 140px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
.center {
  text-align: center;
   padding: 200px 0;
}



</style>
<meta charset="ISO-8859-1">
<title>Loginfailed</title>
</head>
<body>
<div class="bg-img">
	<div class="container">
		<div class="topnav">
		<a href="main.html">Home</a>
		<a href="login.jsp">login</a>
		
		</div>
	</div>
	</div>
	<br>
<h1 align="center">Wrong email or password</h1>
<br>
<br>
<div class="center">
<a href="login.jsp" class="button">Try again</a>
<br>
<a href="main.html" class="button">Go back</a>

</div>
</body>
</html>