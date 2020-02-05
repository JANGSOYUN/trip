<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
위치 : ${search.search }<br>
체크인 날짜 : ${search.startDate }<br>
체크아웃 날짜 : ${search.endDate }<br>
예약 인원 : ${search.pop }<br>
<br>
<hr>
<br>
roomsId : ${roomsvo.roomsId}<br>
hostId : ${roomsvo.hostId }<br>
details : ${roomsvo.details }<br>
avail_adults : ${roomsvo.avail_adults }<br>
avail_children : ${roomsvo.avail_children }<br>
avail_infants : ${roomsvo.avail_infants }<br>
avail_bedroom : ${roomsvo.avail_bedroom }<br>
avail_bed : ${roomsvo.avail_bed }<br>
avail_bathroom : ${roomsvo.avail_bathroom }<br>
amenities : ${roomsvo.amenities }<br>
time_checkin : ${roomsvo.time_checkin }<br>
time_checkout : ${roomsvo.time_checkout }<br>
price_weekdays : ${roomsvo.price_weekdays }<br>
price_weekend : ${roomsvo.price_weekend }<br>
address : ${roomsvo.address }<br>
disabled : ${roomsvo.disabled }<br>

<hr>

<img src="viewRoomsImg?roomsId=${roomsvo.roomsId }" />


</body>
</html>