<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Admin Panel</title>
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




		<div class="team-area pt-60 pt-sm-44">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="li-section-title capitalize mb-25">
							<h2>
								<span>Admin Area</span>
							</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<%-- <div class="col-lg-3 col-md-6 col-sm-6">
						<div class="team-member mb-60 mb-sm-30 mb-xs-30">
							<div class="team-thumb">
								<img src="https://picsum.photos/200" alt="Our Team Member">
							</div>
							<div class="team-content text-center">
								<h3>Users</h3>
								<p>$UserCount$</p>
								<button type="button" class="btn btn-outline-warning">List
									User</button>
							</div>
						</div>
					</div> --%>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="team-member mb-60 mb-sm-30 mb-xs-30">
							<div class="team-thumb">
								<img src="https://picsum.photos/200" alt="Our Team Member">
							</div>
							<div class="team-content text-center">
								<h3>Categories</h3>
								<p>$CategoriesCount$</p>
                                <a href="add-category">
								<button type="button" class="btn btn-outline-warning">Add
									Category</button></a>
							</div>
						</div>
					</div>

                    
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="team-member mb-60 mb-sm-30 mb-xs-30">
							<div class="team-thumb">
								<img src="https://picsum.photos/200" alt="Our Team Member">
							</div>
							<div class="team-content text-center">
								<h3>Products</h3>
								<p>$ProductCount$</p>
                                <a href="add-product">
								<button type="button" class="btn btn-outline-warning">Add
									Product</button></a>
							</div>
						</div>
					</div>

					<%-- <div class="col-lg-3 col-md-6 col-sm-6">
						<div class="team-member mb-60 mb-sm-30 mb-xs-30">
							<div class="team-thumb">
								<img src="https://picsum.photos/200" alt="Our Team Member">
							</div>
							<div class="team-content text-center">
								<h3>Orders</h3>
								<p>$Orders$</p>
								<button type="button" class="btn btn-outline-warning">See
									Orders details</button>
							</div>
						</div>
					</div> --%>

				</div>
			</div>
		</div>

































		<!-- Begin Footer Area -->
		<%@include file="footer.html"%>
		<!-- Footer Area End Here -->
		
		
		
		<!-- Begin Quick View | Modal Area -->
		<div class="modal fade modal-wrapper" id="exampleModalCenter">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-body">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<div class="modal-inner-area row">
							<div class="col-lg-5 col-md-6 col-sm-6">
								<!-- Product Details Left -->
								<div class="product-details-left">
									<div class="product-details-images slider-navigation-1">
										<div class="lg-image">
											<img src="images/product/large-size/1.jpg"
												alt="product image">
										</div>
										<div class="lg-image">
											<img src="images/product/large-size/2.jpg"
												alt="product image">
										</div>
										<div class="lg-image">
											<img src="images/product/large-size/3.jpg"
												alt="product image">
										</div>
										<div class="lg-image">
											<img src="images/product/large-size/4.jpg"
												alt="product image">
										</div>
										<div class="lg-image">
											<img src="images/product/large-size/5.jpg"
												alt="product image">
										</div>
										<div class="lg-image">
											<img src="images/product/large-size/6.jpg"
												alt="product image">
										</div>
									</div>
									<div class="product-details-thumbs slider-thumbs-1">
										<div class="sm-image">
											<img src="images/product/small-size/1.jpg"
												alt="product image thumb">
										</div>
										<div class="sm-image">
											<img src="images/product/small-size/2.jpg"
												alt="product image thumb">
										</div>
										<div class="sm-image">
											<img src="images/product/small-size/3.jpg"
												alt="product image thumb">
										</div>
										<div class="sm-image">
											<img src="images/product/small-size/4.jpg"
												alt="product image thumb">
										</div>
										<div class="sm-image">
											<img src="images/product/small-size/5.jpg"
												alt="product image thumb">
										</div>
										<div class="sm-image">
											<img src="images/product/small-size/6.jpg"
												alt="product image thumb">
										</div>
									</div>
								</div>
								<!--// Product Details Left -->
							</div>

							<div class="col-lg-7 col-md-6 col-sm-6">
								<div class="product-details-view-content pt-60">
									<div class="product-info">
										<h2>Today is a good day Framed poster</h2>
										<span class="product-details-ref">Reference: demo_15</span>
										<div class="rating-box pt-20">
											<ul class="rating rating-with-review-item">
												<li><i class="fa fa-star-o"></i></li>
												<li><i class="fa fa-star-o"></i></li>
												<li><i class="fa fa-star-o"></i></li>
												<li class="no-star"><i class="fa fa-star-o"></i></li>
												<li class="no-star"><i class="fa fa-star-o"></i></li>
												<li class="review-item"><a href="#">Read Review</a></li>
												<li class="review-item"><a href="#">Write Review</a></li>
											</ul>
										</div>
										<div class="price-box pt-20">
											<span class="new-price new-price-2">$57.98</span>
										</div>
										<div class="product-desc">
											<p>
												<span>100% cotton double printed dress. Black and
													white striped top and orange high waisted skater skirt
													bottom. Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. quibusdam corporis, earum facilis et nostrum dolorum
													accusamus similique eveniet quia pariatur. </span>
											</p>
										</div>
										<div class="product-variants">
											<div class="produt-variants-size">
												<label>Dimension</label> <select class="nice-select">
													<option value="1" title="S" selected="selected">40x60cm</option>
													<option value="2" title="M">60x90cm</option>
													<option value="3" title="L">80x120cm</option>
												</select>
											</div>
										</div>
										<div class="single-add-to-cart">
											<form action="#" class="cart-quantity">
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
												<button class="add-to-cart" type="submit">Add to
													cart</button>
											</form>
										</div>
										<div class="product-additional-info pt-25">
											<a class="wishlist-btn" href="wishlist.html"><i
												class="fa fa-heart-o"></i>Add to wishlist</a>
											<div class="product-social-sharing pt-25">
												<ul>
													<li class="facebook"><a href="#"><i
															class="fa fa-facebook"></i>Facebook</a></li>
													<li class="twitter"><a href="#"><i
															class="fa fa-twitter"></i>Twitter</a></li>
													<li class="google-plus"><a href="#"><i
															class="fa fa-google-plus"></i>Google +</a></li>
													<li class="instagram"><a href="#"><i
															class="fa fa-instagram"></i>Instagram</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Quick View | Modal Area End Here -->
	</div>
	<!-- Body Wrapper End Here -->
	<%@include file="js-link.html"%>
</body>

<!-- index30:23-->

</html>