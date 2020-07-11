<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>Smart School | Edit Student</title>
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
				<li class="current"><a href="add">Add New Students</a></li>
				<li><a href="view?pageId=1">View Students</a></li>
			</ul>
		</nav>

	</header>

	<section>
		<div class="container">
			<div>
				<h1>Update Student</h1>
				<div class="form-group">
					<form:form method="post" modelAttribute="student">
						<div class="hide">
							<label>Student Id</label>
							<form:input path="studentId" readonly="true" />
						</div>
						<div>
							<label>Student Name</label>
							<form:input path="studentName" />
						</div>
						<div>
							<label>Email</label>
							<form:input path="mailId" />
						</div>
						
						<button class="button" type="submit"
							formaction="update">Update</button>
							
						<button class="button"
							formaction="delete">Delete</button>
					</form:form>
				</div>
			</div>

		</div>

	</section>

	<section></section>

</body>
</html>