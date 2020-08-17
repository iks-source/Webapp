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

</style>
<meta charset="ISO-8859-1">
<title>Viewing</title>
</head>
<body>

<div class="bg-img">
	<div class="container">
		<div class="topnav">
		<a href="main.html">Home</a>
		<a href="main.html">Logout</a>
		
		</div>
	</div>
	</div>
	<br>
	<h1 align=center>Registered bookings</h1>
	<br>
<table cellspacing="2" cellpadding="2" border="0" width="1865" bgcolor="#F4F6F7">
<tr bgcolor="#EEEEEE">
<td align="center">No</td>
<td align="center">Phone</td>
<td align="center">Hospital</td>
<td align="center">Date</td>
<td align="center">Time</td>
<td> </td>
<td></td>
</tr>
<%
int count=0;
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp?autoReconnect=false&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","dbdb");
String sql="SELECT * From appoint";
Statement statement = con.createStatement();
ResultSet resultSet = statement.executeQuery(sql);


while(resultSet.next()){
	count++;
	int id=resultSet.getInt("phone");
	String phone = resultSet.getString("phone");
	String hospital=resultSet.getString("hospital");
	String date=resultSet.getString("date");
	String time=resultSet.getString("time");
	%>


<tr bgcolor="#FFFFFF">
<td align="center"><%= count %></td>
<td align="center"><%= phone %></td>
<td align="center">&nbsp;&nbsp;<%= hospital %></td>
<td align="center"><%= date %></td>
<td align="center"><%= time %></td>
<td><a href="edit.jsp?id=<%=id%>">Edit</a></td>
<td><a href="delete?id=<%=id%>">Delete</a></td>

</tr>
<%}
statement.close();
con.close();

	

%>

<%
String msg = request.getParameter("msg");
if(msg!=null && msg.equals("1")){%>
There is an error! Please check !	
<%	
}
%>

</body>
</html>