<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/header.jsp"%>

<section id="do_action">
<div class="container">
	<div class="breadcrumbs">
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li class="active">판매자 회원 정보 수정</li>
		</ol>
	</div>
<div class="row">

	<div class="col-sm-2">
		<div class="btn-group-vertical btn-block">
			<a href="#" class="btn btn-default" role="button">#</a>
			<a href="#" class="btn btn-default" role="button">#</a>
			<a href="mypageUsermodify" class="btn btn-default" role="button">회원 정보 수정</a>
		</div>
	</div>
	
	<div class="col-sm-10 text-center">
      <div class="col-sm-3"></div>
      <div class="col-sm-6" id="center">
      
      <form id="target" action="mypageBuyermod" method="post">		
	
       	<div class="col-sm-8">
			<input type="text" class="form-control" id="input_id" name="id" placeholder="${sessionScope.user.id }" disabled>
		</div>
                
           <div class="col-sm-12">
			<input type="password" class="form-control" id="input_pw" name="pw" placeholder="비밀번호">
		</div>
           <div class="col-sm-12">
			<input type="password" class="form-control" id="input_pwcheck" placeholder="비밀번호 확인">
		</div>
		<div class="col-sm-12" id="result_pwcheck" style="display: none;"></div>
                
           <div class="col-sm-12">
			<input type="text" class="form-control" id="input_name" name="name" placeholder="이름">
		</div>
                
           <input type="hidden" id="email_confirm" value="false"> 
           <div class="col-sm-12">
			<input type="text" class="form-control" id="input_email" name="email" placeholder="${sessionScope.user.email }" disabled>
		</div>
                
           <div class="col-sm-12">
			<input type="text" class="form-control" id="input_phone" name="phone" placeholder="전화번호">
		</div>
	
		<input type="hidden" id="input_address" name="address">
		<div class="col-sm-6">
			<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호">
		</div>	
		<div class="col-sm-6">
			<input type="button" class="btn btn-default btn-block" id="btn_postcode" value="우편번호 찾기"> 
		</div>	
		<div class="col-sm-12">
			<input type="text" class="form-control" id="sample6_address" placeholder="주소">
		</div>
		<div class="col-sm-12">
			<input type="text" class="form-control" id="sample6_address2" placeholder="상세주소">
		</div>
		
		<div class="col-sm-12">
			<input type="text" class="form-control" id="input_license" name="license" placeholder="사업자번호">
		</div>
	                     
	    <div class="col-sm-4">                    	
			<input type="text" class="form-control" id="input_account" name="account" placeholder="은행">
		</div>
	    <div class="col-sm-8">                    	
			<input type="text" class="form-control" id="input_account" name="account" placeholder="계좌번호">
		</div>
                
        <div class="col-sm-12"><h6 style="color: #FE980F;">선택사항</h6></div>
                
        <input type="hidden" id="allbirth" name="birth" style="margin-top: 10px;">
        <div class="col-sm-4">
        	<input type="text" class="form-control" id="input_year" placeholder="년">
        </div>
        <div class="col-sm-4">
        	<select id="input_month" class="form-control">
            	<option selected="selected">월</option>
                <c:forEach var="month" begin="1" end="12">
                	<option>${month }</option>
                </c:forEach>
            </select>
       	</div>
        <div class="col-sm-4">
        	<input type="text" class="form-control" id="input_day" placeholder="일">
        </div>
                
        <input type="hidden" id="input_gender" name="gender" value="0">    
        <div class="col-sm-12" style="margin-bottom:10px;">
			<div class="btn-group btn-group-justified">
				<div class="btn-group">
					<button type="button" id="gender1" class="btn btn-default">남</button>
				</div>
				<div class="btn-group">
					<button type="button" id="gender2" class="btn btn-default">여</button>
				</div>
			</div>
		</div>

		<div class="col-sm-12">
			<button type="submit" class="btn btn-default btn-block" style="margin-top: 20px; padding: 15px;">회원 정보 수정</button>
		</div>
                     
	</form>
           
	<div class="col-sm-12">
		<div class="alert alert-danger alert-dismissable fade in" style="display: none;" id="alerts">
		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
		<strong id="alerts_text"></strong>
	</div>
</div>

		  
      </div>
      <div class="col-sm-3"></div>
    </div>
	
	
	
</div> <!-- row -->
</div> <!-- container -->
</section>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
var re_year = /^[12][0-9]{3}$/;
var day = [31,29,31,30,31,30,31,31,30,31,30,31];

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

$(document).ready(function(){
	// 우편번호 검색 눌렀을때
	$('#btn_postcode').on('click', function() {
		sample6_execDaumPostcode();
	});
	
	// 비번체크 벗어났을때
	$('#input_pwcheck').on('blur', function(){
		if($('#input_pw').val() != $('#input_pwcheck').val()){
			$('#result_pwcheck').show();
			$('#result_pwcheck').css("color", "red");
			$('#result_pwcheck').text("비밀번호가 일치하지 않습니다.");
			$('#input_pwcheck').val("");
			$('#input_pw').val("");
			$('#input_pw').focus();
		} else{
			$('#result_pwcheck').hide();
		}
	});
	
	// 성별 눌렀을때
	$('#gender1').on('click', function(){
		$('#input_gender').val("1");
	})
	$('#gender2').on('click', function(){
		$('#input_gender').val("2");
	})
	
	// 생일 지날때 
	$('#input_day').on('blur', function(){
		$('#allbirth').val($('#input_year').val()+$('#input_month').val()+$('#input_day').val());
	});
	
	$('#target').on('submit', function(e){
		if($('#input_pw').val() == "" || $('#input_pwcheck').val() == ""){
			$('#alerts').show();
			$('#alerts_text').html("비밀번호를 입력하세요.");
			return false;
		} else if($('#sample6_postcode').val() != ""){
			$('#input_address').val($('#sample6_postcode').val()+":|"+$('#sample6_address').val()+" "+$('#sample6_address2').val());
		}
	});
	
});

</script>

<%@include file="/WEB-INF/views/common/footer.jsp"%>