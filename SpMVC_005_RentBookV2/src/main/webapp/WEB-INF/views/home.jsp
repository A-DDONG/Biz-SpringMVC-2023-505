<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>

<body>
<tiles:insertAttribute name="head"></tiles:insertAttribute>
<tiles:insertAttribute name="nav"></tiles:insertAttribute>
	<section class="main">
		<tiles:insertAttribute name="main-content"/>
	</section>
	<footer>
		<address>CopyRgiht &copy; All Right Reserved</address>
	</footer>
</body>
</html>
