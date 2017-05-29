<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.otphalgo.vo.*"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/header.jsp"%>
<html>
<head>

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

<section id="do_action">
<div class="container">
	<div class="breadcrumbs">
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li class="active">제품 등록</li>
		</ol>
	</div>
<div class="row">

	<!-- <div class="col-sm-3"></div> -->

	<div class="col-sm-9" style="min-width: 390px;">	
		<form id="writepronboard" action="/writepronboard" method="post" enctype="multipart/form-data">
			<div class="col-sm-4" class="form-control">제품 이름*</div>
			<div class="col-sm-8">
				<input type=text class="form-control" name="name">
			</div>
			
			<div class="col-sm-4" class="form-control">제품 가격*</div>
			<div class="col-sm-8">
				<input type=text class="form-control" name="price">
			</div>
			
			<!-- <div class="col-sm-4">제품 사이즈</div> -->
			<div class="col-sm-12" id="sizes" class="form-control">
				<div class="col-sm-3">
					<button class="btn btn-default btn-block" id="btn_size">size추가</button>
				</div>
				<div class="col-sm-3">
					<input type=text class="form-control" id="sizes1" size="3">
				</div>
			</div>
			
			<!-- <div class="col-sm-4">색상</div> -->
			<div class="col-sm-12" id="color" class="form-control">
				<div class="col-sm-3">
					<button class="btn btn-default btn-block" id="btn_color">color추가</button>
				</div>
				<div class="col-sm-3">
					<input type=text class="form-control" id="color1" size="3">
				</div>
			</div>
			<div class="col-sm-12"> 
		   		<button class="btn btn-default btn-block" id="btn_test">옵션선택완료</button><br>
		   	</div>
			
			<div class="col-sm-12" id="btn_option"></div>
			
			<div class="col-sm-12">카테고리</div>
			<div class="col-sm-4"> 
				<select id="classify" onchange="cateClassify()">
				<%List<ProCategoryVO> pcvolist = (List<ProCategoryVO>) request.getAttribute("pcvolist"); %>
				 	<option value="selected">대분류 선택</option>
					<%for(ProCategoryVO pcvo : pcvolist){%>
			 	 	<option value=<%=pcvo.getCate_code()%>>
			 	 		<%=pcvo.getName()%>
				 	</option>
				 	<%} %>		
			 	</select>
			</div>
			<div class="col-sm-4"> 
				<select id="sub_classify" onchange="cateClassify2()">
			 		<option>중분류 선택</option>
			 	</select>
			</div>
			<div class="col-sm-4"> 
			 	<select id="sub_sub_classify" name="cate_code" >
			 		<option>소분류 선택</option>
			 	</select>
			 	<br><br>
			</div>
			
			<div class="col-sm-3">글 제목*</div>
			<div class="col-sm-9"> 
				<input type=text class="form-control" name="title">
			</div>
			
			<div class="col-sm-3">이미지*</div> 
			<div class="col-sm-9">
				<input type=file class="btn btn-default btn-block" name="imagefile">
			</div>
			
			<div class="col-sm-12">
				<textarea name="contents" class="summernote" id="summernote"></textarea>
			</div>
			
			<div class="col-sm-12">
				<button type="submit" class="btn btn-default btn-block" style="margin-top: 20px; padding: 15px;">제품등록완료</button>
			</div>
		</form>
	
		<div class="col-sm-12">
			<div class="alert alert-danger alert-dismissable fade in" style="display: none;" id="alerts">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong></strong>
			</div>
		</div>
	             
	</div> <!-- center col -->
	<div class="col-sm-3"> </div>
			
	</div> <!-- row -->
</div> <!-- container -->
</section>

<script type="text/javascript">
var regExp = /^[0-9]+$/;
var color_cnt = 1;
var size_cnt = 1;

$(document).ready(function() {	
	$('#btn_color').on('click', function(e){
		e.preventDefault();
	    color_cnt++;
	    $('#color').append('<div class="col-sm-3"><input type="text" size="3" class="form-control" id="color'+color_cnt+'"></div>');
	});
	$('#btn_size').on('click', function(e){
		e.preventDefault();
		size_cnt++;
	    $('#sizes').append('<div class="col-sm-3"><input type="text" size="3" class="form-control" id="sizes'+size_cnt+'"></div>');
	});
	$('#btn_test').on('click', function(e){
		e.preventDefault();
		for(var i=1; i<=color_cnt; i++){
	    console.log($('#color'+i).val());
	    	 for(var j=1; j<=size_cnt; j++){
	    		$('#btn_option').append('<div class="col-sm-4"><input type="text" class="form-control" size="4" name="color" value="'+$('#color'+i).val()+'"></div>');
	         	$('#btn_option').append('<div class="col-sm-4"><input type="text" class="form-control" size="4" name="sizes" value="'+$('#sizes'+j).val()+'"></div>');
	            $('#btn_option').append('<div class="col-sm-4"><input type="text" class="form-control" size="4" name="stock" placeholder="수량" id="stock"></div>');
	            console.log($('#stock').val());
	        }
	    }
	});        
	

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
		//e.preventDefault();
		//alert($('#summernote').val());
	});

});
function cateClassify(){
	$.ajax({
		url : '/cateclassify',
		data : { 'cate_code' : $('#classify option:selected').val() },
		dataType : 'text',
		type : 'POST',
		success : function(result){
			$('#sub_classify').empty();
			$('#sub_sub_classify').empty();
			//alert(result);
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
</script> 

<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>
