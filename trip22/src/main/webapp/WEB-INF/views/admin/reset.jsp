<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/WEB-INF/views/admin/adminmain.jsp"%>
<h1 align="center">RESET</h1>
<form method="post">
<table border="1">
	<tr>
		<td>usernum</td>
		<td>${userreset.usernum }</td>
	</tr>
	<tr>
		<td>userid</td>
		<td>${userreset.userid }</td>
	</tr>
	<tr>
		<td>userpw</td>
		<td><input type="password" value="${userreset.userpw }"></td>
	</tr>
	<tr>
		<td>username</td>
		<td>${userreset.username }</td>
	</tr>
	<tr>
		<td>useremail</td>
		<td><input value="${userreset.useremail }"></td>
	</tr>
	<tr>
		<td>userphone</td>
		<td><input value="${userreset.userphone }"></td>
	</tr>
</table>
<p>
	<button type="button" onclick="history.go(-1)">취소</button>
	<input type="submit" value="수정"></p>
</form>
</body>
</html>