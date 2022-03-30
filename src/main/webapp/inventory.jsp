<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inventory</title>
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
						<li class="active">Current Inventory</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Li's Breadcrumb Area End Here -->



		<!--Shopping Cart Area Strat-->
		<div class="Shopping-cart-area pt-60 pb-60">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="row mb-sm-5">
							<div class="col-md-5 mr-auto">
								<div class="cart-page-total">
									<h2>Product Details</h2>
								</div>
							</div>
						</div>
						<form action="#">
							<div class="table-content table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th class="li-product-remove">#</th>
											<th class="li-product-thumbnail">Product</th>
											<th class="cart-product-name">Category
												<button class="border-0 bg-transparent">
													<i class="fa fa-sort"></i>
												</button>
											</th>
											<th class="cart-product-name">Description
												<button class="border-0 bg-transparent">
													<i class="fa fa-sort"></i>
												</button>
											</th>
											<th class="li-product-price">Price
												<button class="border-0 bg-transparent">
													<i class="fa fa-sort"></i>
												</button>
											</th>
											<th class="li-product-remove">Remove</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="pro" items="${products}" varStatus="loop">
											<tr>
												<td class="li-product-remove">${loop.index + 1}</td>
												<td class="li-product-thumbnail"><a
													href="/product?pid=${pro.id}"><img
														src="<%= request.getContextPath() %>/uploads/products/${pro.image}" width="60" height="60"></a></td>
												<td class="li-product-name"><a href="#">${pro.category.category_name}</a></td>
												<td class="li-product-name font-weight-bold"><a
													href="/product?pid=${pro.id}">${pro.name}</a>
													<div class="text-center p-md-3">
														<ul>
															<li>${pro.description}</li>
														</ul>
													</div></td>
												<td class="li-product-price"><span class="amount">${pro.price}</span></td>
												<td class="li-product-remove"><a href="product/remove/${pro.id}"><i
														class="fa fa-times"></i></a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							
							<div class="row">
								<div class="col-md-5 ml-auto">
									<div class="cart-page-total">
										<h2>Summary</h2>
										<ul>
											<li>Total Number of Products (Till Now) <span>60,000</span></li>
										</ul>
										<a href="index">Home</a>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!--Shopping Cart Area End-->

		<!-- Begin Footer Area -->
		<%@include file="footer.html"%>

		<!-- Footer Area End Here -->
	</div>
	<!-- Body Wrapper End Here -->
	<%@include file="js-link.html"%>
</body>
</html>