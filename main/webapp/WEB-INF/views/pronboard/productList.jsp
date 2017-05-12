<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8" import="java.util.*, com.otphalgo.vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>상품 조회</title>
<style>
	table {border: 2px solid navy; width: 500px; height: 300px;}
	th{border:  1px solid black;}
	td {border: 1px solid gray;}
</style>
</head>
<body>
<h2>게시판 조회화기</h2>
<table>
<th>번호</th> <th>제목</th> <th>부제목</th> <th>작성자번호</th> <th>코드</th>
<th>내용</th> <th>이미지</th> <th>작성일자</th> <th>조회수</th>
<c:forEach items="${proboardlist }" var="pbl">
	<tr> 
		<td>${pbl.seq }</td> <td>${pbl.title }</td> 
		<td>${pbl.sub_title }</td> <td>${pbl.num }</td>
		<td>${pbl.code }</td> <td>${pbl.contents }</td> 
		<td><img id='image' src='images/product/${pbl.thumbnail_image }' width=200 height=150></td>
		<td>${pbl.write_date }</td> <td>${pbl.viewcount }</td>		  
	</tr>
</c:forEach>
</table>

<h2>상품 조회화기</h2>
<table>
<th>커드</th> <th>셀러넘</th> <th>이름</th> <th>가격</th>
<th>사이즈</th> <th>재고</th> <th>카테고리코드</th> <th>색상</th> 
<c:forEach items="${prolist }" var="pro">
	<tr> 
		<td>${pro.code }</td> <td>${pro.num }</td> 
		<td>${pro.name }</td> <td>${pro.price }</td>
		<td>${pro.sizes }</td> <td>${pro.stock}</td> 
		<td>${pro.cate_code }</td>	<td>${pro.color }</td>	  
	</tr>
</c:forEach>
</table>

<%
//페이지 번호를 나타내기위한 구성 총게시물수와 보여줄게시물수
int boardcount = (Integer) request.getAttribute("procount");
int recordPerPage = 0;

if(request.getParameter("recordPerPage") == null){
	recordPerPage=5;
}else{ 
	Integer.parseInt(request.getParameter("recordPerPage"));
} 
//recordPerPage = (Integer) request.getAttribute("recordPerPage");
int totalpage = 0;
if(boardcount % recordPerPage == 0){
	totalpage = boardcount / recordPerPage;
}else{
	totalpage = (boardcount / recordPerPage) + 1;	
}

//페이지 번호 출력
for(int i=1; i<=totalpage; i++){
	out.println("<a href='listproduct?pageNum="+i+"'>"+ i +"&nbsp</a>");
}%>
</body>
</html>