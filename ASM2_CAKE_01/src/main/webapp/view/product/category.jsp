<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sorting</title>
</head>
<body>
	<h3>PAGINATION</h3>
	<table border="1" style="width: 100%">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Price</th>
			<th>Date</th>
		</tr>
		<c:forEach var="item" items="${items}">
			<tr>
				<td>${item.id}</td>
				<td>${item.name}</td>
			</tr>
		</c:forEach>
	</table>
	<form action="/product/category" method="post">
		<input name="category" value="${category}">
		<button>Search</button>
	</form>
</body>
</html>