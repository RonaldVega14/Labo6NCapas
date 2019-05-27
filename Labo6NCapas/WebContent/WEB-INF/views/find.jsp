<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
    
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Busca un estudiante por su ID</title>
</head>
<body>
	<form:form action = "${pageContext.request.contextPath}/searchStudent" method = "POST" modelAttribute = "students">
	<label>Ingrese codigo de estudiante: </label>
	<form:input type = "text" name = "id_student" path = "cStudent"/><br>
	<input type = "submit" value = "Buscar estudiante">
	</form:form>
</body>
</html>