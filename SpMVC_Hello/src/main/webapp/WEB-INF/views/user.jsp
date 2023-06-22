<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		background-color: #1d9042;
		color:white;
		text-align: center;
	}
	div {
		display:inline-block;
		border: 3px solid black;
		border-radius: 10px;
		background-color: white;
		color: black;
		font-weight:bold;
	}
	h1 {
		display:inline-block;
		border: 2px solid skyblue;

	}
	ul {
		display:flex;
		list-style: none;
	    justify-content: flex-start;
	}
	li {
		padding: 5px;
		font-size:30px;
		text-align:center;
		
	}
</style>
</head>
<body>
	<div>
	<h1>나의 친구들</h1>
		<c:forEach items="${ADDRS}" var="ADDR">
			<ul>
			<li style="color: red;">${ADDR.name}</li>
			<li>${ADDR.age}</li>
			<li>${ADDR.tel}</li>
			<li>${ADDR.address}</li>
		</ul>
		
		</c:forEach>
	</div>
</body>
</html>