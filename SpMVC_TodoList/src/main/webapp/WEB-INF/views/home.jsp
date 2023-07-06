<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TO DO List 2023</title>
<link rel="stylesheet" href="${rootPath}/static/css/main.css?028">
</head>
<body>
	<div class="main title">
		<h1>TO DO List 2023</h1>
	</div>
	<div class="head_tab">
		<input class="todo date" type="text" placeholder="작성일자" value="<%= getCurrentDate() %>"/> 
		<input class="todo time" type="text" placeholder="작성시각" value="<%= getCurrentTime() %>"/>
		<%! 
		  // 현재 날짜
		  public String getCurrentDate() {
		    Date now = new Date();
		    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		    return dateFormat.format(now);
		  }
		  
		  // 현재 시간
		  public String getCurrentTime() {
		    Date now = new Date();
		    SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm");
		    return timeFormat.format(now);
		  }
		%>
		
		<input class="todo memo" type="text" placeholder="할일" />
	</div>
	<table class="main list">
		<tr>
			<th>No.</th>
			<th>할일</th>
			<th>완료여부</th>
		</tr>
		<tr>
			<td>1</td>
			<td>운동하기</td>
			<td>X</td>
		</tr>
		<tr>
			<td>2</td>
			<td>세팅하기</td>
			<td>O</td>
		</tr>
	</table>
</body>
</html>