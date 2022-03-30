<%@page import="org.springframework.http.HttpRequest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.ec.models.*"%>
<!doctype html>
<html class="no-js" lang="zxx">

<!-- shopping-cart31:32-->
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Purchase History</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
						<li class="active">Purchase History</li>
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
						<!-- if user.role == ADMIN -->
						<div class="row mb-sm-5">
							<div class="col-md-5 mr-auto">
								<div class="cart-page-total">
									<c:if test="${fuser.user_type == 'ADMIN' }">
										<h2>User Details (If user.role == ADMIN)</h2>
										<ul>
											<li>Username</li>
											<li>E-Mail Address</li>
										</ul>
									</c:if>
								</div>
							</div>
						</div>
						<!-- endif -->
						<form action="#">
							<div class="table-content table-responsive">
								<table class="table">
									<thead>
										<tr>
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
											<th class="li-product-stock-status">Purchase Date&Time
												<button class="border-0 bg-transparent text-black">
													<i class="fa fa-sort"></i>
												</button>
											</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="i" items="${purchases}">
											<tr>
												<td class="li-product-thumbnail"><a href="#"><img
														src="<%= request.getContextPath() %>/uploads/products/${i.product.image}"
														alt="Li's Product Image" width="60" height="60"></a></td>
												<td class="li-product-name"><a href="#">${i.product.category.category_name}</a></td>
												<td class="li-product-name"><a href="#">${i.product.name }</a>
													<div class="text-justify p-md-3">
														<ul>
															<li>${i.product.description }</li>
														</ul>
													</div></td>
												<td class="li-product-price"><span class="amount">$
														${i.price }</span></td>
												<td class="product-subtotal"><span class="amount">${i.date }</span><br>
													<span class="amount">${i.time }</span></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="row">
								<div class="col-12">
									<div class="coupon-all">
										<div class="coupon">
											<input id="coupon_code" class="input-text font-weight-bold"
												name="coupon_code" value="" placeholder="${purchaseCount}"
												type="text" disabled> <input class="button"
												name="apply_coupon" value="Purchases" type="button">
										</div>
										<div class="coupon2">
											<a href="index"><input class="button" name="apply_coupon"
												value="Home" type="button"></a>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-5 ml-auto">
									<div class="cart-page-total">
										<h2>Purchase totals</h2>
										<ul>
											<li>Total <span>$ ${purchaseCost }</span></li>
										</ul>
										<a href="#">Refresh</a>
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

<!-- shopping-cart31:32-->
</html>
