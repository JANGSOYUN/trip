<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약관리</title>
</head>
<body>
<div style="width: 1000px; margin: 20px auto;">
<%@include file="/WEB-INF/views/home.jsp" %>
<h1>예약 관리</h1>
<nav style="width: 150px; float: left;">
   <table>
      <tr>
         <td>
            <jsp:include page="/WEB-INF/views/mypage/leftMenu.jsp"/>
         </td>
      </tr>
   </table>
</nav>
<div>
   <a href="futureReservation">투숙 예정 예약</a>
   <a href="lastReservation">투숙 완료 예약</a>
   <a href="cancelReservation">취소된 예약</a>
</div>
</div>
</body>
</html>
