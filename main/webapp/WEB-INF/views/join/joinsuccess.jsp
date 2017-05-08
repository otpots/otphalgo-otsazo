<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/header.jsp"%>

<section id="do_action">
<div class="container">
	<div class="breadcrumbs">
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li class="active">구매자 회원가입</li>
		</ol>
	</div>
<section id="form">
<div class="row">

	<div class="col-sm-4"></div>
		<div class="col-sm-4" id="center">
	
		<div class="panel panel-default">
			<div class="panel-heading text-center"><h3>회원가입에 성공하셨습니다!</h3></div>
			<div class="panel-body text-center">지금 로그인 하시겠습니까?</div>
			<center style="margin-bottom:40px;margin-top:10px;">
				<a href="userlogin" class="btn btn-default" role="button">로그인</a>
				<a href="/controller" class="btn btn-default" role="button">홈으로</a>
            </center>
		</div>
		
	</div>
	<div class="col-sm-4"></div>
	
</div>
</section>
</div>
</section>

<%@include file="/WEB-INF/views/common/footer.jsp"%>