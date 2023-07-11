<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath"/>   
<c:set value="2023-07-11-017" var="version" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="${rootPath}/static/css/main.css?${version}">
<link rel="stylesheet" href="${rootPath}/static/css/detail.css?${version}">
</head>
<body>
	<header>
		<h1 class=title>이미지 갤러리</h1>
	</header>
	<table>
		<tr>
			<th>SEQ</th>
			<th>작성일자</th>
			<th>작성시각</th>
			<th>작성자</th>
			<th>제목</th>
			<th>조회수</th>
		</tr>
		<c:forEach items="${BBS_LIST}" var="BBS">
			<tr>
				<td>${BBS.b_seq}</td>
				<td>${BBS.b_date}</td>
				<td>${BBS.b_time}</td>
				<td><a href="${rootPath}/search/user?username=${BBS.b_username}">${BBS.nickname}</a></td>
				<td>
					<a href="${rootPath}/detail?seq=${BBS.b_seq}">${BBS.b_subject}</a>
				</td>
				<td>${BBS.b_count}</td>
				
			</tr>
		</c:forEach>

	</table>

</body>
</html>


