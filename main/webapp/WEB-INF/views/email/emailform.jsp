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
<title>회원가입 : 이메일 인증</title>
</head>
<body>
<div class="container">
<div class="row text-center">

	<div class="panel panel-default">
		<div class="panel-heading">${param.id } 회원님! 인증 번호를 입력하세요.</div>
		<div class="panel-body">

			<form class="form-inline" action="sendemail" method="post">
				<div class="form-group">
				<input type="text" class="form-control" id="input_ranNum" name="inrannum">
				</div>
				<button type="submit" class="btn btn-default">확인</button>
			</form>

		</div>
    </div>

</div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	$(window).unload(function(){
		$("#email_confirm", parent.opener.document).val("false");
		self.close();
	});
});
</script>
</body>
</html>