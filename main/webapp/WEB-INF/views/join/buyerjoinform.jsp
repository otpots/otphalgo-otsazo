<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>회원가입 : 구매자</title>
</head>
<body>

<div class="container">
	<div class="col-sm-3"></div>
	<div class="col-sm-6" id="center">
		<form id="target" action="buyer" method="post">
			<input type="hidden" id="email_confirm" value="false">
			<input type="hidden" id="id_confirm" value="false">
			<div class="col-sm-12">
				<label for="id">*아이디:</label> 
				<input type="text" class="form-control" id="input_id" name="id">
				<div class="col-sm-12" id="result_idcheck" style="display: none;"></div>
				<input type="button" class="btn btn-default" style="width: 130px;" id="btn_idcheck" value="아이디 중복 확인"> 
			</div>
			<div class="col-sm-12">
				<label for="pw">*비밀번호:</label> 
				<input type="password" class="form-control" id="input_pw" name="pw">
			</div>
			<div class="col-sm-12">
				<label for="pw">*비밀번호 확인:</label> 
				<input type="password" class="form-control" id="input_pwcheck">
				<div class="col-sm-12" id="result_pwcheck" style="display: none;"></div>
			</div>
			<div class="col-sm-12">
				<label for="name">*이름:</label> 
				<input type="text" class="form-control" id="input_name" name="name">
				<div class="col-sm-12" id="result_namecheck" style="display: none;"></div>
			</div>
			<div class="col-sm-12">
				<label for="email">*이메일:</label> 
				<input type="text" class="form-control" id="input_email" name="email">
				<div class="col-sm-12" id="result_emailcheck" style="display: none;"></div>
				<input type="button" class="btn btn-default" style="width: 130px;" id="btn_sendemailcheck" value="이메일 중복 확인"> 
				<input type="button" class="btn btn-default" style="width: 130px;display: none;" id="btn_sendemail" value="인증 번호 받기"> 
			</div>
			<div class="col-sm-12">
				<label for="gender">성별:</label> 
				<div class="radio">
					<label><input type="radio" name="gender" value="1">남</label>
                    <label><input type="radio" name="gender" value="2">여</label>
				</div>
			</div>
            <input type="hidden" name="birth" id="allbirth">
			<div class="col-sm-4" style="padding:none;">
				<label for="birth">생년:</label> 
                <input type="text" class="form-control" id="input_year">
			</div>
            <div class="col-sm-4" style="padding:none;">
				<label for="birth">월:</label> 
                <div class="form-group">
					<select class="form-control" id="input_month">
							<option selected="selected"></option>
						<c:forEach var="month" begin="1" end="12">
							<option>${month }</option>
						</c:forEach>
					</select>
				</div>
			</div>
            <div class="col-sm-4" style="padding:none;">
				<label for="birth">일:</label> 
                <input type="text" class="form-control" id="input_day">
			</div>
			<div class="col-sm-12">
				<button type="submit" class="btn btn-default btn-block" style="margin-top: 20px; padding: 15px;">구매자 회원가입</button>
			</div>
		</form>
		<div class="col-sm-12">
			<div class="alert alert-danger alert-dismissable fade in" style="display: none;" id="alerts">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong></strong>
			</div>
		</div>
		</div>
	<div class="col-sm-3"></div>
</div>

<script type="text/javascript">
var re_id = /^[a-z0-9_]{5,15}$/;
var re_email = 	/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
var re_year = /^[12][0-9]{3}$/;
var day = [31,29,31,30,31,30,31,31,30,31,30,31];

function idcheckAjax(){
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
				$('#result_emailcheck').text("사용할 수 있는 이메일입니다.");
			} else{
				$('#btn_sendemail').hide();
				$('#result_emailcheck').show();
				$('#result_emailcheck').css("color", "red");
				$('#result_emailcheck').text("중복된 이메일입니다.");
			}
		}
	});
}
function essinfo(id){
	$('#result_'+id).show();
	$('#result_'+id).css("color", "red");
	$('#result_'+id).text("필수정보입니다.");
}
function newWindowEmail(){
	window.open("../email/sendemail?id="+$('#input_id').val()+"&email="+$('#input_email').val(), "email_window", "width=400,height=400,top=200,left=800");
}

$(document).ready(function(){
	$('#btn_idcheck').on('click', function(){
		if($('#input_id').val() == ""){
			essinfo("idcheck");
			return;
		}
		if(re_id.test($('#input_id').val()) != true){
			$('#result_idcheck').show();
			$('#result_idcheck').css("color", "red");
			$('#result_idcheck').text("아이디는 5~15자의 영문 소문자, 숫자, 특수문자 (_) 만 가능합니다");
			return;
		}
		idcheckAjax();
	});
	$('#input_pwcheck').on('blur', function(){
		if($('#input_pwcheck').val() == "" || $('#input_pw').val() == ""){
			essinfo("pwcheck");
			return;
		}
		if($('#input_pw').val() != $('#input_pwcheck').val()){
			$('#result_pwcheck').show();
			$('#result_pwcheck').css("color", "red");
			$('#result_pwcheck').text("비밀번호가 일치하지 않습니다.");
		} else{
			$('#result_pwcheck').hide();
		}
	});
	$('#btn_sendemailcheck').on('click', function(){
		if($('#input_email').val() == ""){
			essinfo("emailcheck");
			$('#btn_sendemail').hide();
			return;
		}
		if(re_email.test($('#input_email').val()) != true){
			$('#btn_sendemail').hide();
			$('#result_emailcheck').show();
			$('#result_emailcheck').css("color", "red");
			$('#result_emailcheck').text("잘못된 이메일 형식입니다.");
			return;
		}
		emailcheckAjax();
	});
	$('#btn_sendemail').on('click', function(){
		newWindowEmail();
	});	
	
	$('#target').on('submit', function(e){
		if($('#id_confirm').val() == "false"){
			$('#alerts').show();
			$('strong').html("아이디 중복확인 하세요.");
			return false;
		} else if($('#input_pw').val() == "" || $('#input_pwcheck').val() == ""){
			$('#alerts').show();
			$('strong').html("비밀번호를 입력하세요.");
			return false;
		} else if($('#input_name').val() == ""){
			$('#alerts').show();
			$('strong').html("이름을 입력하세요.");
			return false;
		} else if($('#email_confirm').val() == "false"){
			$('#alerts').show();
			$('strong').html("이메일 인증 하세요.");
			return false;
		} else if($('#input_year').val() != "" || $('#input_month').val() != "" || $('#input_day').val() != "") {
			if($('#input_year').val() == "" || $('#input_month').val() == "" || $('#input_day').val() == "" ||
				re_year.test($('#input_year').val()) != true || parseInt($('#input_day').val()) > day[$('#input_month').val()-1]){
				$('#alerts').show();
				$('strong').html("정상적인 생년월일을 입력하세요.");
				return false;
			}
			$('#allbirth').val($('#input_year').val()+"-"+$('#input_month').val()+"-"+$('#input_day').val());
		} 
	});
	
});

</script>
</body>
</html>