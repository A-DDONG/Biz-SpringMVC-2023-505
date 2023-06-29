<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	input {
		width:300px;
		height:30px;
		padding:5px;
		margin:5px;
	}
	input:focus{
		background-color:#dbdbdbd0;
		color:black;
	}
	form {
		text-align:center;
	}
	button {
		background-color:#04ff43d0;
		font-size:15px;
		font-weight:bold;
		border:none;
		width: 100px;
		height: 40px;
		color: white;
		text-shadow: 2px 1px 1px black;
	}
	
</style>
<body>
	<form method="POST">
	<div><input name="username" placeholder="USERNAME"/></div>
	<div><input name="password" type="password" placeholder="PASSWORD"/></div>
	<div><input name="name" placeholder="이름"/></div>
	<div><input name="tel" placeholder="전화번호"/></div>
	<div><input name="addr" placeholder="주소"/></div>
	<div><button>회원가입</button></div>
	</form>
</body>
</html>