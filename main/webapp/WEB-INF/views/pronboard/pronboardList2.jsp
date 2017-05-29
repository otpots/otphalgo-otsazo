<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<Style>
	table{ margin-left : auto; margin-right : auto; border : 1px solid black; }
	th{ text-align: center;}
	td{ text-align: center;}
</Style>
</head>
<body>

<table>
	<th>이미지</th> <th>상품명</th> <th>가격</th>
	<c:forEach items="${prolist }" var="pro">
	<tr>
	  <td><a href='detailproduct?code=${pro.code }'><img id='image' src='images/product/${pro.thumbnail_image }' width=150 height=100></a></td>
	  <td>${pro.name }</td>
	  <td>${pro.price }원 </td>
	</tr>
	</c:forEach>
</table>

<%
//페이지 번호를 나타내기위한 구성 총게시물수와 보여줄게시물수
int procount = (Integer) request.getAttribute("procount");
int recordPerPage = 0;

if(request.getParameter("recordPerPage") == null){
	recordPerPage=6;
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
	out.println("<a href='listproduct3?pageNum="+i+"'>"+ i +"&nbsp</a>");
}
%>

</body>
</html>
<%@include file="/WEB-INF/views/common/footer.jsp"%>