<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Laboratorio 6 N Capas</title>
</head>
<body>
		<form:form action="${pageContext.request.contextPath}/formData" method="POST" modelAttribute="student">
			<label>Ingrese un nombre: </label>
			<form:input type="text" name="name" path="sName"/>
			<br><br>
			<label>Ingrese el apellido: </label>
			<form:input type="text" name="lname" path="lName"/>
			<br><br>
			<label>Ingrese la edad: </label>
			<form:input type="number" name="age" path="sAge"/>
			<br><br>
			<label>Estado del estudiante: </label>
			<form:radiobutton name="status" path="bActivo" value="true"/><label>Activo</label>
			<br>
			<form:radiobutton name="status" path="bActivo" value="false"/><label>Inactivo</label>
			<br><br>
			
			<input type="submit" onclick="window.location.href = ${pageContext.request.contextPath}/" value="Agregar estudiante">
		</form:form>
</body>
</html>