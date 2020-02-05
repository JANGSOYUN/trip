<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registration</title>
<!-- 달력 -->
<link rel="stylesheet"
	href="//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$.datepicker.setDefaults($.datepicker.regional['ko']);
				$("#time_checkin")
						.datepicker(
								{
									minDate : 0,
									changeMonth : true,
									changeYear : true,
									nextText : '다음 달',
									prevText : '이전 달',
									dayNames : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									monthNamesShort : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									dateFormat : "yy/mm/dd",
									maxDate : 730, // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
									onClose : function(selectedDate) {
										//시작일(startDate) datepicker가 닫힐때
										//종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
										$("#time_checkout").datepicker(
												"option", "minDate",
												selectedDate);
										$('#datepicker').datepicker('setDate',
												'today');
									}
								});
				$("#time_checkout")
						.datepicker(
								{
									changeMonth : true,
									changeYear : true,
									nextText : '다음 달',
									prevText : '이전 달',
									dayNames : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									monthNamesShort : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									dateFormat : "yy/mm/dd",
									maxDate : 730, // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
									onClose : function(selectedDate) {
										// 종료일(endDate) datepicker가 닫힐때
										// 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
										$("#time_checkin").datepicker("option",
												"maxDate", selectedDate);
									}
								});
			});
</script>
</head>
<body>
	<%@include file="/WEB-INF/views/home.jsp"%>

	<form method="post" enctype="multipart/form-data">
	
		<!-- file upload -->
		<input multiple="multiple" type="file" name="mpfile" />
		<br>
		
		<table border="1">
			<tr>
				<td>roomsId</td>
				<td>방 등록번호</td>
			</tr>
			<tr>
				<td>hostId</td>
				<td>호스트 아이디</td>
			</tr>
			<tr>
				<td>details</td>
				<td><input type="checkbox" name=details value="수영장">수영장
					<input type="checkbox" name=details value="사우나">사우나 <input
					type="checkbox" name=details value="골프장">골프장 <input
					type="checkbox" name=details>레스토랑 <input type="checkbox"
					name=details value="라운지">라운지</td>
			</tr>
			<tr>
				<td>avail_adults</td>
				<td><select name="avail_adults">
						<option value="" selected disabled hidden="hidden">인원</option>
						<option value=1>1명</option>
						<option value=2>2명</option>
						<option value=3>3명</option>
				</select></td>
			</tr>
			<tr>
				<td>avail_children</td>
				<td><select name="avail_children">
						<option value="" selected disabled hidden="hidden">인원</option>
						<option value=1>1명</option>
						<option value=2>2명</option>
						<option value=3>3명</option>
				</select></td>
			</tr>
			<tr>
				<td>avail_infants</td>
				<td><select name="avail_infants">
						<option value="" selected disabled hidden="hidden">인원</option>
						<option value=1>1명</option>
						<option value=2>2명</option>
						<option value=3>3명</option>
				</select></td>
			</tr>
			<tr>
				<td>avail_bedroom</td>
				<td><input type="radio" name="avail_bedroom" value=1>트윈룸 <input
					type="radio" name=avail_bedroom value=2>더블룸 <input type="radio"
					name="avail_bedroom" value=3>스위트룸</td>
			</tr>
			<tr>
				<td>avail_bed</td>
				<td><input type="radio" name="avail_bed" value=1>싱글 <input
					type="radio" name="avail_bed" value=2>더블 <input type="radio"
					name="avail_bed" value=3>트윈</td>
			</tr>
			<tr>
				<td>avail_bathroom</td>
				<td><select name="avail_bathroom">
						<option value="" selected disabled hidden="hidden">갯수</option>
						<option value=1>1개</option>
						<option value=2>2개</option>
						<option value=3>3개</option>
				</select></td>
			</tr>
			<tr>
				<td>amenities</td>
				<td><input type="checkbox" name="amenities" value="에어컨">에어컨
					<input type="checkbox" name="amenities" value="드라이">드라이 <input
					type="checkbox" name="amenities" value="wifi">wifi <input
					type="checkbox" name="amenities" value="냉장고">냉장고 <input
					type="checkbox" name="amenities" value="책상">책상</td>
			</tr>
			<tr>
				<td>time_checkin</td>
				<td>
					<div class="inputWithIcon">
						<!-- 날짜 지정 select 들어갈 곳 -->
						<input type="text" id="time_checkin" name="time_checkin"
							style="width: 100%" placeholder="checkin" autocomplete="off">
						<i class="fa fa-calendar fa-lg fa-fw" aria-hidden="true"></i>
					</div>
				</td>
			</tr>
			<tr>
				<td>time_checkout</td>
				<td><div class="inputWithIcon">
						<input type="text" id="time_checkout" name="time_checkout"
							style="width: 100%" placeholder="checkout" autocomplete="off"><i
							class="fa fa-calendar fa-lg fa-fw" aria-hidden="true"></i>
					</div></td>
			</tr>
			<tr>
				<td>price_weekdays</td>
				<td><input type="number" name="price_weekdays"></td>
			</tr>
			<tr>
				<td>price_weekend</td>
				<td><input type="number" name="price_weekend"></td>
			</tr>
			<tr>
				<td>address</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>disabled</td>
				<td><select name="disabled">
						<option value="" selected disabled hidden="hidden">가능 /
							불가능</option>
						<option value=1>가능</option>
						<option value=0>불가능</option>
				</select></td>
			</tr>
		</table>
		<input type="submit" value="등록"> 
		<a href="main"><button type="button">취소</button></a>
	</form>
</body>
</html>