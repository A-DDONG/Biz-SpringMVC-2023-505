<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>    
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${rootPath}/static/css/main.css" rel="stylesheet" />
<link href="${rootPath}/static/css/list.css" rel="stylesheet" />
</head>
<body>
	<h1 class="list_title">도서대여 처리</h1>
	<table class="list rent">
		<tr>
			<th>도서코드</th>
			<th>도서명</th>
			<th>출판사</th>
			
			<th>회원코드</th>
			<th>회원명</th>
			<th>전화번호</th>
			
			<th>대출일</th>
			<th>반납예정일</th>
			<th>도서반납여부</th>
			<th>대여금액</th>
			
			<th>포인트</th>
		</tr>
		<c:forEach items="${RENTS}" var="RENT">
			<tr>
				<td>${RENT.rent_seq}</td>
				<td>${RENT.rent_date}</td>
				<td>${RENT.rent_return_date}</td>
				<td>${RENT.rent_bcode}</td>
				<td>${RENT.rent_mcode}</td>
				<td>${RENT.rent_return_yn}</td>
				<td>${RENT.rent_point}</td>
				<td>${RENT.rent_price}</td>		
			</tr>
		</c:forEach>
	</table>
	<div class="list rent button">
		<a href="${rootPath}/">처음으로</a>
		<a href="${rootPath}/rent/insert">도서대여</a>
		<a href="${rootPath}/rent/return">도서반납</a>
	</div>
</body>
</html>