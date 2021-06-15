<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/search-cate">
		<button>OK</button>
		<select name="order" class="orderby">
		<c:forEach var="ord" items="${ord}">
			<option value="${ord.id }" >${cate.username }</option>
			{ord.address }
		</c:forEach>
	</select>
	</form>
	<table class="table" border="1" style="width: 100%">
		<thead>
			<tr>
				<th>Loại hàng</th>
				<th>Tổng giá</th>
				<th>Số sản phẩm</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${items}">
				<tr>
					<td>${item.id}</td>
					<td>${item.name}</td>
					<td>${item.price}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>