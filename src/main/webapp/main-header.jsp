<header>
	<!-- Begin Header Top Area -->
	<div class="header-top">
		<div class="container">
			<div class="row">
				<!-- Begin Header Top Left Area -->
				<div class="col-lg-3 col-md-4">
					<div class="header-top-left">
						<ul class="phone-wrap">
							<li><span>Telephone Enquiry:</span><a href="#">(+91)
									98982 59898</a></li>
						</ul>
					</div>
				</div>
				<!-- Header Top Left Area End Here -->
				<!-- Begin Header Top Right Area -->
				<div class="col-lg-9 col-md-8">
					<div class="header-top-right">
						<ul class="ht-menu">

							<!-- Begin Currency Area -->
							<li><span class="currency-selector-wrapper">Currency
									:</span>
								<div class="ht-currency-trigger">
									<span>INR &#8377;</span>
								</div></li>
							<!-- Currency Area End Here -->
							<!-- Begin Language Area -->
							<li><span class="language-selector-wrapper">Language
									:</span>
								<div class="ht-language-trigger">
									<span>English</span>
								</div></li>
							<!-- Language Area End Here -->
						</ul>
					</div>
				</div>
				<!-- Header Top Right Area End Here -->
			</div>
		</div>
	</div>
	<!-- Header Top Area End Here -->
	<!-- Begin Header Middle Area -->
	<div class="header-middle pl-sm-0 pr-sm-0 pl-xs-0 pr-xs-0">
		<div class="container">
			<div class="row">
				<!-- Begin Header Logo Area -->
				<div class="col-lg-3">
					<div class="logo pb-sm-30 pb-xs-30">
						<a href="index"> <img src="images/menu/logo/1.jpg" alt="">
						</a>
					</div>
				</div>
				<!-- Header Logo Area End Here -->
				<!-- Begin Header Middle Right Area -->
				<div class="col-lg-9 pl-0 ml-sm-15 ml-xs-15">
					<!-- Begin Header Middle Searchbox Area -->
					<form action="#" class="hm-searchbox">
						<select class="nice-select select-search-category">
							<option value="0">All</option>
							<option value="1">Gaming</option>
							<option value="2">Art & Design</option>
							<option value="3">Augmented Reality</option>
							<option value="4">Social Media</option>
							<option value="5">Image/Video Editing</option>
							<option value="6">Entertainment</option>
							<option value="7">Education</option>
							<option value="8">Programming</option>
							<option value="9">Books & Comics</option>
							<option value="10">Finance</option>
						</select> <input type="text" placeholder="Enter your search key ...">
						<button class="li-btn" type="submit">
							<i class="fa fa-search"></i>
						</button>
					</form>
					<!-- Header Middle Searchbox Area End Here -->
					<!-- Begin Header Middle Right Area -->
					<div class="header-middle-right">
						<ul class="hm-menu">
							<!-- Begin Header Middle Wishlist Area -->
							<li class="hm-wishlist"><a href="account-details"> <i
									class="fa fa-user-circle-o"></i>
							</a></li>

							<li class="hm-wishlist"><a href="logout"> <i
									class="fa fa-sign-out"></i>
							</a></li>
							<!-- Header Middle Wishlist Area End Here -->
							<!-- Begin Header Mini Cart Area -->
							<li class="hm-minicart">
								<div class="hm-minicart-trigger">
									<span class="item-icon"></span> <span class="item-text">${cartTotal}
										<span class="cart-item-count">${cartItems}</span>
									</span>
								</div> <span></span>
								<div class="minicart">
									<ul class="minicart-product-list">
										<c:if test="${logIn==1}">
											<c:forEach var="cartItem" items="cartList" varStatus="loop">
												<c:if test="${loop.index <= 1}">

													<li><a href="product" class="minicart-product-image">
															<img
															src="<%= request.getContextPath() %>/uploads/products/${cartItem.product.image}"
															alt="cart products">
													</a>
														<div class="minicart-product-details">
															<h6>
																<a href="product">${cartItem.product.name}</a>
															</h6>
															<span>${cartItem.product.price}</span>
														</div>
														<button class="close" title="Remove">
															<i class="fa fa-close"></i>
														</button></li>
												</c:if>
											</c:forEach>
										</c:if>

										 <li><a href="product" class="minicart-product-image">

										<li><a href="product" class="minicart-product-image">

												<img
												src="<%= request.getContextPath() %>/uploads/products/${cartItem2.product.image}"
												alt="cart products">
										</a>
											<div class="minicart-product-details">
												<h6>
													<a href="product">${cartItem2.product.name}</a>
												</h6>
												<span>${cartItem2.product.name}</span>
											</div>
											<button class="close" title="Remove">
												<i class="fa fa-close"></i>

											</button></li> 

											</button></li>

									</ul>
									<p class="minicart-total">
										SUBTOTAL: <span>${cartTotal}</span>
									</p>
									<div class="minicart-button">
										<a href="cart"
											class="li-button li-button-fullwidth li-button-dark"> <span>View
												Full Cart</span>
										</a> <a href="checkout" class="li-button li-button-fullwidth">
											<span>Checkout</span>
										</a>
										--%>
									</div>
								</div>
							</li>
							<!-- Header Mini Cart Area End Here -->
						</ul>
					</div>
					<!-- Header Middle Right Area End Here -->
				</div>
				<!-- Header Middle Right Area End Here -->
			</div>
		</div>
	</div>
	<!-- Header Middle Area End Here -->
	<!-- Begin Header Bottom Area -->
	<div class="header-bottom header-sticky d-none d-lg-block d-xl-block">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- Begin Header Bottom Menu Area -->
					<div class="hb-menu">
						<nav>
							<ul>
								<li class="megamenu-holder"><a href="#">Welcome,
										${fuser.name}</a>
									<ul class="megamenu hb-megamenu">
										<li><a href="#">Account</a>
											<ul>
												<li><a href="account-details">My Account</a></li>
												<li><a href="purchase-history">Purchase History</a></li>
												<li><a href="logout">Log Out</a></li>
											</ul></li>
											<c:if test="${fuser.user_type == 'ADMIN' }">
										<li><a href="#">Admin Panel</a>
											<ul>
												<li><a href="manage-customer">Manage Customers</a></li>
												<li><a href="add-product">Add a Product</a></li>
												<li><a href="inventory">View Inventory</a></li>
												<li><a href="download-inventory">Download Inventory</a></li>
											</ul></li>
											</c:if>
									</ul></li>
								<li class="dropdown-holder"><a href="index">Home</a>
									<ul class="hb-dropdown">
										<li><a href="#new-arrival">Latest Ones</a></li>
										<li><a href="#top-selling">Top Selling</a></li>
										<li><a href="#sale">On Sale</a></li>
										<li><a href="#upcoming">Upcoming</a></li>
									</ul></li>
								<li class="megamenu-holder"><a href="#">Categories</a>
									<ul class="megamenu hb-megamenu">
										<li><a href="#gaming">Gaming</a>
											<ul>
												<li><a href="">Action</a></li>
												<li><a href="">Arcade</a></li>
												<li><a href="">Board</a></li>
												<li><a href="">Casino</a></li>
												<li><a href="">Sports</a></li>
											</ul></li>
										<li><a href="#apps">Softwares</a>
											<ul>
												<li><a href="">Photography</a></li>
												<li><a href="">Social</a></li>
												<li><a href="">Tools</a></li>
												<li><a href="">Productivity</a></li>
												<li><a href="">Shopping</a></li>
											</ul></li>
									</ul></li>
								<li><a href="about-us.html">About Us</a></li>
								<li><a href="#footer">Contact</a></li>
							</ul>
						</nav>
					</div>
					<!-- Header Bottom Menu Area End Here -->
				</div>
			</div>
		</div>
	</div>
	<!-- Header Bottom Area End Here -->
	<!-- Begin Mobile Menu Area -->
	<div class="mobile-menu-area d-lg-none d-xl-none col-12">
		<div class="container">
			<div class="row">
				<div class="mobile-menu"></div>
			</div>
		</div>
	</div>
	<!-- Mobile Menu Area End Here -->
</header>