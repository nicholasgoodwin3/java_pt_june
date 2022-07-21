<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<title>dojos and ninjas!</title>
</head>
<body class="text-center">
	<div class="text-bg-dark p-3">
	<h1><c:out value="${dojo.name}"/></h1>
		<c:forEach var="ninja" items="${dojo.ninjas}"> 
			<table class="table table-dark table-hover">
			<tr>
				<th>First Name:</th>
				<td><c:out value="${ninja.firstName}"/></td>
			</tr>
			<tr>
				<th>Last Name:</th>
				<td><c:out value="${ninja.lastName}"/></td>
			</tr>
		</table>
		</c:forEach>
		<a href="/ninjas/new">Click here to make a new ninjas for your dojo!</a><br>
		<a href="/dojos/new">Create more dojos here!</a>
	</div>
</body>
</html>