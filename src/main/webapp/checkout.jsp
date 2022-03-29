<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.ec.models.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Checkout</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="css-link.html"%>
</head>

<body>
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
						<li class="active">Checkout</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Li's Breadcrumb Area End Here -->




		<!--Checkout Area Strat-->
		<div class="checkout-area pt-60 pb-30">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-12">
						<form action="/do-checkout" method="post">
							<div class="checkbox-form">
								<h3>Billing Details</h3>

								<div class="different-address">
									<div class="ship-different-title">
										<h3>
											<label>Default Shipping Address is set to your
												account's available address...</label>
										</h3>
									</div>
								</div>

								<div class="different-address">
									<div class="ship-different-title">
										<h3>
											<label>Ship to a different address?</label> <input
												id="ship-box" type="checkbox" name="ship-box" value="1">
										</h3>
									</div>
									<div id="ship-box-info" class="row">
										<div class="col-md-12">
											<div class="checkout-form-list">
												<label>Address <span class="required">*</span></label>
												<textarea placeholder="Shipping address goes here..."
													class="form-control" name="address" id="address"></textarea>
											</div>
										</div>
									</div>
									<div class="order-notes">
										<div class="checkout-form-list">
											<label>Order Notes</label>
											<textarea id="checkout-mess" cols="30" rows="10"
												placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
										</div>
									</div>
								</div>
							</div>
					</div>
					<div class="col-lg-6 col-12">
						<div class="your-order">
							<h3>Your order</h3>
							<div class="your-order-table table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th class="cart-product-name">Product</th>
											<th class="cart-product-total">Total</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="i" items="${checkOutList}">
											<tr class="cart_item">
												<td class="cart-product-name">${i.product.name}
												<td class="cart-product-total"><span class="amount">$
														${i.product.price}</span></td>
											</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr class="order-total">
											<th>Order Total</th>
											<td><strong><span class="amount">$
														${checkOutCost}</span></strong></td>
										</tr>
									</tfoot>
								</table>
							</div>
							<div class="payment-method">
								<div class="payment-accordion">
									<div id="accordion">
										<div class="card">
											<div class="card-header" id="#payment-1">
												<h5 class="panel-title">
													<a class="" data-toggle="collapse"
														data-target="#collapseOne" aria-expanded="true"
														aria-controls="collapseOne"> Direct Bank Transfer. </a>
												</h5>
											</div>
											<div id="collapseOne" class="collapse show"
												data-parent="#accordion">
												<div class="card-body">
													<p>Make your payment directly into our bank account.
														Please use your Order ID as the payment reference. Your
														order won’t be shipped until the funds have cleared in
														our account.</p>
												</div>
											</div>
										</div>
										<div class="card">
											<div class="card-header" id="#payment-2">
												<h5 class="panel-title">
													<a class="collapsed" data-toggle="collapse"
														data-target="#collapseTwo" aria-expanded="false"
														aria-controls="collapseTwo"> Cheque Payment </a>
												</h5>
											</div>
											<div id="collapseTwo" class="collapse"
												data-parent="#accordion">
												<div class="card-body">
													<p>Make your payment directly into our bank account.
														Please use your Order ID as the payment reference. Your
														order won’t be shipped until the funds have cleared in
														our account.</p>
												</div>
											</div>
										</div>
										<div class="card">
											<div class="card-header" id="#payment-3">
												<h5 class="panel-title">
													<a class="collapsed" data-toggle="collapse"
														data-target="#collapseThree" aria-expanded="false"
														aria-controls="collapseThree"> PayPal </a>
												</h5>
											</div>
											<div id="collapseThree" class="collapse"
												data-parent="#accordion">
												<div class="card-body">
													<p>Make your payment directly into our bank account.
														Please use your Order ID as the payment reference. Your
														order won’t be shipped until the funds have cleared in
														our account.</p>
												</div>
											</div>
										</div>
									</div>
									<div class="order-button-payment">
										<input value="Place order" type="submit">
									</div>
								</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--Checkout Area End-->



		<!-- Begin Footer Area -->
		<%@include file="footer.html"%>
		<!-- Footer Area End Here -->
	</div>
	<!-- Body Wrapper End Here -->
	<%@include file="js-link.html"%>
</body>

<!-- checkout31:27-->

</html>