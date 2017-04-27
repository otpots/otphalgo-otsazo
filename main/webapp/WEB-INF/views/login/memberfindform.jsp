<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/common/header.jsp"%>

<div class="container">
	<div class="col-sm-4"></div>
	<div class="col-sm-4" id="center">
		<div class="col-sm-12">
			<label for="email">이메일 입력: </label> 
			<input type="text" class="form-control" id="input_email" name="email">
			<div class="col-sm-12" id="result_emailcheck" style="display: none;"></div>
			<input type="button" class="btn btn-default btn-block" id="btn_checkemail" value="가입된 이메일 확인"> 
			<input type="button" class="btn btn-default btn-block" style="display: none;" id="btn_sendemail" value="이메일로 회원 정보 받기"> 
		</div>      
	</div>
	<div class="col-sm-4"></div>
</div>

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
	window.open("sendfind?email="+$('#input_email').val(), "email_window", "width=400,height=400,top=200,left=800");
}

$(document).ready(function(){
	$('#btn_checkemail').on('click', function(){
		emailcheckAjax();
	});
	$('#btn_sendemail').on('click', function(){
		newWindowEmail()
	});	
	
});
</script>

<%@include file="/WEB-INF/views/common/footer.jsp"%>