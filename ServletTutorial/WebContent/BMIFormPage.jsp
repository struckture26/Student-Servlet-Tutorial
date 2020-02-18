<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.user.Student" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%
Student student = (Student) session.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>BMI Calculation</title>

</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">

<div class="container">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
		data-target="navbar" aria-expanded="false" aria-controls="navbar">
		
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		
		</button>
		Welcome To <% out.print(student.getSchoolName()); %>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
		</div><!-- /.navbar-collapse--> -->
		</div>
	</nav>
	<!-- Main Jumbotron for a primary marketing message or to call to action -->
	<div class="jumbotron">
	<div class="container">
	<h1>Hello, <% out.print(student.getFirstName()); %></h1>
	<p>This is a simple java servlet program for a functional website.</p>
	</div>
	</div>
	<div class="container">
	<!-- Example row of columns -->
	<div class="row">
	<div class="col-md-4">
		<h2>My BMI</h2>
		<p><% out.print(student.getBmi()); %></p>
		</div>
	
	<div class="col-md-4">
		<h2>Enter Information:</h2>
		<form action="BMI_Calculation_Servlet" method="post">
		<div class="form-group">
	<label for="height">Height</label>
	<input type="text" class="form-control" name="height" id="height" placeholder="INCHES ONLY">
	</div>
	<div class="form-group">
	<label for="weight">Weight</label>
	<input type="text" class="form-control" name="weight" id="weight" placeholder="POUNDS ONLY (lbs)">
	</div>

		
		<button type="submit" class="btn btn-default">Submit</button>
</form>

<form action="BMI_Calculation_Servlet"></form>
		
<a href="index.jsp">HomePage</a>
		
	
	<hr>
	<footer>
		<p>&copy; 2017 Company, Inc.</p>
	</footer>
	</div><!-- /container -->
	</div>
	</div>
	


</body>
</html>