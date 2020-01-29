<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제</title>
</head>
<body>
<div style="width: 1000px; margin: 20px auto;">
<header>
	<h1>로고</h1>
</header>
<hr>

<section>
<div align="center">
	<fieldset style="width: 500px">
		<legend>이용 가능한 결제방법</legend>
		<table>
			<tr rowspan="2">
				<th>카드 명의자 이름(영문)<br></th>
			</tr>
			<tr>
				<td><input type="text" name="cardUsername" value="${sessionScope.login.username }" readonly></td>
			</tr>
			<tr rowspan="2">
				<th>신용/직불카드 번호</th>
			</tr>
			<tr>
				<td><input type="text" name="cardNum"></td>
			</tr>
			<tr>
				<th>카드 유효기간</th>
				<th>CVC/CVV/CCV</th>
			</tr>
			<tr>
				<td><input type="text" name="cardExpireDate" placeholder="MM/YY(월/년)"></td>
				<td><input type="text" name="cvcNum"></td>
			</tr>
		</table>
	</fieldset>
</div>
</section>
<aside>

</aside>
</div>
</body>
</html>