<%@ page language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<div>
	<jsp:include page="/include/headscript.jsp"></jsp:include>

</div>
<title>Yahoo!!</title>
</head>
<body>

	<div>
		<jsp:include page="/include/menu.jsp"></jsp:include>
	</div>
	<p>
		<font color="red"><c:out value="${errorMsg}"></c:out></font> <font
			color="green"><c:out value="${date}"></c:out></font>

	</p>
	<form action="/login" method="POST">
		Name : <input name="user" type="text" /> Password : <input
			name="pass" type="password" /> <input type="submit" />
	</form>
</body>
</html>