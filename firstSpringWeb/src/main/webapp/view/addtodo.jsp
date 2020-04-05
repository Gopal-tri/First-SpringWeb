<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div>
		<jsp:include page="/include/menu.jsp"></jsp:include>
	</div>


	<div class="container">
		<form action="/addtodo" method="post">
			<div class="form-group row">
				<label for="user" class="col-sm-2 col-form-label">Name</label>
				<div class="col-sm-3">
					<input type="text" class=" form-control" id="user"
						placeholder="User Name">
				</div>
			</div>
			<div class="form-group row">
				<label for="desc" class="col-sm-2 col-form-label ">Description</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="desc"
						placeholder="Todo Description">
				</div>
			</div>
			<div class="form-group row">
				<label for="tdate" class="col-sm-2 col-form-label">Target
					Date</label>
				<div class="col-sm-3">
					<input type="date" class="form-control" id="tdate"
						placeholder="tdate">
				</div>
			</div>
			<div class="form-group row">
				<label for="isdone" class="col-sm-2 col-form-label">Is Done</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="isdone"
						placeholder="Todo Status">
				</div>
			</div>
		</form>
	</div>


</body>
</html>