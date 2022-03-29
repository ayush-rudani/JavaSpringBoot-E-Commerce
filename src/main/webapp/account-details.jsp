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
						<li><a href="index">Home</a></li>
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

							<c:if test="${fuser.user_type == 'USER'}">
								<h1 class="text-center mb-0">Hello ${fuser.name}</h1>
							</c:if>

							<c:if test="${fuser.user_type == 'ADMIN'}">
								<h1 class="text-center mb-0">$USERNAME$'s Account Details</h1>
							</c:if>
							<form action="/updateDetails" method="POST">
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
													<label>Name</label> <input class="mb-0 border-0"
														type="text" placeholder="Name" name="name"
														value="${fuser.name}">
												</div>
												<div class="col-md-12 mb-20">
													<label>Email</label> <input class="mb-0 border-0"
														type="text" placeholder="Email address" name="email"
														value="${fuser.email}">
												</div>
												<div class="col-md-12 mb-20">
													<label>Address</label> <input class="mb-0 border-0"
														type="email" placeholder="Address" name="address"
														value="${fuser.address}">
												</div>
												<div class="col-md-12 mb-20">
													<label>Mobile no</label> <input class="mb-0 border-0"
														type="text" placeholder="Mobile number" name="phone_no"
														value="${fuser.phone_no}">
												</div>
											</div>
											<c:if test="${fuser.user_type == 'USER'}">
												<div class="row">
													<div class="col">
														<button class="btn btn-outline-warning w-100">Update
															Details</button>
													</div>
													<div class="col">
														<a href="update-password"><button
																class="btn btn-outline-warning w-100">Change
																Password</button></a>
													</div>
											</c:if>
										</div>
									</div>
								</div>
							</form>
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
	</div>
	<%@include file="js-link.html"%>
</body>
</html>