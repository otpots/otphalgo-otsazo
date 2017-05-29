<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.otphalgo.vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="/WEB-INF/views/common/header.jsp"%>

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{margin-left : auto; margin-right : auto; border : 1px black solid;}
	td{ border: 1px solid black;}
</style>
</head>
<body>

<c:if test="${fn:substring(user.num, 0, 1) eq 's' }">
    <input id="updatebutton" type=button value="수정">
	<input id="deletebutton" type=button value="삭제">
</c:if>

<table>
<tr>
	<td rowspan=2><img id='image' src='images/product/${pro.thumbnail_image }' width=250 height=200></td>
	<td>${pro.name }</td>
	<td><select>
		<c:forEach items="${polist }" var="povo">
			<option>${povo.color }-${povo.sizes }-${povo.stock }</option>
		</c:forEach>
		</select></td>
</tr>
<tr>
	<td>${proboard.title }</td>
	<td>${pro.price }원</td>
</tr>
<tr>
	<td colspan=3>${proboard.contents }</td>
</tr>
</table>

<div class="col-sm-2"></div> 
<div class="col-sm-8" style="min-width: 390px;">
	<div class="tblwrap">
    <table class="tbl">
    <colgroup>
    	<col style="width:15%">
    	<col style="width:55%">
    	<col style="width:15%">
    	<col style="width:20%">
    </colgroup>
    	<tbody>
    	<th>문의유형</th> <th>문의/답변</th> <th>작성자</th> <th>작성일</th>
        <c:forEach items="${pqlist }" var="proqna">
        <tr>
        <td><c:choose>
			<c:when test="${proqna.type == 1}">상품</c:when>
			<c:when test="${proqna.type == 2}">배송</c:when>
			<c:when test="${proqna.type == 3}">반품/취소</c:when>
			<c:when test="${proqna.type == 4}">교환/변경</c:when>
			<c:otherwise>기타</c:otherwise>
			</c:choose></td> 
			<td>${proqna.contents }</td> <td>${proqna.id }</td> <td>${proqna.write_date }</td>
        </tr>
        </c:forEach>

    	</tbody>
    </table>
	</div>	
</div>
<div class="col-sm-2"></div> 




<div class="container">
  <!-- Trigger the modal with a button -->
  <button type="button" id="proqnabutton" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">상품 문의하기</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title">문의내용 작성</h1>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <form id="writeproqna" action="/writeproqna" method="post">
        <input type="hidden" id="code" name="code" value=${pro.code }>
        <div class="modal-body">
        	<div class="col-sm-2" class="form-control">문의유형*</div>
			<div class="col-sm-10">
				<label class="radio-inline"></label><input type="radio" name="type" id="type" value="01" >상품</label>	
				<label class="radio-inline"><input type="radio" name="type" id="type" value="02" >배송</label>
				<label class="radio-inline"><input type="radio" name="type" id="type" value="03" >반품/취소</label>	
				<label class="radio-inline"><input type="radio" name="type" id="type" value="04" >교환/변경</label>	
				<label class="radio-inline"><input type="radio" name="type" id="type" value="05" >기타</label>
			</div>
		
         	<div class="col-sm-2" class="form-control">내용*</div>
			<div class="col-sm-10">
				<textarea name="contents" rows="10" cols="60" placeholder="문의유형을 선택해 주시고,궁금하신 내용을 작성해 주세요."></textarea>
			</div>
			
            <div class="col-sm-2" class="form-control">작성자*</div>
			<div class="col-sm-10">
				<input type="text" placeholder="${sessionScope.user.id }" disabled>	
			</div>
         </div><br><br>
         <div class="notice_box">
         	<h4 class="tit">  알아두세요!</h4>
            <ul>
            	<li>ㆍ전화번호, 이메일, 배송지 주소, 환불계좌정보 등 개인정보가 포함된 글은, 비밀글로 문의해 주시기  바랍니다.(단, 상품 문의유형은 비밀글 설정 불가)</li>
				<li>ㆍ상품 Q&amp;A에 등록한 게시글은 나의 11번가 &gt; 상품 Q&amp;A에서 확인하실 수 있습니다.</li>
				<li>ㆍ부적절한 게시물 등록시 ID이용 제한 및 게시물이 삭제될 수 있습니다.
					<ul><li>-전화번호, 이메일 주소 등 연락처를 기재하여 할인/직거래 등을 유도</li>
						<li>-비방/욕설/명예훼손, 가격비교정보, 물품과 관련 없는 광고글 등</li>
						<li>-다만 상품에 대한 단순 불만, 판매자에게 불리한 내용이라는 이유만으로는 <br> 삭제하지 않습니다.</li></ul>				
				</li>
				<li>ㆍ게시글에 회원님의 이메일, 휴대폰번호와 같은 개인 정보의 입력은 금지되어 있으며, 발생하는 모든 피해에 대해 OtphalgoOtsazo는 책임지지 않습니다.</li>
            </ul>       
         </div>
         <div class="modal-footer">
         	<button type="submit" class="btn btn-default">등록</button>
         	<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
         </div>
        </form>
        </div>      
      
	</div>
  </div>
</div>



<script type="text/javascript">
$(document).ready(function(){
	$('#updatebutton').on('click', function(){
		location.href="updatepronboard?code=${pnbvo.code }";
	});
	$('#deletebutton').on('click', function(){
		location.href="deletepronboard?code=${pnbvo.code }";
	});
});

$('#proqnabutton').on('click', function (e) {
	if(<%=session.getAttribute("user") %>==null){
		alert("로그인 하세유!");
		//alert($(this).attr('data-toggle'));
		//alert($(this).removeAttr('data-toggle'));
		location.href="/userlogin";
	} 
});

$('#myModal').on('hidden.bs.modal', function () {
    $(this).find('input').val('')
    $(this).find('textarea').val('')
});
</script>


</body>
</html>
<%@include file="/WEB-INF/views/common/footer.jsp"%>