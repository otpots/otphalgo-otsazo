<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.otphalgo.vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 조회</title>
<style>
	tr { float:left; font-size:0px; text-align:center;}
	td { padding:0 0 0 17px; font-size:20px; }
	#box{  left:20px; top:100px; }
	
	/* ul {float:left;font-size:0px; text-align:center;}
	li {display:inline; padding:0 0 0 17px;font-size:20px; }
	#box{ position:absolute; left:20px; top:100px; } */
</style>
</head>
<body>


<h2>상품 조회화기</h2>
<table id="box">
	<c:forEach items="${prolist }" var="pro">
	<tr>
	 <td><a href='detailproduct?code=${pro.code }'>
	  <img id='image' src='images/product/${pro.thumbnail_image }' width=250><br>
	  ${pro.name } <br>
	  ${pro.price }원 <br>
	 </a></td>
	</tr>
	</c:forEach>
</table>

<%-- <div id="box">
	<c:forEach items="${prolist }" var="pro">
	<ul>
	 <li><a href='detailproduct?code=${pro.code }'>
	  <img id='image' src='images/product/${pro.thumbnail_image }' width=250 height=200><br>
	  ${pro.name } <br>
	  ${pro.price }원 <br>
	 </a></li>
	</ul>
	</c:forEach>
</div> --%>


<%
//페이지 번호를 나타내기위한 구성 총게시물수와 보여줄게시물수
int procount = (Integer) request.getAttribute("procount");
int recordPerPage = 0;

if(request.getParameter("recordPerPage") == null){
	recordPerPage=20;
}else{ 
	Integer.parseInt(request.getParameter("recordPerPage"));
} 

int totalpage = 0;
if(procount % recordPerPage == 0){
	totalpage = procount / recordPerPage;
}else{
	totalpage = (procount / recordPerPage) + 1;	
}





  //페이지 번호 출력
for(int i=1; i<=totalpage; i++){
	out.println("<a href='listproduct?pageNum="+i+"'>"+ i +"&nbsp</a>");
}  
%>

</body>
</html>
<%@include file="/WEB-INF/views/common/footer.jsp"%>