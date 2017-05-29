<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.otphalgo.vo.*"%>
<%@include file="/WEB-INF/views/common/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{margin-left : auto; margin-right : auto; border : 1px black solid;}
	td{ border: 1px solid black;}
</style>

<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.3/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.3/summernote.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.3/lang/summernote-ko-KR.min.js"></script>

</head>
<body>
<%List<ProOptionVO> polist = (List<ProOptionVO>) request.getAttribute("polist"); %>
<form action="updatepronboard" method="post" enctype="multipart/form-data" >
<input type="hidden" name="code" value="${pro.code}">
<table>	
	<!-- pro table -->
	<%-- <tr>
	<td>코드</td> <td><input type=text name="code" value="${pro.code }"></td>
	</tr>  --%>
	<tr>
	 <td>제품 이름 </td> <td><input type=text name="name" value="${pro.name }"></td>
	</tr>
	<tr>
	 <td>제품 가격</td> <td><input type=text name="price" value="${pro.price }"></td>
	</tr>
	
	<tr><td>사이즈<br>재고<br>색상<br></td>
	<td>
	 <%for(ProOptionVO povo : polist){ %>
	 	 <input type=text name="sizes" size=3 value=<%=povo.getSizes() %>>
	 	 <input type=text name="stock" size=3 value=<%=povo.getStock() %>>
	 	 <input type=text name="color" size=3 value=<%=povo.getColor() %>><br>
	 <%} %>
	</td></tr> 
	
	<tr>
	 <td>카테고리</td>
	 <td><select id="classify" onchange="cateClassify()">
		 <%List<ProCategoryVO> pcvolist = (List<ProCategoryVO>) request.getAttribute("pcvolist"); %>
		 	<option value="selected">대분류</option>
			<%for(ProCategoryVO pcvo : pcvolist){%>
	 	 	<option value=<%=pcvo.getCate_code()%>>
	 	 		<%=pcvo.getName()%>
		 	</option>
		 	<%} %>		
	 	</select>
		<select id="sub_classify" onchange="cateClassify2()">
	 		<option>중분류</option>
	 	</select>
	 	<select id="sub_sub_classify" name="cate_code" >
	 		<option>소분류</option>
	 	</select>
	 </td>
	</tr> 

	<tr>
	 <td>게시글 제목</td> <td><input type=text name="title" value="${proboard.title }"></td>
	</tr>
	<tr>
	 <!--  타입이  파일, imagefile서버에, db는 image로 저장 -->
	 <td>썸네일 이미지</td> <td><input type=file name="imagefile" value="${pro.thumbnail_image }" ></td>
	</tr> 
	<tr>
	 <td colspan="2"><textarea name="contents" class="summernote" id="summernote">${proboard.contents}</textarea></td>
	</tr> 
	
	<tr>
	 <td colspan=2><input type=submit value="수정완료"></td>
	</tr> 	
</table>
</form>

<script type="text/javascript">
function cateClassify(){
	$.ajax({
		url : '/cateclassify',
		data : { 'cate_code' : $('#classify option:selected').val() },
		dataType : 'text',
		type : 'POST',
		success : function(result){
			$('#sub_classify').empty();
			$('#sub_sub_classify').empty();
			//json : JavaScript Object Notation
			var jsonObj = JSON.parse( result );
			for(var i=0; i<=jsonObj.length; i++){	
				$('#sub_classify').append("<option value='"+jsonObj[i].cate_code+"'>"+ jsonObj[i].name +"</option>" );	
			}

		}
	});	
}
function cateClassify2(){
	$.ajax({
		url : '/cateclassify2',
		data : { 'cate_code' : $('#sub_classify option:selected').val()},
		dataType : 'text',
		type : 'POST',
		success : function(result){
			$('#sub_sub_classify').empty();
			//alert(result);
			var jsonObj = JSON.parse( result );
			for(var i=0; i<=jsonObj.length; i++){
				$('#sub_sub_classify').append("<option value='"+jsonObj[i].cate_code+"'>"+ jsonObj[i].name +"</option>" );
			}		
		}
	});	
}

$(document).ready(function() {
	$('.summernote').summernote({
		toolbar: [
	          ['pre',['style']],
	          ['style', ['bold', 'italic', 'strikethrough', 'underline', 'clear']],
	          ['font', ['fontname','fontsize']],
	          ['color', ['color']],
	          ['para', ['paragraph'],['height']],
	          ['insert', ['link', 'picture', 'video']],
	          ['misc',['codeview']]
	          ],
	    fontNames: ['Noto Sans KR', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New'],
	    fontNamesIgnoreCheck: ['Noto Sans KR'],
		height: 300,
		lang: 'ko-KR',
		callbacks: {
			//onImageUpload callback 함수를 설정하지 않으면, data형태로 이미지가 에디터에 그대로 삽입됩니다. 
			//문자열이 매우 길어지고, 파일 관리를 할 수 있는 형태가 아니기 때문에, 실제 서비스 사용에서는 다소 무리가 있다.
			onImageUpload: function(files) {
				console.log(files);
				for(var i=0; i<files.length; i++){
					sendImage(files[i], $(this));
				}
			}
		}
	});
	function sendImage(file, summernote){
		var formData = new FormData();
		formData.append("Filedata", file);	
		$.ajax({
			url : '/sendimage',
			data : formData,
			dataType : 'JSON',
			processData : false,
			contentType : false,
			type : 'POST',
			success : function(fileInfo){
				// 서머노트에 이미지 업로드 ('insertImage', 파일url, 파일이름)
				summernote.summernote('insertImage', fileInfo.imageurl, fileInfo.originalname);		
			}
		});	
	}
	
	$('form').on('submit', function(e){
		alert("수정되었습니다.");
	});

});

</script> 

</form>
</body>
</html>
<%@include file="/WEB-INF/views/common/footer.jsp"%>