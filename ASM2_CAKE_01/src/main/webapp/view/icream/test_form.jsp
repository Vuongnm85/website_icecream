<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/product/search-and-page" method="post"
		enctype="multipart/form-data">
		<p>
			<input type="text" name="" id="" placeholder="Sản phẩm...."
				value="${keywords}" />
		</p>
	</form>
</body>
</html>