<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>404 Error</title>
<%@include file="css-link.html"%>
</head>
<body>

	<!-- Begin Body Wrapper -->
	<div class="body-wrapper">
		<!-- Header Area End Here -->
		<%@include file="main-header.jsp"%>
		<!-- Header Area End Here -->



		<!-- Begin Li's Breadcrumb Area -->
		<div class="breadcrumb-area">
			<div class="container">
				<div class="breadcrumb-content">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li class="active">404 Error</li>
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
								<h1>404</h1>
								<h2>Opps! PAGE NOT BE FOUND</h2>
								<p>
									Sorry but the page you are looking for does not exist, have
									been removed, <br> name changed or is temporarity
									unavailable.
								</p>
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
								<a href="index.html">Back to home page</a>
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