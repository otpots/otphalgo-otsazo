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
		<form id="target" action="join" method="post">
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
					<label><input type="radio" name="gender" value="0">남</label>
                    <label><input type="radio" name="gender" value="1">여</label>
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
           	<div class="col-sm-12" id="result_accountcheck" style="display: none; height: 59px;"></div>
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

</body>
</html>