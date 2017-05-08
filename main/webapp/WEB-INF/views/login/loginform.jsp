<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/header.jsp"%>

<section id="do_action">
<div class="container">
	<div class="breadcrumbs">
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li class="active">로그인</li>
		</ol>
	</div>
<section id="form">
<div class="row">

	<div class="col-sm-4"></div>
	<div class="col-sm-4" id="center">
		<form action="#" method="post">
			<div class="col-sm-12">
			<input type="text" class="form-control" id="input_id" name="id" placeholder="아이디"></div>
			
			<div class="col-sm-12">
			<input type="password" class="form-control" id="input_pw" name="pw" placeholder="비밀번호"></div>
			
	        <div class="col-sm-12">
	        	<div class="alert alert-danger" style="margin-top: 20px; display:none;" id="result_login">
					<strong></strong></div></div>
	        
			<div class="col-sm-12" style="margin-top: 20px;">
				<a href="javascript:loginCheckAjax()" class="btn btn-default btn-block" role="button">로그인</a>
				<a href="join" class="btn btn-default btn-block" role="button">회원가입</a>
			</div>
		</form>
		
        <div class="clo-sm-12" align="right">
        	<a href="find" class="btn btn-default btn-link" role="button">아이디/비밀번호를 잊어버리셨나요?</a>
        </div>       
	</div>
	<div class="col-sm-4"></div>

</div>
</section>
</div>
</section>

<script type="text/javascript">
var backpage = "/controller<%=(String)session.getAttribute("backpage")%>"
function loginCheckAjax(){
 	$.ajax({
		url : 'logincheck', 
 		type : 'POST', 
 		data : {'id':$('#input_id').val(), 'pw':$('#input_pw').val()}, 
 		dataType : 'text',
 		success : function(result){
 			console.log(result);
 			if(result != "true"){
 			$('#result_login').show();
 				$('#result_login').css("color", "red");
 				$('strong').html("로그인에 실패하였습니다.<br>아이디 혹은 비밀번호를 확인해주세요.");
 			} else{
 				$(location).attr('href', backpage);
 			}
 		}
 	});
 	
 }
</script>

<%@include file="/WEB-INF/views/common/footer.jsp"%>