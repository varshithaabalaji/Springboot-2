<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
	.error{
		color:red;
	}
</style>
<title>Login</title>
</head>
<body>

	<h1>My Custom Form</h1>
	<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
		<c:if test="${param.error !=null}">
			<em CLASS="error">Invalid User!</em>
		</c:if>
		<c:if test="${param.error !=null}">
			<em CLASS="">Invalid User!</em>
		</c:if>
		<p>
			USername: <input type="text" name="username"/>
		</p>
		
			Password: <input type="password" name="password"/>
		
		
		<button type="submit">Login</button>
	</form:form>
</body>
</html>