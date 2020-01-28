<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin</title>
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
	<c:set var="cpath" value="${pageContext.request.contextPath }" scope="session"/> <!-- url 요청 (변수이름 / 값 / 세션에 저장) -->
	<h1>
		<a href="${cpath }/adminmain">LOGO</a>
	</h1>
	<div align="right">
	<nav>
		<ul>
			<li><a href="userlist">userlist</a></li>
		</ul>
		<hr>
	</nav>
	</div>
</body>
</html>
</body>
</html>
