<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogIn | Register</title>
<%@include file="css-link.html"%>
</head>
<body>

	<!-- Begin Body Wrapper -->
	<div class="body-wrapper">

		<!-- Header Area End Here -->
		<%@include file="main-header.jsp"%>
		<!-- Header Area End Here -->


		<!-- Begin Breadcrumb Area -->
		<div class="breadcrumb-area">
			<div class="container">
				<div class="breadcrumb-content">
					<ul>
						<li><a href="index">Home</a></li>
						<li class="active">Login Register</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Breadcrumb Area End Here -->
		<!-- Begin Login Content Area -->
		<div class="page-section mb-60">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb-30">


						<!-- Login Form s-->
						<form action="/do_login" method="POST">
							<div class="login-form">
								<h4 class="login-title">Login</h4>
								<div class="row">

									<c:if test="${sessionScope.message != null && sessionScope.message.src == 'login' }">
										<div class="col-md-12 alert ${sessionScope.message.type}"
											role="alert">
											${sessionScope.message.content}
											<%
											session.removeAttribute("message");
											%>
										</div>
									</c:if>

									<div class="col-md-12 col-12 mb-20">
										<label>Email Address*</label> <input class="mb-0" type="email"
											name="email" placeholder="Email Address">
									</div>
									<div class="col-12 mb-20">
										<label>Password</label> <input class="mb-0" type="password"
											name="password" placeholder="Password" required>
									</div>
									<div class="col-md-8">
										<div class="check-box d-inline-block ml-0 ml-md-2 mt-10">
											<input type="checkbox" id="remember_me"> <label
												for="remember_me">Remember me</label>
										</div>
									</div>
									<div class="col-md-4 mt-10 mb-20 text-left text-md-right">
										<a href="#"> Forgotten password?</a>
									</div>
									<div class="col-md-12">
										<button class="register-button mt-0">Login</button>
									</div>
								</div>
							</div>
						</form>


					</div>


					<div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">


						<form action="/do_register" method="post" enctype='multipart/form-data'>
							<div class="login-form">
								<h4 class="login-title">Register</h4>
								<div class="row">

									<c:if test="${sessionScope.message != null && sessionScope.message.src == 'registration' }">
										<div class="col-md-12 alert ${sessionScope.message.type}"
											role="alert">
											${sessionScope.message.content}
											<%
											session.removeAttribute("message");
											%>
										</div>
									</c:if>

									<div class="col-md-6 col-12 mb-20">
										<label>Full Name</label> <input class="mb-0" type="text"
											name="name" placeholder="Full Name">
									</div>

									<div class="col-md-6 col-12 mb-20">
										<label>Mobile Number</label> <input class="mb-0" type="tel"
											placeholder="999 999 9999" pattern="[0-9]{5} [0-9]{5}" name="phone_no">
									</div>

									<div class="col-md-12 mb-20">
										<label>Email Address*</label> <input class="mb-0" type="email"
											placeholder="Email Address" name="email">
									</div>

									<div class="col-md-6 mb-20">
										<label>Password</label> <input class="mb-0" type="password"
											name="password" placeholder="Password">
									</div>

									<div class="col-md-6 mb-20">
										<label>Confirm Password</label> <input class="mb-0"
											type="password" placeholder="Confirm Password">
									</div>
									
									<div class="col-md-12 mb-20">
										<label>Address</label> <textarea class="form-control" rows="5" cols="100" placeholder="Address goes here..." name="address"></textarea>
									</div>
									
									<div class="col-md-6 mb-20 file-control file-control-file">
										<label>Profile Picture</label> <input class="mb-0"
											type="file" name="file" id="file">
									</div>
									
									<!-- <div class="col-md-6 mb-20">
										<label>Profile Picture</label> <input class="mb-0" type="file">
									</div> -->
									<div class="col-12">
										<button class="register-button mt-0">Register</button>
									</div>
								</div>
							</div>
						</form>


					</div>
				</div>
			</div>
		</div>
		<!-- Login Content Area End Here -->

		<!-- Begin Footer Area -->
		<%@include file="footer.html"%>
		<!-- Footer Area End Here -->

	</div>
	<!-- Body Wrapper End Here -->
	<%@include file="js-link.html"%>
</body>
</html>