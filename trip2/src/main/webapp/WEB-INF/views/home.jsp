<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
a {
	text-decoration: none;
	color: black;
}

ul {
	list-style: none;
	flex-direction: row;
}

li {
	display: inline-block;
	padding-left: 20px;
}

nav {
	width: 100%;
}
</style>
</head>
<body>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="cpath" value="${pageContext.request.contextPath }" scope="session"/>
	<h1>
		<a href="${cpath }">LOGO</a>
	</h1>
	<div align="right">
	<nav>
		<ul>
			<c:if test="${empty login }">
				<li><a href="login">로그인</a></li>
				<li><a href="join">회원가입</a></li>
				<li><a href="registration">숙소 등록</a></li>
				<li><a href="roomlist">roomlist</a></li> <!-- 삭제 예정 -->
			</c:if>
			<c:if test="${!empty login }">
				<li><a href="logout">로그아웃</a></li>
				<li><a href="mypage">마이페이지</a></li>
			</c:if>
		</ul>
		<hr>
	</nav>
	</div>
</body>
</html>
</body>
</html>
