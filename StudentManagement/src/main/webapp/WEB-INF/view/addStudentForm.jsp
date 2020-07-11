<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>Smart School | Add Student</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/stylesheet.css' />">
<script type="text/javascript"
	src="<c:url value='/resources/js/app.js' />"></script>
</head>
<body>

	<header>
		<div id="branding">
			<h1>Smart School</h1>
		</div>
		<nav>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li class="current"><a href="add">Add New Student</a></li>
				<li><a href="view?pageId=1">View Students</a></li>
			</ul>
		</nav>

	</header>

	<section>
		<div class="container">
			<div>
				<h1>Add New Student</h1>
				<div class="form-group">
					<form:form action="save" method="post" modelAttribute="student">
						<div>
							<label>Student Name</label>
							<form:input oninput="validateName()" id="name" path="studentName" placeholder="Enter Name" />
							<label id="name_label" style="visibility: hidden;color: red;">Invalid Name</label>
						</div>
						<div>
							<label>Student Email</label>
							<form:input oninput="validateMail()" path="mailId" placeholder="Enter Email" />
							<label id="mail_label" style="visibility: hidden;color: red;">Invalid mail ID</label>
						</div>
						<div>
							<label>Course</label>
							<form:select style="height: 40px;width: 260px;" path="course" placeholder="Select course">
								<form:option value="Computer Science Engineering">Computer Science Engineering</form:option>
								<form:option value="Information Science Engineering">Information Science Engineering</form:option>
								<form:option value="Mechanical Engineering">Mechanical Engineering</form:option>
								<form:option value="Civil Engineering">Civil Engineering</form:option>
								<form:option value="Electrical Engineering">Electrical Engineering</form:option>
								<form:option value="Electronics Engineering">Electronics Engineering</form:option>
							</form:select>
						</div>
						<button class="button">Add Student</button>

					</form:form>
				</div>
			</div>

		</div>

	</section>

	<section></section>

</body>
</html>