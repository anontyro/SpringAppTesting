<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration Form</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student">
	
		First name: <form:input path="firstName"/>
		<br>
		Last name: <form:input path="lastName"/>	
		<br>
		Country: 
		<form:select path="country">
		
		<form:options items= "${student.countryOptions }" />
				
		</form:select>
		<br>
		
		Favourite Language:
		Java<form:radiobutton path="favouriteLanguage" value="Java"/>
		Javascript<form:radiobutton path="favouriteLanguage" value="Javascript"/>
		C#<form:radiobutton path="favouriteLanguage" value="C#"/>
		Ruby<form:radiobutton path="favouriteLanguage" value="Ruby"/>
		PHP<form:radiobutton path="favouriteLanguage" value="PHP"/>
		
		<br>
		
		Operating Systems:
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		Unix <form:checkbox path="operatingSystems" value="Unix"/>
		Windows <form:checkbox path="operatingSystems" value="Windows"/>
		Mac <form:checkbox path="operatingSystems" value="Mac"/>
		<br>
		<input type="submit" value="Submit"/>
		
	</form:form>



</body>
</html>