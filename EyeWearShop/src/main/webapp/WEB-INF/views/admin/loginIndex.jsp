<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Zay Shop eCommerce HTML CSS Template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/templatemo.css">
<link rel="stylesheet" href="assets/css/custom.css">

<link rel="stylesheet" href="assets/css/signup.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>

<body>
	<!-- Start Top Nav -->
	<nav
		class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block"
		id="templatemo_nav_top">
		<div class="container text-light">
			<div class="w-100 d-flex justify-content-between">
				<div>
					<i class="fa fa-envelope mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none"
						href="mailto:lowghiphop@gmail.com">lowghiphop@gmail.com</a> <i
						class="fa fa-phone mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none"
						href="tel:0363464646">0363-46-46-46</a>
				</div>
				<div>
					<a class="text-light" href="https://fb.com/templatemo"
						target="_blank" rel="sponsored"><i
						class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a> <a
						class="text-light" href="https://www.instagram.com/"
						target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
					<a class="text-light" href="https://twitter.com/" target="_blank"><i
						class="fab fa-twitter fa-sm fa-fw me-2"></i></a> <a class="text-light"
						href="https://www.linkedin.com/" target="_blank"><i
						class="fab fa-linkedin fa-sm fa-fw"></i></a>
				</div>
			</div>
		</div>
	</nav>
	<!-- Close Top Nav -->


	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light shadow">
		<div
			class="container d-flex justify-content-between align-items-center">

			<!-- Logo Brand -->
			<a class="navbar-brand text-success logo h1 align-self-center"
				href="index"> EyeWear </a>
			<!-- Responsive Menu -->
			<button class="navbar-toggler border-0" type="button"
				data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- NavBar Head -->
			<div
				class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
				id="templatemo_main_nav">

				<div class="flex-fill">
					<ul
						class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
						<li class="nav-item"><a class="nav-link" href="index"><s:message
									code="lo.mn.home" /></a></li>
						<li class="nav-item"><a class="nav-link" href="about"><s:message
									code="lo.mn.about" /></a></li>
						<li class="nav-item"><a class="nav-link" href="shop"><s:message
									code="lo.mn.shop" /></a></li>
						<li class="nav-item"><a class="nav-link" href="contact"><s:message
									code="lo.mn.contact" /></a></li>
						<li class="nav-item"><a class="nav-link" href="login1"><s:message
									code="lo.mn.login" /></a></li>

					</ul>
				</div>

				<div class="navbar align-self-center d-flex">

					<!-- Input Search -->
					<div
						class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
						<div class="input-group">
							<input type="text" class="form-control" id="inputMobileSearch"
								placeholder="Search ...">
							<div class="input-group-text">
								<i class="fa fa-fw fa-search"></i>
							</div>
						</div>
					</div>

					<!-- Search -->

					<a class="nav-icon position-relative text-decoration-none"
						href="?lang=vi"> <i class="bi bi-translate text-dark mr-3"></i>
						<span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">Vi</span>
					</a>
					<!-- Shopping Cart -->


					<!-- Notification -->
					<a class="nav-icon position-relative text-decoration-none"
						href="?lang=en"> <i class="bi bi-translate text-dark mr-3"></i>
						<span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">En</span>
					</a> <a class="nav-icon position-relative text-decoration-none"
						href="cart"> <i
						class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
					</a>
				</div>
			</div>

		</div>
	</nav>
	<!-- Close Header -->

	<!-- Modal -->
	<div class="modal fade bg-white" id="templatemo_search" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="w-100 pt-1 mb-5 text-right">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form action="" method="get"
				class="modal-content modal-body border-0 p-0">
				<div class="input-group mb-2">
					<input type="text" class="form-control" id="inputModalSearch"
						name="q" placeholder="Search ...">
					<button type="submit"
						class="input-group-text bg-success text-light">
						<i class="fa fa-fw fa-search text-white"></i>
					</button>
				</div>
			</form>
		</div>
	</div>

	<main class="container">
		<header class="row bg-dark p-2">
			<div class="col-md-6">
				<h3 class="text-white text-uppercase">CATEGORY MANAGEMENT</h3>
			</div>
		</header>

		<article class="col p-0">
			<table class="table table-light table-hover">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">NAME</th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${categoryItems}" varStatus="loop">
						<tr>
							<th scope="row">${item.id }</th>
							<td>${item.name }</td>
							<td class="text-right"><a class="btn btn-primary mr-2"
								href="/category/edit?id=${item.id }" role="button"><i
									class="bi bi-pencil"></i></a> <a class="btn btn-danger mr-2"
								href="/category/delete?id=${item.id }" role="button"><i
									class="bi bi-trash"></i></a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</article>
		<aside class="col bg-info">
			<h4 class="h4">EDIT CATEGORY</h4>
	<form:form action="/admin/loginIndex" modelAttribute="categoryItem" method="post">
		<div class="form-group">
				<c:if test="${not empty success_category}">
					<div class="alert alert-danger">${success_category}</div>
				</c:if>
				<c:if test="${not empty error_category}">
				<div>
					<div class="alert alert-danger">${error_category}</div>
				</div>
				</c:if>
		</div>		
		<div class="form-group">
			<form:label path="id">Category Id:</form:label>
			<form:input path="id" class="form-control"/>
			<form:errors path="id" element="h6"/>
		</div>
		<div class="form-group">
			<form:label path="name">Category Name:</form:label>
			<form:input path="name" class="form-control"/>
			<form:errors path="name" element="h6"/>	
			
		</div>
		<button class="btn btn-success mr-3" formaction="/category/create" formmethod="post"><i class="bi bi-file-plus-fill mr-2"></i></i>CREATE</button>
		<button class="btn btn-primary mr-3" formaction="/category/update" formmethod="post"><i class="bi bi-arrow-repeat mr-2"></i></i>UPDATE</button>
		<a class="btn btn-warning mr-3 mt-2 mb-2" href="/admin/loginIndex"><i class="bi bi-arrow-clockwise mr-2"></i>RESET</a>
		<a class="btn btn-danger mr-3 mt-2 mb-2" href="/index"><i class="bi bi-box-arrow-left"></i> Thoát</a>
	</form:form>
		</aside>

	</main>

	<!-- Start Banner Hero -->
	<footer class="bg-dark" id="tempaltemo_footer">
		<div class="container">
			<div class="row">

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-success border-bottom pb-3 border-light logo">EyeWear
						Shop</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><i class="fas fa-map-marker-alt fa-fw"></i> Công viên
							Phần mềm Quang Trung, Phường Tân Chánh Hiệp, Quận 12,TP.HCM</li>
						<li><i class="fa fa-phone fa-fw"></i> <a
							class="text-decoration-none" href="tel:0363464646">0363-46-46-46</a>
						</li>
						<li><i class="fa fa-envelope fa-fw"></i> <a
							class="text-decoration-none" href="mailto:lowghiphop@gmail.com">
								lowghiphop@gmail.com</a></li>
					</ul>
				</div>

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-light border-bottom pb-3 border-light">CHÍNH
						SÁCH</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><a class="text-decoration-none" href="#">Chính sách
								bảo hành</a></li>
						<li><a class="text-decoration-none" href="#">Chính sách
								đổi trả</a></li>
						<li><a class="text-decoration-none" href="#">Chính sách
								giao hàng</a></li>
						<li><a class="text-decoration-none" href="#">Chính sách
								bảo mật</a></li>
						<li><a class="text-decoration-none" href="#">Điều khoản
								mua hàng</a></li>
					</ul>
				</div>

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-light border-bottom pb-3 border-light">Thông
						tin</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><a class="text-decoration-none" href="#">Giới thiệu</a></li>
						<li><a class="text-decoration-none" href="#">Liên hệ</a></li>
						<li><a class="text-decoration-none" href="#">Thông tin
								tào khoản</a></li>
						<li><a class="text-decoration-none" href="#">Theo dõi đơn
								hàng</a></li>
						<li><a class="text-decoration-none" href="#">Hướng dẫn
								thanh toán</a></li>
					</ul>
				</div>

			</div>

			<div class="row text-light mb-4">
				<div class="col-12 mb-3">
					<div class="w-100 my-3 border-top border-light"></div>
				</div>
				<div class="col-auto me-auto">
					<ul class="list-inline text-left footer-icons">
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="http://facebook.com/"><i
								class="fab fa-facebook-f fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://www.instagram.com/"><i
								class="fab fa-instagram fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://twitter.com/"><i
								class="fab fa-twitter fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://www.linkedin.com/"><i
								class="fab fa-linkedin fa-lg fa-fw"></i></a>
						</li>
					</ul>
				</div>
				<div class="col-auto">
					<label class="sr-only" for="subscribeEmail">Email address</label>
					<div class="input-group mb-2">
						<input type="text" class="form-control bg-dark border-light"
							id="subscribeEmail" placeholder="Email address">
						<div class="input-group-text btn-success text-light">Subscribe</div>
					</div>
				</div>
			</div>
		</div>

		<div class="w-100 bg-black py-3">
			<div class="container">
				<div class="row pt-2">
					<div class="col-12">
						<p class="text-left text-light">
							Copyright &copy; 2021 Công ty TNHH MotMinhTui | Designed by <a
								rel="sponsored" href="https://templatemo.com" target="_blank">Template
								trên mạng</a>
						</p>
					</div>
				</div>
			</div>
		</div>

	</footer>
	<!-- End Footer -->

	<!-- Start Script -->
	<script src="assets/js/jquery-1.11.0.min.js"></script>
	<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/templatemo.js"></script>
	<script src="assets/js/custom.js"></script>

	<script>
		$(document).ready(function() {
			$("a[href*=lang]").on("click", function() {
				var param = $(this).attr("href");
				$.ajax({
					url : "/index" + param,
					success : function() {
						location.reload();
					}
				});
				return false;
			})
		})
	</script>
	<!-- End Script -->
</body>

</html>