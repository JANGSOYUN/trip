<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 달력 -->
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<!-- 자동완성 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" crossorigin="anonymous"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" crossorigin="anonymous"></script>


<title>roomList</title>

<style>
.left {
      width: 100%;
      text-align: left;
      min-height: 300px;
      margin: 0 auto;
      align-content: center;
}
aside {
      float: left;
      background-color: goldenrod;
      width: 25%; 
      height: 500px;
}
section {
      background-color: green;   
      width: 75%;
      height: 500px;
      float: left; 
}

</style>

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
<div style="width: 1000px; margin: 20px auto;" align="center">
 <form method="post">
         <input type="text" id="city" name="search" placeholder="도시, 지역, 숙소명, 등으로 검색" autocomplete="off" value="${search.search }">
      
         <!-- 날짜 지정 select 들어갈 곳 -->
         <input type="text" id="startDate" name="startDate" placeholder="출발일" autocomplete="off" value="${search.startDate }">       
         <input type="text" id="endDate" name="endDate" placeholder="도착일" autocomplete="off" value="${search.endDate }">

          <!-- 사람 명수 들어갈 곳 -->
         <select>
<!--             <option value="" selected disabled hidden="hidden">인원</option> -->
            <option value="search">${search.pop }</option>
            <option value="one">1명</option>
            <option value="two">2명</option>
            <option value="three">3명</option>
            <option value="four">4명</option>
         </select>
      
         <input type="submit" name="trans" value="조회">
</form> 
</div>


<div class="left" style="width: 1000px; margin: 20px auto;" align="center">
<!-- 좌측 메뉴 -->
<aside>

   <!-- 별점, 가격, 배드 타입, 공용시설 -->
   
   <form style="margin-left: 10px; margin-top: 10px; margin-right: 10px;">
      <div class="col">
         <span>상세조건</span><br>
         <button type="button" onclick="">초기화</button>
         <button type="submit">적용</button>
         <hr style="margin-top:7px; margin-bottom: 7px;" >
      </div>
      
      <div>
         <span>평점</span><br>
         <label><input type="checkbox" name="point" value="nine">최고 9+</label><br>
         <label><input type="checkbox" name="point" value="eight">우수 8+</label><br>
         <label><input type="checkbox" name="point" value="seven">좋음 7+</label><br>            
         <label><input type="checkbox" name="point" value="six">양호 6+</label><br>
         <hr style="margin-top:7px; margin-bottom: 7px;">
      </div>
      
      <div>
         <span>가격</span><br>
         <label><input type="checkbox" name="price">1~20,000</label><br>
         <label><input type="checkbox" name="price">20,001~40,000</label><br>
         <label><input type="checkbox" name="price">40,001~60,000</label><br>
         <label><input type="checkbox" name="price">6만원 이상</label><br>
         <hr style="margin-top:7px; margin-bottom: 7px;">
      </div>
      
      <div>
         <span>배드 타입</span><br>
         <label><input type="checkbox" name="bedtype" value="single">싱글</label>
         <label><input type="checkbox" name="bedtype" value="double">더블</label>
         <label><input type="checkbox" name="bedtype" value="twin">트윈</label>
         <hr style="margin-top:7px; margin-bottom: 7px;">
      </div>
      
      <div>
         <span>공용시설</span><br>
         <label><input type="checkbox" name="amenities" value="wifi">와이파이</label>
         <label><input type="checkbox" name="amenities" value="swim">수영장</label><br>
         <label><input type="checkbox" name="amenities" value="cafe">카페</label>
         <label><input type="checkbox" name="amenities" value="parking">주차장</label><br>
         <label><input type="checkbox" name="amenities" value="smoke">흡연</label>
         <hr style="margin-top:7px; margin-bottom: 7px;">
      </div>
      
      
      
   </form>
   
</aside>

<!-- 메인 메뉴 -->
<section>
   <div>
      <span>정렬기준 </span>|
      <a href="#"><span> 인기 </span></a>|
      <a href="#"><span> 요금 </span></a>|
      <a href="#"><span> 등급 </span></a>|
      <a href="#"><span> 평점</span></a>
   </div>
   
   <!-- 큰 리스트 -->
   <div class="row" style="padding-top: 50px; padding-left: 50px;">
      <!-- 1번째 -->
      <div class="col-md-4" style="height: 150px;">
         
         <div style="height: 70%;">
            사진들어갈 곳
         </div>
      
      
         <div>
            호텔이름, 위치
         
         </div>
      
      </div>
      
      <!-- 2번째 -->
      <div class="col-md-4" style="height: 150px;">
         
         <div style="height: 70%;">
            사진들어갈 곳
         </div>
      
      
         <div>
            호텔이름, 위치
         
         </div>
         
      </div>
      
      <!-- 3번째 -->
      <div class="col-md-4" style="height: 150px;">
         
         <div style="height: 70%;">
            사진들어갈 곳
         </div>
      
      
         <div>
            호텔이름, 위치
         
         </div>
      
      </div>
      
      </div>
      
      
   <!-- 2-1번째 -->
   <div class="row" style="padding-top: 50px; padding-left: 50px;">
      <div class="col-md-4" style="height: 150px;">
         
         <div style="height: 70%;">
            사진들어갈 곳
         </div>
      
      
         <div>
            호텔이름, 위치
         
         </div>
      
      </div>
      
      <!-- 2번째 -->
      <div class="col-md-4" style="height: 150px;">
         
         <div style="height: 70%;">
            사진들어갈 곳
         </div>
      
      
         <div>
            호텔이름, 위치
         
         </div>
         
      </div>
      
      <!-- 3번째 -->
      <div class="col-md-4" style="height: 150px;">
         
         <div style="height: 70%;">
            사진들어갈 곳
         </div>
      
      
         <div>
            호텔이름, 위치
         
         </div>
      
      </div>
      
      
   </div>
   
   </section>   
      

   







</div>











</body>
</html>