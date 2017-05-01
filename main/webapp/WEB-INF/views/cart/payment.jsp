<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/WEB-INF/views/common/header.jsp"%>

<section id="payment">
	<div class="container">
		<div class="breadcrumbs"><!-- 경로(빵조각) -->
			<ol class="breadcrumb">
				<li><a href="home"></a></li>
				<li class="active">Payment</li>
			</ol>
		</div><!-- 경로(빵조각) -->
		
		<div class="container">
			<div class="col-sm-4" id="center">
				<form action="payment" method="post">
					<div class="col-sm-12">
						<label for="receiver">받는분:</label>
						<input type="text" class="form-control" id="input_receiver" name="receiver">
					</div>
					<div class="col-sm-12">
						<label for="phone">휴대전화</label>
						<input type="text" class="form-control" id="input_phone" name="phone">
					</div>
					<div class="col-sm-12">
						<label for="address">주소</label>
						<input type="button" class="btn btn-default btn-block" style="width: 130px;" id="btn_postcode" value="우편번호 찾기"> 
						<input type="text" class="form-control" style="width: 50%;" id="sample6_postcode" placeholder="우편번호"> 
						<input type="text" class="form-control" id="sample6_address" placeholder="주소">
						<input type="text" class="form-control" id="sample6_address2" placeholder="상세주소">
						<input type="hidden" id="input_address" name="address">
						<div class="col-sm-12" id="result_addresscheck" style="display: none;"></div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script type="text/javascript">
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
	$(document).ready(function() {
		$('#btn_postcode').on('click', function() {
			sample6_execDaumPostcode();
		});
	});
	</script>
</section>

<%@include file="/WEB-INF/views/common/footer.jsp"%>