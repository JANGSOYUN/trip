<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인</title>
</head>
<body>
<div style="width: 1000px; margin: 20px auto;">
	<%@include file="/WEB-INF/views/home.jsp"%>
	<h1>비밀번호 확인</h1>
<form method="post">
	<table>
		<tr valign="top">
			<td style="width: 150px">
				<jsp:include page="/WEB-INF/views/mypage/leftMenu.jsp"/>
			</td>
			<td>
				현재 비밀번호<input type="password" name="userpw" required
				style="margin-left: 10px; margin-right: 10px;"> 
				<input type="submit" value="입력">
			</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>