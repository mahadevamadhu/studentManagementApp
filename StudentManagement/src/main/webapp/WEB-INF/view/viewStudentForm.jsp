<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<link href="<c:url value='/resources/css/stylesheet.css' />"
	rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Smart School | View Students</title>
</head>
<body>
	<header>
		<div id="branding">
			<h1>Smart School</h1>
		</div>
		<nav>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="add">Add New Student</a></li>
				<li class="current"><a href="view?pageId=1">View Students</a></li>
			</ul>
		</nav>

	</header>

	<section>

		<div class="container">
			<small>*Click on Student Id to edit or delete</small>
			<table class="list">
				<tr>
					<th>Student ID</th>
					<th>Student Name</th>
					<th>Email ID</th>
					<th>Course</th>
				</tr>
				<c:forEach var="student" items="${list}">
					<tr>
						<td><a href="edit?studentId=${student.studentId}">${student.studentId}</a></td>
						<td>${student.studentName}</td>
						<td>${student.mailId}</td>
						<td>${student.course}</td>
					</tr>
				</c:forEach>
			</table>

			<a href="view?pageId=1">1</a> <a href="view?pageId=2">2</a> <a
				href="view?pageId=3">3</a>


		</div>


	</section>


</body>
</html>