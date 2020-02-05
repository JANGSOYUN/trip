<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin-userlist</title>
</head>
<body>
<%@include file="/WEB-INF/views/admin/adminmain.jsp"%>
<h1 align="center">USERLIST</h1>
<table border="1">
	<tr>
		<td>usernum</td>
		<td>userid</td>
		<td>userpw</td>
		<td>username</td>
		<td>useremail</td>
		<td>userphone</td>
		<td>reset</td>
	</tr>
	<c:forEach items="${list }" var="vo">
	<tr>
		<td>${vo.usernum }</td>
		<td>${vo.userid }</td>
		<td>${vo.userpw }</td>
		<td>${vo.username }</td>
		<td>${vo.useremail }</td>
		<td>${vo.userphone }</td>
		<td>
			<form method="post">
				<input type="button" value="수정" onclick="location.replace('reset?userid=${vo.userid}')">
			</form>
		</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>