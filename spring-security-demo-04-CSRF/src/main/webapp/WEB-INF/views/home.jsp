<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to my page</title>
</head>
<body>
	<h1>Welcome to Home Page</h1>
	<hr/>
	<p>
		User:<security:authentication property ="principal.username"/>
		<br><br>
		Role(s):<security:authentication property ="principal.authorities"/>
	</p>
	<hr/>
	<p>
		<a href="${pageContext.request.contextPath}/leaders">Leaders Page</a>
		<br/><br/>
		<a href = "${pageContext.request.contextPath}/systems">Systems Page</a>
	</p>
	<p>
		Lorem poem heom hruojd
	</p>
	<hr/>
	<form:form action="${pageContext.request.contextPath}/logout"
				method="POST">
		<button type="submit">Logout</button>
		
	</form:form>
	
</body>
</html>