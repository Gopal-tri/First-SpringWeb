<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page language="java" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<title>Todo's${name}</title>
</head>
<body>

	<div>
		<jsp:include page="/include/headscript.jsp"></jsp:include>
		<jsp:include page="/include/menu.jsp"></jsp:include>
	</div>
	<H1>Your Todo's</H1>
	${todos}

	<div>
		<div>
			<table class="table">
				<tr>
					<td>ID</td>
					<td>Name</td>
					<td>Description</td>
					<td>Target Date</td>
					<td>Is Done</td>
					<td>Add/Edit/Delete</td>

				</tr>
				<c:forEach items="${todos}" var="item">
					<tr>
						<td><c:out value="${item.getId()}"></c:out></td>
						<td><c:out value="${item.getUser()}"></c:out></td>
						<td><c:out value="${item.getDesc()}"></c:out></td>
						<td><c:out value="${item.getTargetDate()}"></c:out></td>
						<td><c:out value="${item.getIsDone()}"></c:out></td>
						<td><a href="/addtodo">Add </a><a href="/edit-todo">Edit
						</a><a href="/deletetodo">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
			<!-- </div>
		<a href="addtodo" class="btn btn-primary">Add Todo</a>
	</div>
 --></body>
</html>