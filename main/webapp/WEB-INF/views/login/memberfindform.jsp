<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/common/header.jsp"%>

<section id="do_action">
<div class="container">
	<div class="breadcrumbs">
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li class="active">id/pw 찾기</li>
		</ol>
	</div>
<section id="form">
<div class="row">

	<div class="col-sm-4"></div>
	<div class="col-sm-4" id="center">
		<div class="col-sm-12">
			<input type="text" class="form-control" id="input_email" name="email" placeholder="이메일"></div>
		<div class="col-sm-12" id="result_emailcheck" style="display: none;"></div>
		<div class="col-sm-12" style="margin-bottom:10px;">
		<div class="btn-group btn-group-justified">
			<div class="btn-group">
				<a href="javascript:emailcheckAjax()" class="btn btn-default btn-block" role="button">이메일 중복 확인</a>
			</div>
			<div class="btn-group">
				<a href="javascript:newWindowEmail()" class="btn btn-default btn-block" role="button">회원 정보 받기</a>
			</div></div></div>
	</div>
	<div class="col-sm-4"></div>
	
</div>
</section>	
</div>
</section>

<script type="text/javascript">
function emailcheckAjax(){
	$.ajax({
		url : 'check', 
		type : 'POST', 
		data : {'email':$('#input_email').val()}, 
		dataType : 'text',
		success : function(result){
			console.log(result);
			if(result == "true"){
				$('#btn_sendemail').show();
				$('#result_emailcheck').show();
				$('#result_emailcheck').css("color", "green");
				$('#result_emailcheck').html("가입된 회원입니다. <br>메일주소로 회원정보를 확인하세요!");
			} else{
				$('#btn_sendemail').hide();
				$('#result_emailcheck').show();
				$('#result_emailcheck').css("color", "red");
				$('#result_emailcheck').text("가입되지 않은 회원입니다.");
			}
		}
	});
}

function newWindowEmail(){
	window.open("sendfind?email="+$('#input_email').val(), "email_window", "width=400,height=150,top=200,left=800");
}

</script>

<%@include file="/WEB-INF/views/common/footer.jsp"%>