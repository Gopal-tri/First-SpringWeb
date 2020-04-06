<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page language="java" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<title>Todo's${name}</title>
</head>
<body>

	<div>
		<jsp:include page="/include/headscript.jsp"></jsp:include>
		<jsp:include page="/include/menu.jsp"></jsp:include>
	</div>
	<H1>Your Todo's</H1>
	${todos}



	<table class="table">
		<tr>
			<td>ID</td>
			<td>Name</td>
			<td>Description</td>
			<td>Target Date</td>
			<td>Is Done</td>
			<td>Edit/Delete</td>

		</tr>
		<c:forEach items="${todos}" var="item">
			<tr>
				<td><c:out value="${item.getId()}"></c:out></td>
				<td><c:out value="${item.getUser()}"></c:out></td>
				<td><c:out value="${item.getDesc()}"></c:out></td>
				<td><c:out value="${item.getTargetDate()}"></c:out></td>
				<td><c:out value="${item.getIsDone()}"></c:out></td>
				<td><a href="/edit-todo">Edit </a><a href="/deletetodo?id="><c:out
							value="${item.getId()}"></c:out>Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<div>
		<a href="add-todo" class="btn btn-primary">Add Todo</a>
	</div>

</body>
</html>