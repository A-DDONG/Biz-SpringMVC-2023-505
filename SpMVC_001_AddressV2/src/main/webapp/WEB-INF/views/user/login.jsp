<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<form method="POST" class="form user login">
	<fieldset>
		<legend>로그인</legend>
		<c:if test="${ERROR == 'LOGIN' }">
			<div class="error">
				로그인이 필요한 서비스에요
				<p><img alt="" src="${rootPath}/static/images/뗑컨2.png"></p>
			</div>
		</c:if>
		<c:if test="${ERROR == 'F_USERNAME'}">
			<div class="error">
				"USER NAME" 이 없어요!
				<p><img alt="" src="${rootPath}/static/images/뗑컨2.png"></p>
			</div>
		</c:if>
		<c:if test="${ERROR == 'F_PASSWORD'}">
			<div class="error">
				"비밀번호"가 잘못되었어요!
				<p><img alt="" src="${rootPath}/static/images/뗑컨2.png"></p>
			</div>	
		</c:if>
		
		<input placeholder="USER NAME" name="username"/>
		<input placeholder="PASSWORD" name="password"/>
		<button>로그인</button>
	</fieldset>
</form>