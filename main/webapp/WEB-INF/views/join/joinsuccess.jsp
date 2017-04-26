<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/common/header.jsp"%>

<div class="container">
	<div class="col-sm-3"></div>
	<div class="col-sm-6" id="center">
		<div class="panel panel-default">
			<div class="panel-heading" style="text-align: center;"><h3>회원가입에 성공하셨습니다!</h3></div>
			<div class="panel-body" style="text-align: center;">지금 로그인 하시겠습니까?</div>
			<center style="margin-bottom:40px;margin-top:10px;">
               	<button type="button" id="btn_login" class="btn btn-default btn-lg" style="margin:10px;">로그인</button>
            	<button type="button" id="btn_home" class="btn btn-default btn-lg" style="margin:10px;">홈으로</button>
             </center>
		</div>
	</div>
	<div class="col-sm-3"></div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	$('#btn_login').on('click', function(){
		$(location).attr('href', 'userlogin');
	});
	$('#btn_home').on('click', function(){
		$(location).attr('href', '/controller');
	});
	
});
</script>

<%@include file="/WEB-INF/views/common/footer.jsp"%>