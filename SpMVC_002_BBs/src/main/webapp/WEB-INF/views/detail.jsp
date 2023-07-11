<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath"/>   
<link rel="stylesheet" href="${rootPath}/static/css/detail.css?${version}">

	<div class="detail box">
		<p>작성일자</p><p>${BBS.b_date}</p>
	</div>
	<div class="detail box">
		<p>작성시각</p><p>${BBS.b_time}</p>	
	</div>
	<div class="detail box">
		<p>작성자</p><p>${BBS.nickname}</p>
	</div>
	<div class="detail box">
		<p>제목</p><p>${BBS.b_subject}</p>	
	</div>
	<div class="detail box">
		<p>내용</p><p>${BBS.b_content}</p>
	</div>
	
	
	