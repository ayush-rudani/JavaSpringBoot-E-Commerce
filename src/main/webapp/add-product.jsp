<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
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
						<li class="active">Login Register</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Li's Breadcrumb Area End Here -->


		<!-- Begin Add Product Area -->
		<div class="page-section mb-60">
			<div class="container">
				<div class="row">

					<c:if test="${sessionScope.message != null}">
						<div class="col-md-12 alert ${sessionScope.message.type}"
							role="alert">
							${sessionScope.message.content}
							<%
							session.removeAttribute("message");
							%>
						</div>
					</c:if>


					<div class="col-12">

						<form action="saveProduct" method="POST">
							<div class="login-form">
								<h4 class="login-title">Add a Product</h4>
								<div class="row">
									<div class="col-12 mb-20">
										<label>Product Name</label> <input
											class="form-control-plaintext bg-transparent" type="text"
											placeholder="ProductName" name="name">
									</div>
									<div class="col-12 mb-20">
										<label>Category</label> <select name="category" id="category"
											class="form-control-select bg-transparent" name="categor">
											<option value="-1" selected disabled>Select Category</option>
											<option value="temp">category1</option>
										</select>
									</div>
									<div class="col-md-12 mb-20">
										<label>Description</label>
										<textarea name="description" id="desc" cols="30" rows="10"
											placeholder="Give Product Description here..."
											class="form-control-select bg-transparent"></textarea>
									</div>
									<div class="col-md-6 mb-20">
										<label>Price</label> <input class="mb-0" type="text"
											placeholder="Price in INR" name="price">
									</div>
									<div class="col-md-6 mb-20">
										<label>Quantity</label> <input class="mb-0" type="number"
											placeholder="1" name="quantity">
									</div>
									<div class="col-12">
										<button class="register-button mt-0">Add to Inventory</button>
									</div>
								</div>
							</div>
						</form>


					</div>
				</div>
			</div>
		</div>
		<!-- Add Product Area End Here -->


		<!-- Begin Footer Area -->
		<%@include file="footer.html"%>
		<!-- Footer Area End Here -->
	</div>

	<%@include file="js-link.html"%>
</body>
</html>