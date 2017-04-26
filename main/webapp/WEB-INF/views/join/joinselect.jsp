<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/common/header.jsp"%>

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
		$(location).attr('href', 'joinbuyer')
	});
	$('#seller_join').on('click', function(){
		$(location).attr('href', 'joinseller')
	});
	
});
</script>

<%@include file="/WEB-INF/views/common/footer.jsp"%>