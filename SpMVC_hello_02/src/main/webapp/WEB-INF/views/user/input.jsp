<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
// var rootPath = pageContext.request.contextPath;
// core tag 를 사용하여 현재 page 에서 사용할 변수 선언하기
%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
</style>
<body>
	<h1>유저 추가하기</h1>
	<form method="POST">
		<div><input name="username" placeholder="USERNAME"></div>
		<div><input name="password" placeholder="PASSWORD"></div>
		<div><input name="re_password" placeholder="RE_PASSWORD"></div>
		<div><input name="name" placeholder="NAME"></div>
		<div><input name="tel" placeholder="TEL"></div>
		<div><input name="addr" placeholder="ADDR"></div>
		<div><input name="age" placeholder="AGE"></div>
		<div><button>추가하기</button></div>
	</form>

</body>
</html>