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
<title>아이디/패스워드 찾기</title>
</head>
<body>

<div class="container">
	<div class="col-sm-4"></div>
	<div class="col-sm-4" id="center">
    <center>
	<div class="panel panel-default">
		<div class="panel-heading">메일을 확인해주세요!</div>
		<div class="panel-body">
			
			<button type="button" class="btn btn-default" id="window_close">닫기</button>

		</div>
    </div>
	</center>
	</div>
	<div class="col-sm-4"></div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	$('#window_close').on('click', function(){
		opener.location.href="/controller";
		self.close();
	});
});
</script>

</body>
</html>