<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath"/>   
<link rel="stylesheet" href="${rootPath}/static/css/detail.css?${version}">
<c:set value="2023-07-11-022" var="version" />

	<div class="detail box">
		<p class="box1">작성일자</p><p class="box2">${BBS.b_date}</p>
	</div>
	<div class="detail box">
		<p class="box1">작성시각</p><p class="box2">${BBS.b_time}</p>	
	</div>
	<div class="detail box">
		<p class="box1">작성자</p><p class="box2">${BBS.nickname}</p>
	</div>
	<div class="detail box">
		<p class="box1">제목</p><p class="box2">${BBS.b_subject}</p>	
	</div>
	<div class="detail box">
		<p class="box1">내용</p><p class="box2">${BBS.b_content}</p>
	</div>
	
	
	