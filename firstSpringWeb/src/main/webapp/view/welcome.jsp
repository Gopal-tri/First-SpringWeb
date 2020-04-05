
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<html>
<head>
<title>Yahoo!!</title>
</head>
<body>
	<div>
		<jsp:include page="/include/menu.jsp"></jsp:include>
	</div>
	Welcome ${msg}
	<br>

	<a href="/list-todo">Click Here</a> to start maintaining your todo's!


</body>
</html>