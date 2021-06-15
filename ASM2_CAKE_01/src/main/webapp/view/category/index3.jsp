<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Category Management</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
	integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
	crossorigin="anonymous"></script>
</head>
<body>
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item" role="presentation">
			<button class="nav-link active" id="home-tab" data-bs-toggle="tab"
				data-bs-target="#home" type="button" role="tab" aria-controls="home"
				aria-selected="true">Home</button>
		</li>
		<li class="nav-item" role="presentation">
			<button class="nav-link" id="profile-tab" data-bs-toggle="tab"
				data-bs-target="#profile" type="button" role="tab"
				aria-controls="profile" aria-selected="false">Profile</button>
		</li>
		<li class="nav-item" role="presentation">
			<button class="nav-link" id="contact-tab" data-bs-toggle="tab"
				data-bs-target="#contact" type="button" role="tab"
				aria-controls="contact" aria-selected="false">Contact</button>
		</li>
	</ul>
	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="home" role="tabpanel"
			aria-labelledby="home-tab"><jsp:include page="_form.jsp" /></div>
		<div class="tab-pane fade" id="profile" role="tabpanel"
			aria-labelledby="profile-tab"><jsp:include page="_table.jsp" /></div>
		<div class="tab-pane fade" id="contact" role="tabpanel"
			aria-labelledby="contact-tab"></div>
	</div>



</body>
</html>
