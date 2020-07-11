<!DOCTYPE html>
<html>
<head>
<title>Smart School | Welcome</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<li class="current"><a href="index.jsp">Home</a></li>
				<li><a href="add">Add New Student</a></li>
				<li><a href="view?pageId=1">View Students</a></li>
			</ul>
		</nav>

	</header>

	<section id="showcase">
		<div class="container">
			<div>
				<h1>Smart School</h1>
				<p>When it does matter to you, you will find a way to do it.
					And this is what driving us to serve this world better.</p>
			</div>

		</div>

	</section>

	<section></section>

</body>
</html>