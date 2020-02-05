<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투숙 완료 예약</title>
</head>
<body>
<div style="width: 1000px; margin: 20px auto;">
<%@include file="/WEB-INF/views/home.jsp" %>
<h2>투숙 완료 예약</h2>
<nav style="width: 150px; float: left;">
   <table>
      <tr valign="top">
         <td>
            <jsp:include page="/WEB-INF/views/mypage/leftMenu.jsp"/>
         </td>
      </tr>
   </table>
</nav>
<div style="margin-bottom: 20px">
   <a href="futureReservation">투숙 예정 예약</a>
   <a href="lastReservation">투숙 완료 예약</a>
   <a href="cancelReservation">취소된 예약</a>
</div>

<fieldset>
   <table>
      <tr valign="top">
         <th valign="top" width="500px">호텔 루트 인 삿포로 추오(Hotel Route Inn Sapporo Chuo)<br>
         예약 번호 : 12345678</th>
         <th width="150px">체크인<br>19년 5월</th>
         <th>체크아웃<br>19년 5월</th>
      </tr>
      <tr>
         <th></th>
         <th></th>
         <th colspan="3" style="float: right;">KRW 87,687</th>
      </tr>
      <tr>
      </tr>
      <tr valign="top">
         <th colspan="3" style="float: left;"><a href="reviewWriteForm"><button>리뷰 쓰기</button></a></th>
      </tr>
   </table>
</fieldset>

</div>
</body>
</html>