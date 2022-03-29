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
<title>Shopping Cart</title>
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
						<li class="active">Shopping Cart</li>
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
						<form action="#">
							<div class="table-content table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th class="li-product-remove">remove</th>
											<th class="li-product-thumbnail">images</th>
											<th class="cart-product-name">Product</th>
											<th class="li-product-subtotal">Price</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="i" items="${cartList}">
											<tr>
												<td class="li-product-remove"><a
													href="/cart/remove/${i.id}"><i class="fa fa-times"></i></a></td>
												<td class="li-product-thumbnail"><a href="#"><img
														src="<%= request.getContextPath() %>/uploads/products/${i.product.image}"
														alt="Li's Product Image" width="60" height="60"></a></td>
												<td class="li-product-subtotal"><a href="#">${i.product.name }</a>
													<br>
													<div class="li-product-name">
														${i.product.description}</div></td>
												<td class="product-subtotal"><span class="amount">$
														${i.product.price}</span></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="row">
								<div class="col-12">
									<div class="coupon-all">
										<div class="coupon">
											<input id="coupon_code" class="input-text" name="coupon_code"
												value="" placeholder="Coupon code" type="text"> <input
												class="button" name="apply_coupon" value="Apply coupon"
												type="submit">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-5 ml-auto">
									<div class="cart-page-total">
										<h2>Cart totals</h2>
										<ul>
											<li>Total <span>$ ${cost}</span></li>
										</ul>
										<a href="checkout">Proceed to checkout</a>
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
