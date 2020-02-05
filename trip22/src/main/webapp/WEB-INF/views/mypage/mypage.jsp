<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
</head>
<body>
<div style="width: 1000px; margin: 20px auto;">
<%@include file="/WEB-INF/views/home.jsp" %>
<h1>MYPAGE</h1>
	<table>
		<tr>
			<td>
				<jsp:include page="leftMenu.jsp"/>
			</td>
		</tr>
	</table>
</div>
</body>
</html>