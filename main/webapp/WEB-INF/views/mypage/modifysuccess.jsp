<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/header.jsp"%>

<section id="do_action">
<div class="container">
	<div class="breadcrumbs">
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li class="active">회원 정보 수정</li>
		</ol>
	</div>
<section id="form">
<div class="row">

	<div class="col-sm-4"></div>
		<div class="col-sm-4" id="center">
	
		<div class="panel panel-default">
			<div class="panel-heading text-center"><h4>회원 정보가 수정되었습니다.</h4></div>
			<center style="margin-bottom:40px;margin-top:10px;">
				<a href="mypage" class="btn btn-default" role="button">마이페이지</a>
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