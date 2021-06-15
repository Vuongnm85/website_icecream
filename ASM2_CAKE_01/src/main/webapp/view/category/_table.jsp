<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<table border="1" style="width: 100%">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Ngày tạo</th>
		<th></th>
	</tr>
	<c:forEach var="item" items="${items}">
		<tr>
			<td>${item.id}</td>
			<td>${item.name}</td>
			<td>${item.createDate }</td>
			<td>${item.available }</td>
			<td><img src="/view/home/adam_img/${item.image}"
				alt="Product Name"
				style="width: 203px; height: 230px; border-radius: 10px;"></td>
			<td>${item.price }</td>
			<td><a href="/category/edit/${item.id}">Edit</a></td>
		</tr>
	</c:forEach>
</table>





