<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Admin login</title>
<style> 

.center {
  text-align: center;
   padding: 200px 0;
  border: 3px solid green;
}


input[type=text] {
  width: 20%;
  padding: 12px 20px;
  margin:auto;
  box-sizing: border-box;
  border: 2px solid green;
  border-radius: 10px;
}
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

				/* Button */

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





</style>
</head>
<body>

<div class="center">
<form method="post" action="logintest">
<h1>Admin Login</h1>
<br>
<br>
Username:
<input type="text" name="name"/>
<br>
<br>
<br>
Password:
<input type="text" name="pass"/>
<br>
<br>
<input type="submit" name="submit" class="button" value="login"/>
<br>
<br>
</form></div>
</body>
</html>