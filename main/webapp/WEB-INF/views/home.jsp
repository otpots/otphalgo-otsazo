<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List, com.otphalgo.vo.ProCategoryVO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Home | Otphalgo, Otsazo</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <style type="text/css">
    	.girl.img-responsive{
    		height: 441px;
    	}
    </style>
</head>
<body>
		<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> 010 2356 3513</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> song3513@gmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="/controller"><img src="images/home/logo.png" alt="" /></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="userlogin"><i class="fa fa-lock"></i> 로그인</a></li>
								<li><a href="join"><i class="fa fa-user"></i> 회원가입</a></li>
								<li><a href="#"><i class="fa fa-star"></i> 마이페이지</a></li>
								<li><a href="cart.html"><i class="fa fa-shopping-cart"></i> 장바구니</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="#" class="active">Category</a></li>
								<li class="dropdown"><a href="#">여성의류<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="#" onclick="location.href='티셔츠'; return false;">티셔츠</a></li>
										<li><a href="#">블라우스·셔츠</a></li>
										<li><a href="#">니트·가디건</a></li>
										<li><a href="#">자켓·점퍼·코트</a></li>
										<li><a href="#">원피스·정장세트</a></li>
										<li><a href="#">진·팬츠·스커트</a></li>
										<li><a href="#">언더웨어·수영복</a></li>
									</ul>	
								</li>
								<li class="dropdown"><a href="#">남성의류<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="#">티셔츠</a></li>
										<li><a href="#">니트·가디건</a></li>
										<li><a href="#">셔츠·남방</a></li>
										<li><a href="#">드레스셔츠·정장</a></li>
										<li><a href="#">자켓·점퍼·코트</a></li>
										<li><a href="#">진·팬츠</a></li>
										<li><a href="#">언더웨어·수영복</a></li>
									</ul>	
								</li>
								<li class="dropdown"><a href="#">캐주얼의류<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="#">티셔츠</a></li>
										<li><a href="#">셔츠·남방</a></li>
										<li><a href="#">니트·가디건</a></li>
										<li><a href="#">진·팬츠·스커트</a></li>
										<li><a href="#">자켓·점퍼·코트</a></li>
									</ul>	
								</li>
								<li class="dropdown"><a href="#">스포츠의류<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="#">티셔츠·맨투맨</a></li>
										<li><a href="#">자켓·점퍼·패딩</a></li>
										<li><a href="#">팬츠</a></li>
										<li><a href="#">트레이닝·요가복</a></li>
										<li><a href="#">골프웨어</a></li>
										<li><a href="#">등산복</a></li>
										<li><a href="#">이너웨어</a></li>
										<li><a href="#">수영복·보드복</a></li>
									</ul>	
								</li>		
								<%-- <%
								List<ProCategoryVO> list = (List<ProCategoryVO>)request.getAttribute("list");
								for(ProCategoryVO vo : list){
									if(vo.getCode() <20){
										out.println("<li class='dropdown'><a href='#'>" + vo.getName() + "<i class='fa fa-angle-down'></i></a>");
										out.println("<ul role='menu' class='sub-menu'>");
										for(ProCategoryVO vo2 : list){
											if(vo2.getCode() > vo.getCode()*100 && vo2.getCode() < (vo.getCode()+1)*100){
												out.println("<li><a href='#'>" + vo2.getName() + "</a></li>");
											}
										}
										out.println("</ul>");
									}
									
								}
								out.println("</li>");
								
								%> --%>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	
	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>O</span>tphalgo<span>O</span>tsazo</h1>
									<h2>보혜 절대 아님</h2>
									<p>"아이구, 이건 망했어<br>(방향을 틀리고)아.. 그게 그렇게 중요해?"</p>
								</div>
								<div class="col-sm-6">
									<img src="images/home/girl1.jpg" class="girl img-responsive" alt="" />
									<img src="images/home/pricing.png"  class="pricing" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>O</span>tphalgo<span>O</span>tsazo</h1>
									<h2>영철이 절대 아님</h2>
									<p>"(조용한 목소리로)앉어"</p>
								</div>
								<div class="col-sm-6">
									<img src="images/home/boy1.jpg" class="girl img-responsive" alt="" />
									<!-- <img src="images/home/pricing.png"  class="pricing" alt="" /> -->
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>O</span>tphalgo<span>O</span>tsazo</h1>
									<h2>Free Ecommerce Template</h2>
									<p>나중에 여기에 추천 </p>
								</div>
								<div class="col-sm-6">
									<img src="images/home/girl3.jpg" class="girl img-responsive" alt="" />
									<img src="images/home/pricing.png" class="pricing" alt="" />
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 padding-right">
				
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Features Items</h2>
						
						<div class="col-sm-3"><!-- 1st pro -->
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/product1.jpg" alt="" />
										<h2>$125</h2>
										<p>첫번째 상품</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>$125</h2>
											<p>첫번째 상품</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
								</div>
							</div>
						</div><!-- 1st pro -->
						
						<div class="col-sm-3"><!-- 2nd pro -->
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/product2.jpg" alt="" />
										<h2>$56</h2>
										<p>두번째 상품</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>$56</h2>
											<p>두번째 상품</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
								</div>
							</div>
						</div><!-- 2nd pro -->
						
						<div class="col-sm-3"><!-- 3rd pro -->
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/product3.jpg" alt="" />
										<h2>$56</h2>
										<p>3번째 옷</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>$56</h2>
											<p>3번째 옷</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
								</div>
							</div>
						</div><!-- 3rd pro -->
						
						<div class="col-sm-3"><!-- 4th pro -->
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/product4.jpg" alt="" />
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
								</div>
							</div>
						</div><!-- 4th pro -->
						
						<div class="col-sm-3"><!-- 5th pro -->
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/product5.jpg" alt="" />
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
									<img src="images/home/new.png" class="new" alt="" />
								</div>
							</div>
						</div><!-- 5th pro -->
						
						<div class="col-sm-3"><!-- 6th pro -->
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/product6.jpg" alt="" />
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
									<img src="images/home/sale.png" class="new" alt="" />
								</div>
							</div>
						</div><!-- 6th pro -->
						
						<div class="col-sm-3"><!-- 7th pro -->
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="images/home/product7.jpg" alt="" />
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="product-overlay">
											<div class="overlay-content">
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>
										</div>
								</div>
							</div>
						</div><!-- 7th pro -->
						
						<div class="col-sm-3"><!-- 8th pro -->
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/product8.jpg" alt="" />
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
								</div>
							</div>
						</div><!-- 8th pro -->
						
					</div><!--features_items-->
				</div>
			</div>
		</div>
	</section>
	
	<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
							<h2><span>O</span>tphalgo<br><span>O</span>tsazo</h2>
							<!-- <p>소비자를 위한 추천,<br>소비자를 위한 오픈마켓</p> -->
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2><a href="#">판매안내</a></h2>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2><a href="#">청소년보호정책</a></h2>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2><a href="#">이용약관</a></h2>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2><a href="#">전자금융거래약관</a></h2>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2><a href="#">개인정보처리방침</a></h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						상담가능시간 : 오전 9시 ~ 오후 6시 (토요일 및 공휴일은 휴무)<br>
						주소 : 서울 서초구 서초대로74길 33 비트빌 3층<br>
						e-Mail : song3513@gmail.com
					</div>
					<div class="col-sm-6">
						사업자등록번호 : 220-81-29726 대표이사 : 조현정<br>
						Tel : 02-3486-3456 Fax : 02-3486-7890<br>
						통신판매업신고 : 서울서초 2003-02577호
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2017 Otphalgo Otsazo Inc. All rights reserved.</p>
					<p class="pull-right">Designed by <span><a>Otphalgo Otsazo</a></span></p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	
	<script type="text/javascript">
	function cartAjax(){
		$.ajax({
			url : 'check', 
			type : 'POST', 
			data : {'id':$('#input_id').val()}, 
			dataType : 'text',
			success : function(result){
				console.log(result);
				if(result == "true"){
					$('#result_idcheck').show();
					$('#result_idcheck').css("color", "green");
					$('#result_idcheck').text("사용할 수 있는 아이디입니다.");
					$('#id_confirm').val("true")
				} else{
					$('#result_idcheck').show();
					$('#result_idcheck').css("color", "red");
					$('#result_idcheck').text("중복된 아이디입니다.");
				}
			}
		});
	}
	</script>
	
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
	
	<script type="text/javascript">
$(document).ready(function(){
	$('.btn.btn-default.add-to-cart').on('click', function(e){
		$(location).attr('href', 'cart')
		e.preventDefault();
	});
});
</script>
</body>
</html>
