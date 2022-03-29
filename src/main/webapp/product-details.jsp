<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${product.name}</title>
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
						<li class="active">${product.name}</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Li's Breadcrumb Area End Here -->


		<!-- content-wraper start -->
		<div class="content-wraper">
			<div class="container">
				<div class="row single-product-area">
					<div class="col-lg-5 col-md-6">
						<!-- Product Details Left -->
						<div class="product-details-left">
							<div class="product-details-images slider-navigation-1">
								<div class="lg-image">
									<a class="popup-img venobox vbox-item"
										href="<%= request.getContextPath() %>/uploads/products/${product.image}" data-gall="myGallery">
										<img src="<%= request.getContextPath() %>/uploads/products/${product.image}" alt="product image">
										<%-- <img src="${product.image}" alt="product image"> --%>
									</a>
								</div>
							</div>

							<c:if test="${fuser.user_type == 'ADMIN'}">
								<input type="file" name="file" id="file"
									class="btn btn-outline-warning bg-white border-0" role="button">
							</c:if>

						</div>
						<!--// Product Details Left -->
					</div>

					<div class="col-lg-7 col-md-6">
						<div class="product-details-view-content pt-60">
							<div class="product-info">

								<c:if
									test="${fuser.user_type == 'USER' || sessionScope.fuser == null}">
									<h2>${product.name}</h2>
								</c:if>
								<c:if test="${fuser.user_type == 'ADMIN'}">
									<input class="mb-0" type="text" value="${product.name}"
										name="name">
								</c:if>


								<c:if
									test="${fuser.user_type == 'USER' || sessionScope.fuser == null}">
									<span class="product-details-ref">${category.category_name}</span>
								</c:if>
								<c:if test="${fuser.user_type == 'ADMIN'}">
									<input class="mb-0" type="text"
										value="${category.category_name}" name="category">
								</c:if>


								<div class="price-box pt-20">
									<c:if
										test="${fuser.user_type == 'USER' || sessionScope.fuser == null}">
										<span class="new-price new-price-2">&#x20b9;${product.price}</span>
									</c:if>
									<c:if test="${fuser.user_type == 'ADMIN'}">
										<input type="text" value="${product.price}" name="price">
									</c:if>
								</div>

								<div class="product-desc">
									<p>
										<c:if
											test="${fuser.user_type == 'USER' || sessionScope.fuser == null}">
											<span>${product.description}</span>
										</c:if>
										<c:if test="${fuser.user_type == 'ADMIN'}">
											<textarea name="description" cols="30" rows="10">${product.description}</textarea>
										</c:if>
									</p>
								</div>

								<div class="single-add-to-cart">
									<c:if test="${fuser.user_type == 'ADMIN'}">
									<form action="/update-product/${product.id }" class="cart-quantity">
									</c:if>
									<c:if test="${fuser.user_type != 'ADMIN'}">
									<form action="/add-to-cart/${product.id }" class="cart-quantity">
									</c:if>
										<div class="quantity">
											<label>Quantity</label>
											<div class="cart-plus-minus">
												<input class="cart-plus-minus-box" value="1" type="text">
												<div class="dec qtybutton">
													<i class="fa fa-angle-down"></i>
												</div>
												<div class="inc qtybutton">
													<i class="fa fa-angle-up"></i>
												</div>
											</div>
										</div>

										<c:if
											test="${fuser.user_type == 'USER' || sessionScope.fuser == null}">
											<button class="add-to-cart" type="submit" style="margin-left: 25px;">Add to
												cart</button>
										</c:if>

										<c:if test="${fuser.user_type == 'ADMIN'}">
											<button class="add-to-cart" type="submit">Update
												Product</button>
												<a href="remove-product?pid=${product.id}"><button class="add-to-cart bg-danger text-white">Remove Product</button></a>
										</c:if>


									</form>
								</div>

								<div class="block-reassurance">
									<ul style="margin-top: 45px; margin-bottom: 30px">
										<li>
											<div class="reassurance-item">
												<div class="reassurance-icon">
													<i class="fa fa-check-square-o"></i>
												</div>
												<p>Security policy (edit with Customer reassurance
													module)</p>
											</div>
										</li>
										<li>
											<div class="reassurance-item">
												<div class="reassurance-icon">
													<i class="fa fa-truck"></i>
												</div>
												<p>Delivery policy (edit with Customer reassurance
													module)</p>
											</div>
										</li>
										<li>
											<div class="reassurance-item">
												<div class="reassurance-icon">
													<i class="fa fa-exchange"></i>
												</div>
												<p>Return policy (edit with Customer reassurance module)</p>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- content-wraper end -->


		<!-- Begin Footer Area -->
		<%@include file="footer.html"%>
		<!-- Footer Area End Here -->

	</div>
	<!-- Body Wrapper End Here -->
	<%@include file="js-link.html"%>
</body>
</html>