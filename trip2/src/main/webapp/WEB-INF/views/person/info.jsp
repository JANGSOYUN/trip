<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INFO</title>
</head>
<body>
<div style="width: 1000px; margin: 20px auto;">
	<%@include file="/WEB-INF/views/home.jsp" %>
	<h1>INFO</h1>
	
	<table>
		<tr valign="top">
			<td style="width: 150px">
				<jsp:include page="/WEB-INF/views/mypage/leftMenu.jsp"/>
			</td>
			<td>
				ID<br>
				${sessionScope.login.userid }<br><br>
				PW<br>
				${sessionScope.login.userpw }<br><br>
				NAME<br>
				${sessionScope.login.username }<br><br>
				EMAIL<br>
				${sessionScope.login.useremail }<br><br>
				PHONE<br>
				${sessionScope.login.userphone }<br><br>
			</td>
		</tr>
	</table>
	<p><a href="pwCheck"><button>정보 수정</button></a></p>
</div>
</body>
</html>