<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Agregue un usuario</title>
</head>
<body>
	<form:form action = "${pageContext.request.contextPath}/formData" method = "POST" modelAttribute = "student">
	<label>Ingrese su nombre: </label>
	<form:input type = "text" name = "s_name" path = "sName"/><br>
	
	<label>Ingrese un apellido: </label>
	<form:input type = "text" name = "s_lname" path = "lName"/><br>
	
	<label>Ingrese edad: </label>
	<form:input type = "number" name = "s_age" path = "sAge"/><br>
	
	<label>Estado del estudiante</label>
	<form:radiobutton name="status" path="bActivo" value ="true"/><label>Activo</label>
	<form:radiobutton name="status" path="bActivo" value ="false"/><label>Inactivo</label>
	
	<input type = "submit" value = "Agregar estudiante">
	</form:form>
</body>
</html>