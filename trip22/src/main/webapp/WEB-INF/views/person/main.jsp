<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
<meta charset="UTF-8">

<!-- mainbody css -->
<link rel="stylesheet" href="resources/css/mainbody.css">

<!-- 달력 -->
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<!-- 자동완성 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<title>로고</title>

<!-- 달력 script -->
<script type="text/javascript" src="resources/js/calendar.js"></script>

<!-- 자동완성 script -->
<script type="text/javascript" src="resources/js/complete.js"></script>

</head>
<body class="mainbody">

   <div style="width: 1000px; margin: 20px auto;">
      <%@include file="/WEB-INF/views/home.jsp"%>
   </div>
   
   <!-- 검색 -->
   <form method="post">
      <div class="inputWithIcon" style="width:400px">
         <input type="text" id="city" name="search" placeholder="도시, 지역, 숙소명, 등으로 검색" autocomplete="off">
         <i class="fa fa-search fa-lg fa-fw" aria-hidden="true"></i>
      </div>
   
      <div style="width:400px;">
         <div class="inputWithIcon" style="width:49%; float:left;">
            <!-- 날짜 지정 select 들어갈 곳 -->
            <input type="text"  id="startDate" name="startDate" style="width:100%" placeholder="출발일" autocomplete="off">
            <i class="fa fa-calendar fa-lg fa-fw" aria-hidden="true"></i>
         </div>
            
         <div class="inputWithIcon" style="width:49%;  float:left; margin-left: 7px">
            <input type="text" id="endDate" name="endDate" style="width:100%" placeholder="도착일" autocomplete="off">
            <i class="fa fa-calendar fa-lg fa-fw" aria-hidden="true"></i>
         </div>
      </div>
      
      <div style="width:400px">
      <!-- 사람 명수 들어갈 곳 -->
         <select name="pop">
            <option value="" selected disabled hidden="hidden">인원</option>
            <option value="1">1명</option>
            <option value="2">2명</option>
            <option value="3">3명</option>
            <option value="4">4명</option>
         </select>
      
         <input type="submit" name="trans" value="조회">
      </div>   
</form> 
</body>
</html>