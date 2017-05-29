<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="/WEB-INF/views/common/header.jsp"%>

<section id="do_action">
<div class="container">
	<div class="breadcrumbs">
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li class="active">회원 정보 수정</li>
		</ol>
	</div>
<div class="row">
    <div class="col-sm-2">
      <div class="btn-group-vertical btn-block">
      	<a href="#" class="btn btn-default" role="button">#</a>
      	<a href="#" class="btn btn-default" role="button">#</a>
      	<a href="mypageUsermodify" class="btn btn-default" role="button">회원 정보 수정</a>
      	<c:if test="${fn:substring(user.num, 0, 1) eq 's' }">
      		<a href="writepronboard" class="btn btn-default" role="button">상품 등록</a>
      	</c:if>
      	<c:if test="${fn:substring(user.num, 0, 1) eq 's' }">
      		<a href="listproduct3" class="btn btn-default" role="button">상품 관리</a>
      	</c:if>
      </div>
    </div>
    <div class="col-sm-10 text-center">
      <div class="col-sm-3"></div>
      <div class="col-sm-6" id="center" style="background-color:pink;">

		  
      </div>
      <div class="col-sm-3"></div>
    </div>



</div>
</div>
</section>

<script type="text/javascript">
$(document).ready(function(){
	
});
</script>
<%@include file="/WEB-INF/views/common/footer.jsp"%>