<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="stylesheet.css">
<title>Edit our expenses!</title>
</head>
<body class="text-center">
<h1>Edit Expense</h1>
<a href="/expenses">Go back</a>
<div>
<h1 class="container-fluid">Expense</h1>
<form:form action="/edit/${expense.id}" method="post" modelAttribute="expense">
	<input type="hidden" name="_method" value="put">
	<div>
		<form:label path="name">Expense Name: </form:label><br/>
		<form:errors path="name" class="text-danger"/>
		<form:input style="width:250px;" path="name"/>
	</div>
	<div>
		<form:label path="vendor">Vendor: </form:label><br/>
		<form:errors path="vendor" class="text-danger"/>
		<form:input style="width:250px;" path="vendor"/>
	</div>
	<div>
		<form:label path="amount">Amount: </form:label><br/>
		<form:errors path="amount" class="text-danger"/>
		<form:input style="width:250px;" type="double" path="amount"/>
	</div>
	<div>
		<form:label path="description">Description: </form:label><br/>
		<form:errors path="description" class="text-danger"/>
		<form:textarea style="width:300px;" rows="3" path="description"/>
	</div>
	<div>
		<input type="submit" class="btn btn-primary" value="Submit"/>
	</div>
</form:form>
</div>
</body>
</html>