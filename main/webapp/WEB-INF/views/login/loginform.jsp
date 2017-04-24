<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>로그인</title>
</head>
<body>

<div class="container">
	<div class="col-sm-4"></div>
	<div class="col-sm-4" id="center">
		<form action="userlogin" method="post">
		<div class="col-sm-12">
			<label for="id">아이디:</label> 
			<input type="text" class="form-control" id="input_id" name="id">
		</div>
		<div class="col-sm-12">
			<label for="id">비밀번호:</label> 
			<input type="password" class="form-control" id="input_id" name="id">
		</div>
		<div class="col-sm-12">
			<button type="submit" class="btn btn-default btn-block" style="margin-top: 20px; padding: 15px;">로그인</button>
            <button type="button" class="btn btn-block" style="margin-top: 10px; padding: 15px;" id="btn_join">회원가입</button>
		</div>
		</form>
        <div class="clo-sm-12" align="right">
        	<button type="button" class="btn btn-link" id="btn_find" style="margin-top: 10px;">아이디/비밀번호를 잊어버리셨나요?</button>
        </div>
	</div>
	<div class="col-sm-"></div>
</div>

<script type="text/javascript">
$(document).ready(function(){

	$('#btn_join').on('click', function(){
		$(location).attr('href', 'join')
	});	
	$('#btn_find').on('click', function(){
		$(location).attr('href', 'find')
	});
	
});
</script>
</body>
</html>