<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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

.cent {
  margin: auto;
  width: 50%;
  margin-left : 70px;
  padding: 20px;
}

* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}



.col-25 {
font-weight: bold;
  float: left;
  width: 35%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 70%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
</style>
<meta charset="ISO-8859-1">
<title>Edit</title>
</head>
<body>
<div class="bg-img">
	<div class="container">
		<div class="topnav">
		<a href="main.html">Home</a>
		<a href="login.jsp">logout</a>
		
		</div>
	</div>
	</div>
	
<h1 align="center">Edit appointment details</h1>

<form method="post" action="addcontrol">
<input type="hidden" name="id" value="<%=request.getParameter("id") %>"/>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp?autoReconnect=false&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","dbdb");
	String sql = "SELECT * From appoint WHERE Phone =?";
	PreparedStatement statement = con.prepareStatement(sql);
	statement.setInt(1,id);
	ResultSet resultset = statement.executeQuery();

	while(resultset.next()){
%>

<div class="row">
    <div class="col-25">
 <label for="fname">Phone Number:</label>
    </div>
    <div class="col-75">
<input type="text" name="phone" value="<%= resultset.getString("Phone")%>" />
</div>
  </div>

<div class="row">
    <div class="col-25">
      <label for="hospital">Choose a hospital:</label>
    </div>
    <div class="col-75">
  <select id="hospital" name="hospital" >
  <option value="<%= resultset.getString("Hospital")%>"><%= resultset.getString("Hospital")%></option>
    <option value="Gleneagles Hospital">Gleneagles Hospital</option>
    <option value="Tung Shin Hospital">Tung Shin Hospital</option>
    <option value="General hospital kuala lumpur">General hospital kuala lumpur</option>
    <option value="University Malaya Medical Centre">University Malaya Medical Centre</option>
    <option value="Pantai Hospital Cheras">Pantai Hospital Cheras</option>
    <option value="Hospital Angkatan Tentera Tuanku Mizan">Hospital Angkatan Tentera Tuanku Mizan</option>
    <option value="Global Doctors Specialist Centre">Global Doctors Specialist Centre</option>
  </select>
  </div>
  </div>
  
  

  <div class="row">
    <div class="col-25">
      <label for="time">Select time</label>
    </div>
    <div class="col-75">
  <select id="time" name="time">
  	<option value="<%= resultset.getString("Time")%>"><%= resultset.getString("Time")%></option>
    <option value="morning">Morning</option>
    <option value="noon">Noon</option>
  </select>
  </div>
  </div>
  
  
    <div class="row">
    <div class="col-25">
    <label for="date">Select date</label>
       </div>
        <div class="col-75">
  <input type="date" name="date" value="<%= resultset.getString("Date")%>">
  </div>
  </div>
  
  <br>
  <br>
  <br>
   <div class="cent">
<input type="submit" name="submit"/>
</div>
	<%
	break;
    		}
	statement.close();
	con.close();
	%>
	</form>
</body>
</html>