<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/WEB-INF/views/common/header.jsp"%>

<section id="slider">
	<!--slider-->
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div id="slider-carousel" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#slider-carousel" data-slide-to="0"
							class="active"></li>
						<li data-target="#slider-carousel" data-slide-to="1"></li>
						<li data-target="#slider-carousel" data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<div class="col-sm-6">
								<h1>
									<span>O</span>tphalgo<span>O</span>tsazo
								</h1>
								<h2>보혜 절대 아님</h2>
								<p>
									"아이구, 이건 망했어<br>(방향을 틀리고)아.. 그게 그렇게 중요해?"
								</p>
							</div>
							<div class="col-sm-6">
								<img src="images/home/girl1.jpg" class="girl img-responsive"
									alt="" /> <img src="images/home/pricing.png" class="pricing"
									alt="" />
							</div>
						</div>
						<div class="item">
							<div class="col-sm-6">
								<h1>
									<span>O</span>tphalgo<span>O</span>tsazo
								</h1>
								<h2>영철이 절대 아님</h2>
								<p>"(조용한 목소리로)앉어"</p>
							</div>
							<div class="col-sm-6">
								<img src="images/home/boy1.jpg" class="girl img-responsive"
									alt="" />
								<!-- <img src="images/home/pricing.png"  class="pricing" alt="" /> -->
							</div>
						</div>

						<div class="item">
							<div class="col-sm-6">
								<h1>
									<span>O</span>tphalgo<span>O</span>tsazo
								</h1>
								<h2>Free Ecommerce Template</h2>
								<p>나중에 여기에 추천</p>
							</div>
							<div class="col-sm-6">
								<img src="images/home/girl3.jpg" class="girl img-responsive"
									alt="" /> <img src="images/home/pricing.png" class="pricing"
									alt="" />
							</div>
						</div>

					</div>

					<a href="#slider-carousel" class="left control-carousel hidden-xs"
						data-slide="prev"> <i class="fa fa-angle-left"></i>
					</a> <a href="#slider-carousel"
						class="right control-carousel hidden-xs" data-slide="next"> <i
						class="fa fa-angle-right"></i>
					</a>
				</div>

			</div>
		</div>
	</div>
</section>
<!--/slider-->

<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 padding-right">

				<div class="features_items">
					<!--features_items-->
					<h2 class="title text-center">Features Items</h2>
					
					<c:forEach var="item" items="${featuresItemsList }">
					<div class="col-sm-3">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="images/test/${item.image }" alt="" />
									<h2>${item.price }원</h2>
									<p>${item.name }</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
								<div class="product-overlay">
									<div class="overlay-content">
										<h2>${item.price }원</h2>
										<p>${item.name }</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
<!-- 
					<div class="col-sm-3">
						1st pro
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="images/home/product1.jpg" alt="" />
									<h2>$125</h2>
									<p>첫번째 상품</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
								<div class="product-overlay">
									<div class="overlay-content">
										<h2>$125</h2>
										<p>첫번째 상품</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					1st pro

					<div class="col-sm-3">
						2nd pro
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="images/home/product2.jpg" alt="" />
									<h2>$56</h2>
									<p>두번째 상품</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
								<div class="product-overlay">
									<div class="overlay-content">
										<h2>$56</h2>
										<p>두번째 상품</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					2nd pro

					<div class="col-sm-3">
						3rd pro
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="images/home/product3.jpg" alt="" />
									<h2>$56</h2>
									<p>3번째 옷</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
								<div class="product-overlay">
									<div class="overlay-content">
										<h2>$56</h2>
										<p>3번째 옷</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					3rd pro

					<div class="col-sm-3">
						4th pro
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="images/home/product4.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
								<div class="product-overlay">
									<div class="overlay-content">
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					4th pro

					<div class="col-sm-3">
						5th pro
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="images/home/product5.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
								<div class="product-overlay">
									<div class="overlay-content">
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
								<img src="images/home/new.png" class="new" alt="" />
							</div>
						</div>
					</div>
					5th pro

					<div class="col-sm-3">
						6th pro
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="images/home/product6.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
								<div class="product-overlay">
									<div class="overlay-content">
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
								<img src="images/home/sale.png" class="new" alt="" />
							</div>
						</div>
					</div>
					6th pro

					<div class="col-sm-3">
						7th pro
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="images/home/product7.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
								<div class="product-overlay">
									<div class="overlay-content">
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					7th pro

					<div class="col-sm-3">
						8th pro
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="images/home/product8.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
								<div class="product-overlay">
									<div class="overlay-content">
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					8th pro
 -->
				</div>
				<!--features_items-->
			</div>
		</div>
	</div>
</section>


<%@include file="/WEB-INF/views/common/footer.jsp"%>