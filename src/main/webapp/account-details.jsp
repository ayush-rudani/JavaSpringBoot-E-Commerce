<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Details</title>
<%@include file="css-link.html"%>
</head>
<body>
	<!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
	<!-- Begin Body Wrapper -->
	<div class="body-wrapper">
		<!-- Begin Header Area -->
		<%@include file="header.html"%>
		<!-- Header Area End Here -->


		<!-- Begin Li's Breadcrumb Area -->
		<div class="breadcrumb-area">
			<div class="container">
				<div class="breadcrumb-content">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li class="active">Account Details</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Li's Breadcrumb Area End Here -->


		<!-- Begin Account Details Area -->
		<div class="page-section mb-60">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-12 col-lg-6 col-xs-12 mx-auto my-3">
						<div class="login-form mx-auto">
							<!-- if request.getParam("userid") == "" -->
							<!-- admin is not trying to see other user's details or any user/admin is trying to see their account then -->
							<c:if test="${fuser.user_type}">
								<h1 class="text-center mb-0">Hello ${fuser.name}</h1>
							</c:if>
							<!-- else -->
							<!-- <h1 class="text-center mb-0">$USERNAME$'s Account Details</h1> -->
							<!-- endif -->
							<!-- if request.getParam("userid") != "" -->
							<!-- Admin is trying to see other user's details -->
							<!-- all fields should be disabled -->
							<div class="col">
								<div class="card my-2 mt-4">
									<div class="card-body">
										<div class="row">
											<div class="col-md-12 mb-20 mt-20 text-center">
												<!-- <img src="images/about-us/icon/1.png" class="img-fluid" alt="Responsive image">
                                                <input type="file" name="photo" id="photo" class="form-control-file border-0"> -->
												<label for="image"> <input type="file" name="image"
													id="image" style="display: none;" /> <img
													src="images/product/large-size/13.jpg"
													class="rounded-circle" alt="Responsive image"
													height="150rem" width="150rem" />
												</label>
											</div>
											<%-- <div class="col-md-12 mb-20">
												<label>Username</label> <input class="mb-0 border-0"
													type="text" placeholder="Username" disabled>
											</div> --%>
											<div class="col-md-12 mb-20">
												<label>Name</label> <input class="mb-0 border-0" type="text"
													placeholder="Name" value="${fuser.name}">
											</div>
											<div class="col-md-12 mb-20">
												<label>Email</label> <input class="mb-0 border-0"
													type="text" placeholder="Email address"
													value="${fuser.email}">
											</div>
											<div class="col-md-12 mb-20">
												<label>Address</label> <input class="mb-0 border-0"
													type="email" placeholder="Address" value="${fuser.address}">
											</div>
											<div class="col-md-12 mb-20">
												<label>Mobile no</label> <input class="mb-0 border-0"
													type="text" placeholder="Mobile number"
													value="${fuser.phone_no}">
											</div>
										</div>
										<div class="row">
											<div class="col">
												<a href="update-details.html"><button
														class="btn btn-outline-warning w-100">Update
														Details</button></a>
											</div>
											<div class="col">
												<a href="update-password"><button
														class="btn btn-outline-warning w-100">Change
														Password</button></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Account Details Area End Here -->



			<!-- Begin Footer Area -->
			<%@include file="footer.html"%>
			<!-- Footer Area End Here -->
		</div>
		<%@include file="js-link.html"%>
</body>
</html>