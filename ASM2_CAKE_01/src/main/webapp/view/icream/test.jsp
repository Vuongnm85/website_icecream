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
	<c:forEach var="item" items="${page.content}">
		<img width="164" height="164" src="/view/icream/image/${item.image }"
			class="attachment-shop_catalog size-shop_catalog wp-post-image"
			alt="" sizes="(max-width: 164px) 100vw, 164px" />${item.name}
			<span class="price"><span
			class="woocommerce-Price-amount amount">${item.price}&nbsp;<span
				class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
	</c:forEach>
</body>
</html>