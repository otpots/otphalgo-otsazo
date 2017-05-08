<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>제품 등록하기</title>
<style>
	table{ border: 2px solid green;}
	td { border : 2px solid navy;}
</style>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet"> 
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js">
</script> <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css" rel="stylesheet"> 
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.js"></script>


</head>
<body>
<form action="pronboard" method="post" enctype="multipart/form-data">
<table>
	<tr>
	   <td>제품 코드 </td> <td><input type=text name="code"></td>
	</tr>
	
	
	<tr>
	 <td>제품 이름 </td> <td><input type=text name="name"></td>
	</tr>
	<tr>
	 <td>제품 가격</td> <td><input type=text name="price"></td>
	</tr>
	<tr>
	 <td>제품 사이즈 </td> <td><input type=text name="sizes"></td>
	</tr>
	<tr>
	 <td>제품 재고</td> <td><input type=text name="stock"></td>
	</tr>
	<tr>
	 <!-- 타입이  파일, imagefile서버에, db는 image로 저장 -->
	 <td>제품 이미지파일</td> <td><input type=file name="imagefile"></td>
	</tr>
	<tr>
	 <td>카테고리코드</td> <td><input type=text name="cate_code"></td>
	</tr> 
	
	<tr>
	 <td>게시글 제목</td> <td><input type=text name="title"></td>
	</tr>
	<tr>
	 <td>게시글 부제목</td> <td><input type=text name="sub_title"></td>
	</tr>
	<tr>
	 <td>게시글 내용 이미지</td> <td><input type=file name="imagefile"></td>
	</tr>
	<tr>
	<td colspan="2"><textarea name="contents" class="summernote" id="summernote"><p>Hello Summernote</p></textarea></td>
	</tr>
	<tr>
	 <td colspan=2><input type=submit value="제품등록완료"></td>
	</tr> 
	
</table>
</form> 
<div id="summernote"></div> 
<script> 
$(document).ready(function() { 
	// onImageUpload callback
	$('#summernote').summernote({
	  callbacks: {
	    onImageUpload: function(files) {
	      // upload image to server and create imgNode...
	      $summernote.summernote('insertNode', imgNode);
	    }
	  }
	});

	// summernote.image.upload
	$('#summernote').on('summernote.image.upload', function(we, files) {
	  // upload image to server and create imgNode...
	  $summernote.summernote('insertNode', imgNode);
	});

}); 
</script>


</body>
</html>