<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>EyeWear Shop</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
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
						<li class="nav-item"><a class="nav-link" href="index"><s:message code="lo.mn.home"/></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="about"><s:message code="lo.mn.about"/></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="shop"><s:message code="lo.mn.shop"/></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="contact"><s:message code="lo.mn.contact"/></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="login1"><s:message code="lo.mn.login"/></a>
						</li>
						
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
					
					<a class="nav-icon position-relative text-decoration-none" href="?lang=vi">
						<i class="bi bi-translate text-dark mr-3"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">Vi</span>
					</a>
					<!-- Shopping Cart -->
					

					<!-- Notification -->
					<a class="nav-icon position-relative text-decoration-none" href="?lang=en">
						<i class="bi bi-translate text-dark mr-3"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">En</span>
					</a>
					
					<a class="nav-icon position-relative text-decoration-none"
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

	<section class="vh-60" style="background-color: #eee;">
		<div class="container h-100">
			<div class="row d-flex justify-content-center align-items-center h-100">
				<div class="col">
					<p>
						<span class="h2">Shopping Cart </span><span class="h4">(1
							item in your cart)</span>
					</p>
					<c:forEach var="product" items="${cartItems}">
					<form action="/cart/update/${product.id}"
								method="post">
					<div class="card mb-4">
						<div class="card-body p-4">

							<div class="row align-items-center">
								<div class="col-md-2">
									<img
										src="/assets/image/${product.image}"
										class="img-fluid" alt="Generic placeholder image">
								</div>
								<div class="col-md-2 d-flex justify-content-center">
									<div>
										<p class="small text-muted mb-4 pb-2">Name</p>
										<p class="lead fw-normal mb-0">${product.name}</p>
									</div>
								</div>
								
								<div class="col-md-2 d-flex justify-content-center">
									<div>
										<p class="small text-muted mb-4 pb-2">Qty</p>
										<input type="number" width="20" height="10" class="lead fw-normal mb-0" name="qty" value="${product.qty}">
									</div>
								</div>
								<div class="col-md-2 d-flex justify-content-center">
									<div>
										<p class="small text-muted mb-4 pb-2">Control</p>
										<button type="submit" class="btn btn-info">Update</button>
									</div>
								</div>
								<div class="col-md-2 d-flex justify-content-center">
									<div>
										<p class="small text-muted mb-4 pb-2">Price</p>
										<p class="lead fw-normal mb-0"><fmt:formatNumber value="${product.price}" /> VND</p>
									</div>
								</div>
								<div class="col-md-2 d-flex justify-content-center">
									
									<div>
										<a href="cart/remove/${product.id}" class="btn btn-danger"><i class="bi bi-trash"></i></a>
									</div>
								</div>
							</div>

						</div>
					</div>
					</form>
					</c:forEach> 

					<div class="card mb-5">
						<div class="card-body p-4">
							<div class="float-start">
								<a href="shop" class="btn btn-success">Add More</a>
								<a href="/cart/clear" class="btn btn-info">Clear</a>
							</div>
							<div class="float-end">
								
								<p class="mb-0 me-5 d-flex align-items-center">
									<span class="small text-muted me-2">Total Price: </span> <span
										class="lead fw-normal"><fmt:formatNumber value="${totalPrice}" /> VND</span>
								</p>
								
							</div>

						</div>
					</div>

					

				</div>
			</div>
		</div>
	</section>

	<!-- Start Banner Hero -->

	<!-- End Banner Hero -->


	<!-- Start Categories of The Month -->

	<!-- End Featured Product -->


	<!-- Start Footer -->
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
    <!-- End Script -->
</body>

</html>