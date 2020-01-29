<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 게시판</title>
</head>
<body>
<div style="width: 1000px; margin: 20px auto;">
<%@include file="/WEB-INF/views/home.jsp" %>
<h1>내가 쓴 리뷰</h1>

<nav style="width: 150px; float: left;">
	<table>
		<tr>
			<td>
				<jsp:include page="/WEB-INF/views/mypage/leftMenu.jsp"/>
			</td>
		</tr>
	</table>
</nav>
<section>
<div align="center">
	<table border="1" cellpadding="7" cellspacing="0" width="780">
		<tr>
			<th width="10%">번호</th>
			<th>제목</th>
			<th width="15%">이용 업체</th>
			<th width="15%">숙박 기간</th>
		</tr>
	</table>
</div>
</section>
</div>
</body>
</html>