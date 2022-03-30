<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${errorCode}Error</title>
<%@include file="css-link.html"%>
</head>
<body>
	<!-- Begin Body Wrapper -->
	<div class="body-wrapper">
		<!-- Header Area End Here -->
		<%-- <%@include file="main-header.jsp"%> --%>
		<header>
			<!-- Begin Header Top Area -->
			<div class="header-top">
				<div class="container">
					<div class="row">
						<!-- Begin Header Top Left Area -->
						<div class="col-lg-3 col-md-4">
							<div class="header-top-left">
								<ul class="phone-wrap">
									<li><span>Telephone Enquiry:</span><a href="#">(+91)
											999 999 9999</a></li>
								</ul>
							</div>
						</div>
						<!-- Header Top Left Area End Here -->
						<!-- Begin Header Top Right Area -->
						<div class="col-lg-9 col-md-8">
							<div class="header-top-right">
								<ul class="ht-menu">

									<!-- Begin Currency Area -->
									<li><span class="currency-selector-wrapper">Currency
											:</span>
										<div class="ht-currency-trigger">
											<span>INR &#8377;</span>
										</div></li>
									<!-- Currency Area End Here -->
									<!-- Begin Language Area -->
									<li><span class="language-selector-wrapper">Language
											:</span>
										<div class="ht-language-trigger">
											<span>English</span>
										</div></li>
									<!-- Language Area End Here -->
								</ul>
							</div>
						</div>
						<!-- Header Top Right Area End Here -->
					</div>
				</div>
			</div>
			<!-- Header Top Area End Here -->

			<!-- Header Middle Area End Here -->
			<!-- Begin Header Bottom Area -->

			<!-- Header Bottom Menu Area End Here -->
	</div>
	</div>
	</div>
	</div>
	<!-- Header Bottom Area End Here -->
	<!-- Begin Mobile Menu Area -->
	<div class="mobile-menu-area d-lg-none d-xl-none col-12">
		<div class="container">
			<div class="row">
				<div class="mobile-menu"></div>
			</div>
		</div>
	</div>
	<!-- Mobile Menu Area End Here -->
	</header>
	<!-- Header Area End Here -->



	<!-- Begin Li's Breadcrumb Area -->
	<div class="breadcrumb-area">
		<div class="container">
			<div class="breadcrumb-content">
				<ul>
					<li><a href="index">Home</a></li>
					<li class="active">${errorCode}Error</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Li's Breadcrumb Area End Here -->



	<!-- Error 404 Area Start -->
	<div class="error404-area pt-30 pb-60">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="error-wrapper text-center ptb-50 pt-xs-20">
						<div class="error-text">
							<h1>${errorCode}</h1>
							<h2>${errorMsg}</h2>
							<%-- <p>
									Sorry but the page you are looking for does not exist, have
									been removed, <br> name changed or is temporarity
									unavailable.
								</p> --%>
						</div>
						<div class="search-error">
							<form id="search-form" action="#">
								<input type="text" placeholder="Search">
								<button>
									<i class="zmdi zmdi-search"></i>
								</button>
							</form>
						</div>
						<div class="error-button">
							<a href="/index">Back to home page</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Error 404 Area End -->



	<!-- Begin Footer Area -->
	<%@include file="footer.html"%>
	<!-- Footer Area End Here -->
	</div>
	<!-- Body Wrapper End Here -->
	<%@include file="js-link.html"%>
</body>
</html>