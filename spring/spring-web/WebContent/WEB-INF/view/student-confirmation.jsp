<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- Bring in the looping tags -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> ${student.lastName } confirmation page</title>
</head>
<body>
<h2>Student Info</h2>
<br>
	${student.firstName } ${student.lastName } from ${student.country} has been registared correctly.
	<br>
	Your favourite language is: ${student.favouriteLanguage}
	<br>
	
	Operating Systems:
	<ul>
	<c:forEach var="temp" items="${student.operatingSystems }">
	<li>${temp }</li>
	</c:forEach>
	</ul>
</body>
</html>