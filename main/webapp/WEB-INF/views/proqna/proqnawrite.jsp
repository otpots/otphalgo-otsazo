<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.otphalgo.vo.*"%>  
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Modal Example</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">상품 문의하기</button>

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
        <div class="modal-body">
        	<div class="col-sm-2" class="form-control">문의유형*</div>
			<div class="col-sm-10">
				<input type="radio" name="type" id="type" value="01" >상품	
				<input type="radio" name="type" id="type" value="02" >배송
				<input type="radio" name="type" id="type" value="03" >반품/취소	
				<input type="radio" name="type" id="type" value="04" >교환/변경	
				<input type="radio" name="type" id="type" value="05" >기타
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
            	<li>전화번호, 이메일, 배송지 주소, 환불계좌정보 등 개인정보가 포함된 글은, 비밀글로 문의해 주시기  바랍니다.(단, 상품 문의유형은 비밀글 설정 불가)</li>
				<li>상품 Q&amp;A에 등록한 게시글은 나의 11번가 &gt; 상품 Q&amp;A에서 확인하실 수 있습니다.</li>
				<li>부적절한 게시물 등록시 ID이용 제한 및 게시물이 삭제될 수 있습니다.
					<ul><li>전화번호, 이메일 주소 등 연락처를 기재하여 할인/직거래 등을 유도</li>
						<li>비방/욕설/명예훼손, 가격비교정보, 물품과 관련 없는 광고글 등</li>
						<li>다만 상품에 대한 단순 불만, 판매자에게 불리한 내용이라는 이유만으로는 <br> 삭제하지 않습니다.</li></ul>				
				</li>
				<li>게시글에 회원님의 이메일, 휴대폰번호와 같은 개인 정보의 입력은 금지되어 있으며, 발생하는 모든 피해에 대해 OtphalgoOtsazo는 책임지지 않습니다.</li>
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

});
</script>

</body>
</html>