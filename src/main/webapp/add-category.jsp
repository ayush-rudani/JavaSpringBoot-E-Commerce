<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Category</title>
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

					<div class="col-12">
						<c:if test="${sessionScope.message != null}">
							<div class="mt-20 col-md-12 alert ${sessionScope.message.type}"
								role="alert">
								${sessionScope.message.content}
								<%
								session.removeAttribute("message");
								%>
							</div>
						</c:if>
						<form action="saveCateory" method="POST">
							<div class="login-form">
								<h4 class="login-title">Add a Category</h4>
								<div class="row">
									<div class="col-12 mb-20">
										<label>Category Name</label> <input
											class="form-control-plaintext bg-transparent" type="text"
											placeholder="CategoryName" name="category_name">
									</div>
									<div class="col-md-12 mb-20">
										<label>Category Description</label>
										<textarea name="category_desc" cols="30" rows="10"
											placeholder="Give Product Description here..."
											class="form-control-select bg-transparent"></textarea>
									</div>
									<div class="col-12">
										<button class="register-button mt-0">Add Category</button>
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