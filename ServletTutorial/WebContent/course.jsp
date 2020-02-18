<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="sytlesheet" type="text/css" href="WebContent/styles/styles.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Courses</title>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$(function(){$("#datepicker").datepicker();});
</script>
<style type="text/css">
.weekDays-selector input {display: non!important;}

.weekDays-selector input[type=checkbox] + label {
	display: inline-block;
	border-radius: 6px;
	background: #dddddd;
	height: 40px;
	width: 30px;
	margin-right: 3px;
	line-height: 40px;
	text-align: center;
	cursor: pointer;
	
}

.weekDays-selector input[type=checkbox] + label {
	background: #2AD705;
	color:#ffffff;
}
</style>
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#">Project name</a>
	</div>
	<div id="navbar" class="collapse navbar-collapse">
		<ul class="nav navbar-nav">
			<li class="active"><a href="#WebContent/index.jsp">Home</a></li>
			<li><a href="#about">About</a></li>
			<li><a href="#contact">Contact</a></li>
		</ul>
	</div>
	</div>
</nav>

<div class="container">
<div style="margin-top: 100px"></div>
	<div style="width: 300px">
	
	<br><br>
	<form action="SchedulerServlet" method="post">
	Professors
		<select name="professorName" class="form-control">
		<option value="John White">John White</option>
		<option value="Michael Brown">Michael Brown</option>
		<option value="Tina Doe">Tina Doe</option>
		<option value="Emily Winter">Emily Witner</option>
		<option value="Christine Summer">Christine Summer</option>
		</select>
		<br>
	Courses
		<select name="courseName" class="form-Control">
		<option value="Java Programming">Java Programming</option>
		<option value="C#">C#</option>
		<option value="C++">C++</option>
		<option value="C">C</option>
		<option value="Ruby">Ruby</option>
		<option value="Rails">Rails</option>
		<option value="Php">Php</option>
		<option value="SQL">SQL</option>
		<option value="Javascript">Javascript</option>
		</select>
		<br><br>
	<div class="weekDays-selector">
	<input type="checkbox" name="weekday" value="MONDAY" id="weekday-mon" class="weekday"/>
	<label for="weekday-mon">M</label>
	<input type="checkbox" name="weekday" value="TUESDAY" id="weekday-tue" class="weekday"/>
	<label for="weekday-tue">T</label>
	<input type="checkbox" name="weekday" value="WEDNESDAY" id="weekday-wed" class="weekday"/>
	<label for="weekday-wed">W</label>
	<input type="checkbox" name="weekday" value="THURSDAY" id="weekday-thu" class="weekday"/>
	<label for="weekday-thu">T</label>
	<input type="checkbox" name="weekday" value="FRIDAY" id="weekday-fri" class="weekday"/>
	<label for="weekday-fri">F</label>
	</div>
	<br><br>
	<div class="form-group">
		<label for="roomNumber">Room Number</label>
		<input type="text" class="form-control" name="roomNumber" id="roomNumber" placeholder="Room Number">
	</div>
	<br><br>
		<div class="form-group">
		<label for="time">Time</label>
		<input type="text" class="form-control" name="time" id="time" placeholder="time">
	</div>
		
	<br><br>
	<p>Date:<input type="text" name="startDate" id="datepicker"></p>
	<button type="submit">Add course</button>
	</form>
	
		</div>
	</div>


<c:if test="${courses != null}">
<table class="table">
  <thead>
    <tr>
      <th scope="col">Course</th>
      <th scope="col">Day</th>
      <th scope="col">Time</th>
      <th scope="col">Professor</th>
      <th scope="col">Room</th>
      <th scope="col">Start Date</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="course" items="${courses}">
	<tr>
  		
  		<td><c:out value="${course.courseName}"/></td>
  		
  		<td>  				
  		<c:forEach var="day" items="${course.occurrences}">
  		<c:out value="${day}"/>
  		</c:forEach></td>
  		
  		<td><c:out value="${course.time}"/></td>
  		<td><c:out value="${course.professorName}"/></td>
  		<td><c:out value="${course.roomNumber}"/></td>
  		<td><c:out value="${course.startDate}"/></td>
  	</tr>
  </c:forEach>

  </tbody>
</table>
</c:if>
</body>
</html>