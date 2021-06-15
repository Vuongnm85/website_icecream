<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Matrix lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Matrix admin lite design, Matrix admin lite dashboard bootstrap 5 dashboard template">
<meta name="description"
	content="Matrix Admin Lite Free Version is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
<meta name="robots" content="noindex,nofollow">
<title>Quản trị | Thống kê lượt mua sản phẩm</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="/view/admin/assets/images/favicon.png">
<!-- Custom CSS -->
<link href="/view/admin/assets/libs/flot/css/float-chart.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="/view/admin/dist/css/style.min.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
	<!-- ============================================================== -->
	<!-- Preloader - style you can find in spinners.css -->
	<!-- ============================================================== -->
	<div class="preloader">
		<div class="lds-ripple">
			<div class="lds-pos"></div>
			<div class="lds-pos"></div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5"
		data-sidebartype="full" data-sidebar-position="absolute"
		data-header-position="absolute" data-boxed-layout="full">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<header class="topbar" data-navbarbg="skin5">
			<nav class="navbar top-navbar navbar-expand-md navbar-dark">
				<div class="navbar-header" data-logobg="skin5">

					<!-- ============================================================== -->
					<!-- Logo -->
					<!-- ============================================================== -->
					<a class="navbar-brand" href="index.html"> <!-- Logo icon --> <b
						class="logo-icon ps-2"> <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
							<!-- Dark Logo icon --> <img
							src="/view/admin/assets/images/logo-icon.png" alt="homepage"
							class="light-logo" />

					</b> <!--End Logo icon --> <!-- Logo text --> <span class="logo-text">
							<!-- dark Logo text --> <img
							src="/view/admin/assets/images/logo-text.png" alt="homepage"
							class="light-logo" />

					</span> <!-- Logo icon --> <!-- <b class="logo-icon"> --> <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
						<!-- Dark Logo icon --> <!-- <img src="../../assets/images/logo-text.png" alt="homepage" class="light-logo" /> -->

						<!-- </b> --> <!--End Logo icon -->
					</a>
					<!-- ============================================================== -->
					<!-- End Logo -->
					<!-- ============================================================== -->
					<!-- ============================================================== -->
					<!-- Toggle which is visible on mobile only -->
					<!-- ============================================================== -->
					<a class="nav-toggler waves-effect waves-light d-block d-md-none"
						href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
				</div>
				<!-- ============================================================== -->
				<!-- End Logo -->
				<!-- ============================================================== -->
				<div class="navbar-collapse collapse" id="navbarSupportedContent"
					data-navbarbg="skin5">
					<!-- ============================================================== -->
					<!-- toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav float-start me-auto">
						<li class="nav-item d-none d-lg-block"><a
							class="nav-link sidebartoggler waves-effect waves-light"
							href="javascript:void(0)" data-sidebartype="mini-sidebar"><i
								class="mdi mdi-menu font-24"></i></a></li>
						<!-- ============================================================== -->
						<!-- create new -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								<span class="d-none d-md-block">Tạo mới <i
									class="fa fa-angle-down"></i></span> <span class="d-block d-md-none"><i
									class="fa fa-plus"></i></span>
						</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#">Hoạt động</a></li>
								<li><a class="dropdown-item" href="#">Hoạt động khác</a></li>
								<li>
									<hr class="dropdown-divider">
								</li>
								<li><a class="dropdown-item" href="#">Something else
										here</a></li>
							</ul></li>
						<!-- ============================================================== -->
						<!-- Search -->
						<!-- ============================================================== -->
						<li class="nav-item search-box"><a
							class="nav-link waves-effect waves-dark"
							href="javascript:void(0)"><i class="ti-search"></i></a>
							<form class="app-search position-absolute">
								<input type="text" class="form-control"
									placeholder="Search &amp; enter"> <a class="srh-btn"><i
									class="ti-close"></i></a>
							</form></li>
					</ul>
					<!-- ============================================================== -->
					<!-- Right side toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav float-end">
						<!-- ============================================================== -->
						<!-- Comment -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								<i class="mdi mdi-bell font-24"></i>
						</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#">Tạo mới</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li>
									<hr class="dropdown-divider">
								</li>
								<li><a class="dropdown-item" href="#">Something else
										here</a></li>
							</ul></li>
						<!-- ============================================================== -->
						<!-- End Comment -->
						<!-- ============================================================== -->
						<!-- ============================================================== -->
						<!-- Messages -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle waves-effect waves-dark" href="#"
							id="2" role="button" data-bs-toggle="dropdown"
							aria-expanded="false"> <i
								class="font-24 mdi mdi-comment-processing"></i>
						</a>
							<ul
								class="dropdown-menu dropdown-menu-end mailbox animated bounceInDown"
								aria-labelledby="2">
								<ul class="list-style-none">
									<li>
										<div class="">
											<!-- Message -->
											<a href="javascript:void(0)" class="link border-top">
												<div class="d-flex no-block align-items-center p-10">
													<span class="btn btn-success btn-circle"><i
														class="ti-calendar"></i></span>
													<div class="ms-2">
														<h5 class="mb-0">Thông báo hôm nay</h5>
														<span class="mail-desc">Just a reminder that event</span>
													</div>
												</div>
											</a>
											<!-- Message -->
											<a href="javascript:void(0)" class="link border-top">
												<div class="d-flex no-block align-items-center p-10">
													<span class="btn btn-info btn-circle"><i
														class="ti-settings"></i></span>
													<div class="ms-2">
														<h5 class="mb-0">Cài đặt</h5>
														<span class="mail-desc">You can customize this
															template</span>
													</div>
												</div>
											</a>
											<!-- Message -->
											<a href="javascript:void(0)" class="link border-top">
												<div class="d-flex no-block align-items-center p-10">
													<span class="btn btn-primary btn-circle"><i
														class="ti-user"></i></span>
													<div class="ms-2">
														<h5 class="mb-0">Nguyễn Minh Vương</h5>
														<span class="mail-desc">Just see the my admin!</span>
													</div>
												</div>
											</a>
											<!-- Message -->
											<a href="javascript:void(0)" class="link border-top">
												<div class="d-flex no-block align-items-center p-10">
													<span class="btn btn-danger btn-circle"><i
														class="fa fa-link"></i></span>
													<div class="ms-2">
														<h5 class="mb-0">Đã đăng nhập trang quản trị viên</h5>
														<span class="mail-desc">Just see the my new admin!</span>
													</div>
												</div>
											</a>
										</div>
									</li>
								</ul>
							</ul></li>
						<!-- ============================================================== -->
						<!-- End Messages -->
						<!-- ============================================================== -->

						<!-- ============================================================== -->
						<!-- User profile and search -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic"
							href="#" id="navbarDropdown" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> <img
								src="/view/admin/assets/images/users/1.jpg" alt="user"
								class="rounded-circle" width="31">
						</a>
							<ul class="dropdown-menu dropdown-menu-end user-dd animated"
								aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="javascript:void(0)"><i
									class="ti-user me-1 ms-1"></i> Tài khoản của tôi</a>
								<a class="dropdown-item" href="javascript:void(0)"><i
									class="ti-wallet me-1 ms-1"></i> My Balance</a>
								<a class="dropdown-item" href="javascript:void(0)"><i
									class="ti-email me-1 ms-1"></i> Nhắn tin</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="javascript:void(0)"><i
									class="ti-settings me-1 ms-1"></i> Cài đặt tài khoản</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="javascript:void(0)"><i
									class="fa fa-power-off me-1 ms-1"></i> Đăng xuất</a>
								<div class="dropdown-divider"></div>
								<div class="ps-4 p-10">
									<a href="javascript:void(0)"
										class="btn btn-sm btn-success btn-rounded text-white">Xem
										tài khoản</a>
								</div>
							</ul></li>
						<!-- ============================================================== -->
						<!-- User profile and search -->
						<!-- ============================================================== -->
					</ul>
				</div>
			</nav>
		</header>
		<!-- ============================================================== -->
		<!-- End Topbar header -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<aside class="left-sidebar" data-sidebarbg="skin5">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
					<ul id="sidebarnav" class="pt-4">
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="/admin/account/index" aria-expanded="false"><i
								class="me-2 mdi mdi mdi-account-box"></i><span class="hide-menu">Tài
									khoản</span></a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="/admin/categories/index" aria-expanded="false"><i
								class="me-2 mdi mdi-format-align-justify"></i><span
								class="hide-menu">Danh mục</span></a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="/admin/product/index" aria-expanded="false"><i
								class="me-2 mdi mdi-bookmark-check"></i><span class="hide-menu">Sản
									phẩm</span></a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="/admin/inventory-by-category" aria-expanded="false"><i
								class="me-2 mdi mdi-clipboard-text"></i><span class="hide-menu">Thống
									kê sản phẩm</span></a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="/admin/inventory-by-order" aria-expanded="false"><i
								class="me-2 mdi mdi mdi-cart"></i><span class="hide-menu">Lượt mua sản phẩm</span></a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="/admin/inventory-by-order-month" aria-expanded="false"><i
								class="me-2 mdi mdi mdi-cart"></i><span class="hide-menu">Thống
									kê đơn hàng</span></a></li>
					</ul>
				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>
		<!-- ============================================================== -->
		<!-- End Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-12 d-flex no-block align-items-center">
						<h4 class="page-title">Thống kê đơn hàng</h4>
						<div class="ms-auto text-end">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
									<li class="breadcrumb-item active" aria-current="page">Thống kê đơn hàng</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<!-- ============================================================== -->
			<!-- End Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- Recent comment and chats -->
				<!-- ============================================================== -->
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">Thống kê đơn hàng</h5>
							</div>
							<table class="table" border="1" style="width: 100%">
								<thead>
									<tr>
										<th>Mã đơn hàng</th>
										<th>Tên Địa chỉ</th>
										<th>Ngày tạo</th>
										<th>Tổng giá</th>
										<th>Số lượng sản phẩm</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${items}">
										<tr>
											<td>${item.group.id}</td>
											<td>${item.group.address}</td>
											<td>${item.group.createDate}</td>
											<td>${item.sum}</td>
											<td>${item.count}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- Recent comment and chats -->
				<!-- ============================================================== -->
			</div>
			<!-- ============================================================== -->
			<!-- End Container fluid  -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- footer -->
			<!-- ============================================================== -->
			<footer class="footer text-center"> All Rights Reserved by
				VuongNguyen-admin. Designed and Developed by NguyenMinhVuong. </footer>
			<!-- ============================================================== -->
			<!-- End footer -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
	<script src="/view/admin/assets/libs/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script
		src="/view/admin/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="/view/admin/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
	<script src="/view/admin/assets/extra-libs/sparkline/sparkline.js"></script>
	<!--Wave Effects -->
	<script src="/view/admin/dist/js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="/view/admin/dist/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="/view/admin/dist/js/custom.min.js"></script>
	<!--This page JavaScript -->
	<!-- <script src="/view/admin/dist/js/pages/dashboards/dashboard1.js"></script> -->
	<!-- Charts js Files -->
	<script src="/view/admin/assets/libs/flot/excanvas.js"></script>
	<script src="/view/admin/assets/libs/flot/jquery.flot.js"></script>
	<script src="/view/admin/assets/libs/flot/jquery.flot.pie.js"></script>
	<script src="/view/admin/assets/libs/flot/jquery.flot.time.js"></script>
	<script src="/view/admin/assets/libs/flot/jquery.flot.stack.js"></script>
	<script src="/view/admin/assets/libs/flot/jquery.flot.crosshair.js"></script>
	<script
		src="/view/admin/assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
	<script src="/view/admin/dist/js/pages/chart/chart-page-init.js"></script>

</body>

</html>