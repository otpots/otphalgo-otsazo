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
<title>회원가입</title>
</head>
<body>

<div class="container">
	<div class="col-sm-4"></div>
	<div class="col-sm-4" id="center">
    	<button type="button" class="btn btn-default btn-block" id="buyer_join" style="padding: 15px; margin-top: 10px;">구매자 회원가입</button>
        <button type="button" class="btn btn-default btn-block" id="seller_join" style="padding: 15px; margin-top: 10px;">판매자 회원가입</button>
	</div>
	<div class="col-sm-4"></div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	$('#buyer_join').on('click', function(){
		$(location).attr('href', 'join/buyer')
	});
	$('#seller_join').on('click', function(){
		$(location).attr('href', 'join/seller')
	});
	
});
</script>
</body>
</html>