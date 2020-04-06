<%@ page language="java\" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div>
		<jsp:include page="/include/headscript.jsp"></jsp:include>
		<jsp:include page="/include/menu.jsp"></jsp:include>
	</div>

	<div class="row">

		<form:form action="add-todo" modelAttribute="todo">
			<div class="row">
				<div class="col col-md col-md3">
					<label>Name : </label>
				</div>
				<div class="col col-md col-md3">
					<form:input path="user" />
				</div>
			</div>

			<div class="row">
				<div class="col col-md col-md3">
					<label>Description : </label>
				</div>
				<div class="col col-md col-md3">
					<form:input path="desc" />
				</div>
			</div>

			<div class="row">
				<div class="col col-md col-md3">
					<label>Target Date : </label>
				</div>
				<div class="col col-md col-md3">
					<form:input id="expenseDate" type="text" path="targetDate"
						class="date-picker" />
					<script type="text/javascript">
						$(document).ready(function() {
							$(function() {
								$("#expenseDate").datepicker();
							});
						});
					</script>
				</div>
			</div>
			<div class="row">
				<div class="col col-md col-md3">
					<label>Is Achieved : </label>
				</div>
				<div class="col col-md col-md3">
					<form:checkbox path="isDone" />
				</div>
			</div>

			<div class="row">
				<div class="col col-md col-md3">
					<input type="submit" value="Add Todo" />
				</div>
			</div>

		</form:form>
	</div>

</body>
</html>