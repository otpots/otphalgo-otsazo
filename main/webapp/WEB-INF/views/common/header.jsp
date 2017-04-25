<!-- header -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List, com.otphalgo.vo.ProCategoryVO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
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
							<% 
							String url = (String)request.getAttribute("javax.servlet.forward.servlet_path");
							session.setAttribute("backpage", url);
							
							if(session.getAttribute("user") == null){
								out.print("<li><a href='userlogin'><i class='fa fa-lock'></i> 로그인</a></li>");
							} else{
								out.print("<li><a href='userlogout'><i class='fa fa-lock'></i> 로그아웃</a></li>");
							}
							%>
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
						<%
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
						
						%>
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
	
