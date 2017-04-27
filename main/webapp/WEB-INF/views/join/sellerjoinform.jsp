<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/common/header.jsp"%>

<div class="container">
	<div class="col-sm-3"></div>
	<div class="col-sm-6" id="center">
		<form id="target" action="joinseller" method="post">
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
				<label for="phone">*전화번호:</label> 
				<input type="text" class="form-control" id="input_phone" name="phone">
				<div class="col-sm-12" id="result_phonecheck" style="display: none;"></div>
			</div>
			<div class="col-sm-12">
				<label for="address">*주소:</label> 
				<input type="button" class="btn btn-default btn-block" style="width: 130px;" id="btn_postcode" value="우편번호 찾기"> 
				<input type="text" class="form-control" style="width: 50%;" id="sample6_postcode" placeholder="우편번호"> 
				<input type="text" class="form-control" id="sample6_address" placeholder="주소">
				<input type="text" class="form-control" id="sample6_address2" placeholder="상세주소">
				<input type="hidden" id="input_address" name="address">
				<div class="col-sm-12" id="result_addresscheck" style="display: none;"></div>
			</div>
			<div class="col-sm-12">
				<label for="license">*사업자번호:</label> 
				<input type="text" class="form-control" id="input_license" name="license">
				<div class="col-sm-12" id="result_licensecheck" style="display: none;"></div>
			</div>
			<div class="col-sm-12">
				<label for="account">*계좌번호:</label> 
				<input type="text" class="form-control" id="input_account" name="account">
				<div class="col-sm-12" id="result_accountcheck" style="display: none;"></div>
			</div>
			<div class="col-sm-12">
				<button type="submit" class="btn btn-default btn-block" style="margin-top: 20px; padding: 15px;">판매자 회원가입</button>
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

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
var re_id = /^[a-z0-9_]{5,15}$/;
var re_email = 	/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
var re_license = /^[0-9]{10,15}$/;

function sample6_execDaumPostcode() {
	new daum.Postcode({
		oncomplete : function(data) {
		// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

		// 각 주소의 노출 규칙에 따라 주소를 조합한다.
		// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		var fullAddr = ''; // 최종 주소 변수
		var extraAddr = ''; // 조합형 주소 변수

		// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
			fullAddr = data.roadAddress;

		} else { // 사용자가 지번 주소를 선택했을 경우(J)
			fullAddr = data.jibunAddress;
		}

		// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
		if (data.userSelectedType === 'R') {
			//법정동명이 있을 경우 추가한다.
			if (data.bname !== '') {
				extraAddr += data.bname;
			}
			// 건물명이 있을 경우 추가한다.
			if (data.buildingName !== '') {
				extraAddr += (extraAddr !== '' ? ', '+ data.buildingName : data.buildingName);
			}
			// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
			fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
		}

		// 우편번호와 주소 정보를 해당 필드에 넣는다.
		document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
		document.getElementById('sample6_address').value = fullAddr;

		// 커서를 상세주소 필드로 이동한다.
		document.getElementById('sample6_address2').focus();
		}
	}).open();
}
function idcheckAjax(){
	$.ajax({
		url : 'check', 
		type : 'POST', 
		data : {'id':$('#input_id').val()}, 
		dataType : 'text',
		success : function(result){
			console.log(result);
			if(result != "true"){
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
			if(result != "true"){
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
	window.open("sendemail?id="+$('#input_id').val()+"&email="+$('#input_email').val(), "email_window", "width=400,height=400,top=200,left=800");
}

$(document).ready(function() {
	$('#btn_postcode').on('click', function() {
		sample6_execDaumPostcode();
	});
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
		} else if($('#input_phone').val() == ""){
			$('#alerts').show();
			$('strong').html("전화번호를 입력하세요.");
			return false;
		} else if($('#sample6_postcode').val() == "" || $('#sample6_address').val() == "" || $('#sample6_address2').val() == ""){
			$('#alerts').show();
			$('strong').html("주소를 입력하세요.");
			return false;
		} else if($('#input_license').val() == ""){
			$('#alerts').show();
			$('strong').html("사업자번호를 입력하세요.");
			return false;
		} else if($('#input_account').val() == ""){
			$('#alerts').show();
			$('strong').html("계좌번호를 입력하세요.");
			return false;
		} else{
			$('#input_address').val($('#sample6_postcode').val()+":"+$('#sample6_address').val()+" "+$('#sample6_address2').val());
		}
	});

});
</script>

<%@include file="/WEB-INF/views/common/footer.jsp"%>