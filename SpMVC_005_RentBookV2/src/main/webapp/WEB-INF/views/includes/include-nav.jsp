<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<header class="main">
	<div class="img"></div>
	<div class="title">
		<h1>뗑컨 도서대여</h1>
		<p>뗑컨 도서대여 시스템 2023</p>
	</div>
	<div class="img"></div>
</header>
<nav class="main">
	<ul>
		<li class="home"><a href="${rootPath}/">Home</a></li>
		<li class="rent"><a href="${rootPath}/rent">도서대여</a></li>
		<li class="book"><a href="${rootPath}/book">도서정보</a></li>
		<li class="member"><a href="${rootPath}/member">회원정보</a></li>
		<li class="login"><a href="${rootPath}/user/login">로그인</a></li>
		<li class="admin"><a href="${rootPath}/admin">관리자</a></li>
	</ul>
</nav>