<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.ec.models.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<%@include file="css-link.html"%>
</head>
<body>
	<!-- Begin Body Wrapper -->
	<div class="body-wrapper">

		<!-- Begin Header Area -->
		<%@include file="main-header.jsp"%>
		<!-- Header Area End Here -->


		<!-- Begin Li's Breadcrumb Area -->
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

						<form action="saveProduct" method="POST" enctype='multipart/form-data'>
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
											class="form-control-select bg-transparent" name="category">
											<option value="-1" selected disabled>Select Category</option>
											<c:forEach var="i" items="${categories}">
												<option value="${i.id}">${i.category_name}</option>
											</c:forEach>
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
									<div class="col-md-6 mb-20 form-control-file">
										<label>Product Picture</label> 
										<input class="mb-0" type="file" placeholder="Confirm Password" name="file" id="file" accept="image/png, image/jpeg, img/jpg" required>
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