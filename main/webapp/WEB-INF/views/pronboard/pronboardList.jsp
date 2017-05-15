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

<h2>상품 조회화기</h2>
<table>
	<c:forEach items="${prolist }" var="pro">
	<tr>
	 <td><img id='image' src='images/product/${pro.thumbnail_image }' width=200 height=150></td>
	</tr>
	<tr>
	 <td>${pro.name }</td>
	</tr>
	<tr>
	 <td>${pro.price }원</td>
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