<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYPAGE</title>
</head>
<body>
<div style="width: 1000px; margin: 20px auto;">
<%@include file="/WEB-INF/views/home.jsp" %>
	<h1>회원정보 수정</h1>
	<form method="post">
	<table>
		<tr valign="top">
			<td style="width: 150px">
				<jsp:include page="/WEB-INF/views/mypage/leftMenu.jsp"/>
			</td>
			<td>
				ID<br>
				${sessionScope.login.userid }<br><br>
				PW<br>
				<input name="userpw" type="password" value="${sessionScope.login.userpw }"><br><br>
				NAME<br>
				${sessionScope.login.username }<br><br>
				EMAIL<br>
				<input name="useremail" type="text" value="${sessionScope.login.useremail }"><br><br>
				PHONE<br>
				<input name="userphone" type="text" value="${sessionScope.login.userphone }"><br><br>
				<br>
				<p><input type="submit" value="정보 수정"><input type="button" value="회원탈퇴" onclick="location.replace('delete')"></p>
			</td>
		</tr>
	</table>
	
	<input type="hidden" name="userid" value="${sessionScope.login.userid }">
	<input type="hidden" name="username" value="${sessionScope.login.username }">

	
	</form>
</div>
</body>
</html>